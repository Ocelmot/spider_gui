import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// =======  Main Widget =====
class SpiderRow extends MultiChildRenderObjectWidget {
  final double flexMinWidth;
  final bool verticalAlignCenter;
  final bool lastRowAlignRight;

  const SpiderRow(
      {super.key,
      this.flexMinWidth = 150,
      this.verticalAlignCenter = false,
      this.lastRowAlignRight = false,
      required List<Widget> children})
      : super(children: children);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderSpiderRow(
        flexMinWidth: flexMinWidth,
        verticalAlignCenter: verticalAlignCenter,
        lastRowAlignRight: lastRowAlignRight);
  }
}

// ===== Layout Strategies =====
enum SpiderRowLayoutStrategy { static, flex, spacer }

// ===== Child Widget to apply Layout Strategy =====
class SpiderRowLayoutStrategyWidget
    extends ParentDataWidget<_SpiderRowParentData> {
  const SpiderRowLayoutStrategyWidget({
    super.key,
    this.layoutStrategy = SpiderRowLayoutStrategy.static,
    required super.child,
  });

  final SpiderRowLayoutStrategy layoutStrategy;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is _SpiderRowParentData);
    final _SpiderRowParentData parentData =
        renderObject.parentData! as _SpiderRowParentData;
    bool needsLayout = false;

    if (parentData.layoutStrategy != layoutStrategy) {
      parentData.layoutStrategy = layoutStrategy;
      needsLayout = true;
    }

    if (needsLayout) {
      final AbstractNode? targetParent = renderObject.parent;
      if (targetParent is RenderObject) {
        targetParent.markNeedsLayout();
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => SpiderRow;
}

// ===== Parent Data for Child Widgets =====
class _SpiderRowParentData extends ContainerBoxParentData<RenderBox>
    with ContainerParentDataMixin<RenderBox> {
  SpiderRowLayoutStrategy layoutStrategy = SpiderRowLayoutStrategy.static;
}

// ===== Renderer for Main Widget =====
class RenderSpiderRow extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _SpiderRowParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _SpiderRowParentData> {
  double flexMinWidth;
  bool verticalAlignCenter;
  bool lastRowAlignRight;

  RenderSpiderRow(
      {this.flexMinWidth = 150,
      this.verticalAlignCenter = false,
      this.lastRowAlignRight = false});

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! _SpiderRowParentData) {
      child.parentData = _SpiderRowParentData();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  _SpiderRowParentData _getChildParentData(RenderBox? child) {
    return child?.parentData as _SpiderRowParentData;
  }

  @override
  void performLayout() {
    // First pass
    Map<int, SpiderRowLayoutStrategy> layoutStrategies = {};
    Map<int, RenderBox> staticChildren = {};
    Map<int, RenderBox> flexChildren = {};
    Map<int, RenderBox> spacerChildren = {};

    double staticAccumulatedWidth = 0;
    double staticMaxHeight = 0;
    double accumulatedSize = 0;

    double rowStartOffset = 0;
    int rowStartIndex = 0;

    var i = 0;
    var child = firstChild;
    while (child != null) {
      var childParentData = _getChildParentData(child);

      // Prologue
      double newWidth = 0;
      layoutStrategies[i] = childParentData.layoutStrategy;
      switch (childParentData.layoutStrategy) {
        case SpiderRowLayoutStrategy.static:
          {
            child.layout(BoxConstraints(maxWidth: constraints.maxWidth),
                parentUsesSize: true);
            newWidth = child.size.width;
          }
          break;
        case SpiderRowLayoutStrategy.flex:
          {
            newWidth += flexMinWidth;
          }
          break;
        case SpiderRowLayoutStrategy.spacer:
          {}
          break;
      }

      // Body
      if ((accumulatedSize + newWidth) > constraints.maxWidth) {
        // time to layout the row
        var rowHeight = layoutRow(
            rowStartIndex,
            i,
            layoutStrategies,
            staticChildren,
            staticAccumulatedWidth,
            staticMaxHeight,
            flexChildren,
            spacerChildren,
            rowStartOffset,
            false);
        rowStartOffset += rowHeight;
        rowStartIndex = i;

        accumulatedSize = 0;
        staticAccumulatedWidth = 0;
        flexChildren = {};
        spacerChildren = {};
      }

      // Epilogue
      accumulatedSize += newWidth;
      switch (childParentData.layoutStrategy) {
        case SpiderRowLayoutStrategy.static:
          {
            staticAccumulatedWidth += newWidth;
            if (child.size.height > staticMaxHeight) {
              staticMaxHeight = child.size.height;
            }
            staticChildren[i] = child;
          }
          break;
        case SpiderRowLayoutStrategy.flex:
          {
            flexChildren[i] = child;
          }
          break;
        case SpiderRowLayoutStrategy.spacer:
          {
            spacerChildren[i] = child;
          }
          break;
      }

      i++;
      child = childParentData.nextSibling;
    }
    // Layout row for the case where it didnt wrap
    var rowHeight = layoutRow(
        rowStartIndex,
        i,
        layoutStrategies,
        staticChildren,
        staticAccumulatedWidth,
        staticMaxHeight,
        flexChildren,
        spacerChildren,
        rowStartOffset,
        true);
    rowStartOffset += rowHeight;

    // set our size
    size = Size(constraints.maxWidth, rowStartOffset);
  }

  double layoutRow(
      int startIndex,
      int endIndex,
      Map<int, SpiderRowLayoutStrategy> layoutStrategies,
      Map<int, RenderBox> staticChildren,
      double staticAccumulatedWidth,
      double staticMaxHeight,
      Map<int, RenderBox> flexChildren,
      Map<int, RenderBox> spacerChildren,
      double rowOffset,
      bool islastRow) {
    double maxHeight = staticMaxHeight;
    double flexMaxWidth =
        (constraints.maxWidth - staticAccumulatedWidth) / flexChildren.length;
    // With flex max width calculated, the flex items can be laid out
    double flexAccumulatedWidth = 0;
    for (var child in flexChildren.values) {
      child.layout(BoxConstraints(maxWidth: flexMaxWidth),
          parentUsesSize: true);
      flexAccumulatedWidth += child.size.width;
      if (child.size.height > maxHeight) {
        maxHeight = child.size.height;
      }
    }
    double spacerMaxWidth =
        (constraints.maxWidth - staticAccumulatedWidth - flexAccumulatedWidth) /
            spacerChildren.length;
    // With spacer max width calculate, the spacers can be laid out
    double spacerAccumulatedWidth = 0;
    for (var child in spacerChildren.values) {
      child.layout(
          BoxConstraints(minWidth: spacerMaxWidth, maxWidth: spacerMaxWidth),
          parentUsesSize: true);
      spacerAccumulatedWidth += child.size.width;
      if (child.size.height > maxHeight) {
        maxHeight = child.size.height;
      }
    }
    // With all children for this row laid out, they are placed in the parent

    double xPos = 0;

    if (islastRow && lastRowAlignRight) {
      var remainingWidth = constraints.maxWidth -
          staticAccumulatedWidth -
          flexAccumulatedWidth -
          spacerAccumulatedWidth;
      xPos += remainingWidth;
    }

    for (int i = startIndex; i < endIndex; i++) {
      RenderBox child;
      switch (layoutStrategies[i]!) {
        case SpiderRowLayoutStrategy.static:
          {
            child = staticChildren[i]!;
          }
          break;
        case SpiderRowLayoutStrategy.flex:
          {
            child = flexChildren[i]!;
          }
          break;
        case SpiderRowLayoutStrategy.spacer:
          {
            child = spacerChildren[i]!;
          }
          break;
      }
      double vertOffset = 0;
      if (verticalAlignCenter) {
        vertOffset += (maxHeight - child.size.height) / 2;
      }
      var childParentData = _getChildParentData(child);
      childParentData.offset = Offset(xPos, rowOffset + vertOffset);
      xPos += child.size.width;
    }
    return maxHeight;
  }
}

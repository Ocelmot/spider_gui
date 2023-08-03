import 'package:flutter/material.dart';

enum SpiderRowLayoutType { static, flex, spacer }

class SpiderRowWidget extends StatelessWidget {
  final List<(SpiderRowLayoutType, Widget)> children;
  const SpiderRowWidget({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    List<Widget> layoutChildren = [];
    List<SpiderRowLayoutType> layoutChildrenType = [];
    int i = 0;
    for (var (layoutType, child) in children) {
      layoutChildrenType.add(layoutType);
      layoutChildren.add(LayoutId(id: i, child: child));
      i++;
    }
    return SizedBox(
        height: 60,
        child: CustomMultiChildLayout(
          delegate:
              SpiderRowWidgetLayoutDelegate(childrenTypes: layoutChildrenType),
          children: layoutChildren,
        ));
  }
}

class SpiderRowWidgetLayoutDelegate extends MultiChildLayoutDelegate {
  final List<SpiderRowLayoutType> childrenTypes;
  SpiderRowWidgetLayoutDelegate({required this.childrenTypes});
  @override
  void performLayout(Size size) {
    double flexMinsize = 40;

    // first pass
    Map<int, Size> staticChildren = {};
    double staticAccumulatedSize = 0;
    List<int> flexIndices = [];
    List<int> spacerIndices = [];

    double accumulatedSize = 0;

    double rowLocation = 0;
    int rowIndex = 0;

    print("Laying out object");

    var i = 0;
    for (SpiderRowLayoutType type in childrenTypes) {
      double newSize = 0;
      Size childSize = Size.zero;
      switch (type) {
        case SpiderRowLayoutType.static:
          {
            var childSize =
                layoutChild(i, BoxConstraints(maxWidth: size.width));
            newSize = childSize.width;
          }
          break;
        case SpiderRowLayoutType.flex:
          {
            newSize += flexMinsize;
          }
          break;
        case SpiderRowLayoutType.spacer:
          {}
          break;
      }

      if ((accumulatedSize + newSize) > size.width) {
        // time to layout the row
        print("Laying out row");
        var rowHeight = layoutRow(staticChildren, rowIndex, i, size,
            rowLocation, staticAccumulatedSize, flexIndices, spacerIndices);
        rowLocation += rowHeight;
        rowIndex = i;

        accumulatedSize = 0;
        staticAccumulatedSize = 0;
        flexIndices = [];
        spacerIndices = [];
      }

      accumulatedSize += newSize;
      switch (type) {
        case SpiderRowLayoutType.static:
          {
            staticAccumulatedSize += newSize;
            staticChildren[i] = childSize;
          }
          break;
        case SpiderRowLayoutType.flex:
          {
            flexIndices.add(i);
          }
          break;
        case SpiderRowLayoutType.spacer:
          {
            spacerIndices.add(i);
          }
          break;
      }

      i++;
    }

    // Layout row for the case where it didnt wrap
    print("Laying out row");
    var rowHeight = layoutRow(staticChildren, rowIndex, i, size, rowLocation,
        staticAccumulatedSize, flexIndices, spacerIndices);
    rowLocation += rowHeight;
  }

  double layoutRow(
      Map<int, Size> staticChildren,
      int start,
      int end,
      Size size,
      double rowLocation,
      double staticAccumulatedSize,
      List<int> flexIndices,
      List<int> spacerIndices) {
    double maxHeight = 0;
    double flexMaxWidth =
        (size.width - staticAccumulatedSize) / flexIndices.length;
    // With flex max width calculated, the flex items can be laid out
    Map<int, Size> flexChildren = {};
    double flexAccumulatedSize = 0;
    for (var index in flexIndices) {
      var flexSize = layoutChild(index, BoxConstraints(maxWidth: flexMaxWidth));
      flexAccumulatedSize += flexSize.width;
      flexChildren[index] = flexSize;
    }
    double spacerMaxWidth =
        (size.width - staticAccumulatedSize - flexAccumulatedSize) /
            spacerIndices.length;
    // With spacer max width calculate, the spacers can be laid out
    Map<int, Size> spacerChildren = {};
    for (var index in spacerIndices) {
      var spacerSize = layoutChild(index,
          BoxConstraints(minWidth: spacerMaxWidth, maxWidth: spacerMaxWidth));
      spacerChildren[index] = spacerSize;
    }
    // With all children for this row laid out, they are placed in the parent
    double xPos = 0;
    for (int i = start; i < end; i++) {
      var childType = childrenTypes[i];
      Size childSize;
      switch (childType) {
        case SpiderRowLayoutType.static:
          {
            childSize = staticChildren[i]!;
            print("static child with size: $childSize");
          }
          break;
        case SpiderRowLayoutType.flex:
          {
            childSize = flexChildren[i]!;
            print("flex child with size: $childSize");
          }
          break;
        case SpiderRowLayoutType.spacer:
          {
            childSize = spacerChildren[i]!;
            print("spacer child with size: $childSize");
          }
          break;
      }
      positionChild(i, Offset(xPos, rowLocation));
      xPos += childSize.width;
      if (childSize.height > maxHeight) {
        maxHeight = childSize.height;
      }
    }
    return maxHeight;
  }

  @override
  bool shouldRelayout(covariant SpiderRowWidgetLayoutDelegate oldDelegate) {
    return childrenTypes != oldDelegate.childrenTypes;
  }
}

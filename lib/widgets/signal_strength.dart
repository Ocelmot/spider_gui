import 'package:flutter/material.dart';

/// Generate a Widget to show signal strength.
///
/// If the number is negative, it is interpreted as rssi.
/// If the number is positive, it is interpreted as percentage.
Widget signalStrength(int strength) {
  final (icon, label) = switch (strength) {
    >= 66 => (Icons.wifi, 'strong'),
    >= 33 => (Icons.wifi_2_bar, 'good'),
    >= 0 => (Icons.wifi_1_bar, 'weak'),
    >= -60 => (Icons.wifi, 'strong'),
    >= -75 => (Icons.wifi_2_bar, 'good'),
    _ => (Icons.wifi_1_bar, 'weak'),
  };
  return Icon(icon, semanticLabel: label);
}

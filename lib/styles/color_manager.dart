import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex("#E6682E");
  static Color primary1Color = HexColor.fromHex("#EB895B");
  static Color primary2Color = HexColor.fromHex("#F1A989");
  static Color primary3Color = HexColor.fromHex("#F6CAB6");
  static Color secondaryColor = HexColor.fromHex("#00A98C");
  static Color secondary1Color = HexColor.fromHex("#00DBB6");
  static Color naturalColor = HexColor.fromHex("#212121");
  static Color errorColor = HexColor.fromHex("#EE0202");
  static Color successColor = HexColor.fromHex("#00AA44");
  static Color greyWhiteColor = HexColor.fromHex("#DDDDDD");
  static Color greyColor = HexColor.fromHex("#666666");
  static Color whiteColor = HexColor.fromHex("#FDFDFD");
  static Color blackColor = HexColor.fromHex("#3A3A3A");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

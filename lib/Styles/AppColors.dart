import 'package:flutter/material.dart';

import './AppUtils.dart';

class AppColors {
  //------How to use Color in different way
//  Color c = const Color(0xFF42A5F5);//16进制的ARGB
//  Color c = const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
//  Color c = const Color.fromARGB(255, 66, 165, 245);
//  Color c = const Color.fromRGBO(66, 165, 245, 1.0);//opacity：不透明度

//

  static const themeColor = Color(0xfff5a623);
  static const primaryColor = Color(0xff203152);
  static const greyColor = Color(0xffaeaeae);
  static const greyColor2 = Color(0xffE8E8E8);

  static const Color loginGradientStart = const Color(0xFFfbab66);
  static const Color loginGradientEnd = const Color(0xFFf7418c);

  static Color TestColor = Color(0xFFF5A623);
  static Color TestColor2 = Color(0x30FF7B6E);
  //Chinese Default Color
  static Color colorPrimary = const Color(0xff0091ea);
  static Color textWhite = const Color(0xFFFFFFFF);
  static Color textBlack = const Color(0xFF000000);
  static Color textTitile = const Color(0xDD000000);
  static Color text = const Color(0x8A000000);
  static Color textHint = const Color(0x42000000);
//  static Color text = const Color(0x1F000000);
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.blueGrey.shade800,
    Colors.black87,
  ];

  static const Color transparent = const Color(0x00000000);
  static const Color aliceblue = const Color(0xFFF6F8FA);
  static const Color pattensblue = const Color(0xFFDFE4E9);
  static const Color royalblue = const Color(0xFF3465F5);
  static const Color hawkesblue = const Color(0xFFD7D9DE);
  static const Color mediumslateblue = const Color(0xFF6D7AE5);
  static const Color grey = Color.fromRGBO(247, 247, 247, 100);
  static const Color accentColor = const Color(0xFFf08f8f);
  static const Color lightAccentColor = const Color(0xFFFFAFAF);
  static const Color darkAccentColor = const Color(0xFFD06F6F);
  static const Color lightGary = const Color(0xFF7B869B);

  static const Color primaryText = const Color(0xFFFFFFFF);
  static const Color secondaryText = const Color(0xFFBCBCBC);
  static const Color lateralText = const Color(0xFF828282);

  //MonochromColor, last Value from the list
  //Change the B (Brightness) value to create
  static Color HSBAGreen =
      new HSVColor.fromAHSV(1.0, 130.0, 0.65, 0.85).toColor();
  static Color HSBALightGreen =
      new HSVColor.fromAHSV(1.0, 130.0, 0.65, 0.92).toColor();
  static Color HSBADarkGreen =
      new HSVColor.fromAHSV(1.0, 130.0, 0.65, 0.25).toColor();

  //Analogous Color
  //Red -> Organe -> Yellow
  //Change 30 to 50 (Second Value) on Hub Value
  //(this.alpha, this.hue, this.saturation, this.value(brightness))
  static Color HSBARed = new HSVColor.fromAHSV(1.0, 5.0, 0.85, 0.75).toColor();
  static Color HSBAOrange =
      new HSVColor.fromAHSV(1.0, 35.0, 0.85, 0.75).toColor();
  static Color HSBAYellow =
      new HSVColor.fromAHSV(1.0, 65.0, 0.85, 0.75).toColor();

  //Complementary Color(0xFF)
  //Hub + 150
  //Excellent Contrast, they are harder to work with
  static Color HSBAYellowComplementary =
      new HSVColor.fromAHSV(1.0, 5.0, 0.85, 0.75).toColor();
  static Color HSBAYellowComplementaryTwo =
      new HSVColor.fromAHSV(1.0, 155.0, 0.85, 0.75).toColor();

  static const Color AlphaGlassWhite = Color.fromRGBO(255, 255, 255, 35);
  static const Color AlphaSilver = Color.fromRGBO(218, 225, 233, 100);
  static const Color AlphaSkyBlue = Color.fromRGBO(100, 206, 238, 100);
  static const Color AlphaCeleste = Color.fromRGBO(20, 210, 184, 100);
  static const Color AlphaDahlia = Color.fromRGBO(255, 58, 121, 100);
  static const Color AlphaBlackBoard = Color.fromRGBO(28, 22, 46, 100);
  static const Color AlphaDark = Color.fromRGBO(29, 29, 39, 100);
  static const Color AlphaDarkDarkBlue = Color.fromRGBO(19, 19, 21, 100);
  static const Color AlphaPinkRed = Color.fromRGBO(252, 112, 112, 100);
  static const Color AlphaDarkGary = Color.fromRGBO(108, 123, 138, 100);
  static const Color AlphaDarkLightGary = Color.fromRGBO(151, 151, 151, 100);
  static const Color AlphaPurple = Color.fromRGBO(72, 8, 147, 1.0);
  static const Color AlphaIndigo = Color.fromRGBO(88, 130, 242, 1.0);
  static const Color AlphaDarkBlue = Color.fromRGBO(29, 29, 39, 1.0);
  static const Color FaccebookBlue = Color(0xff3b5998);

  static const Color TransparenWhite =
      const Color(0xFFFFFF); // fully transparent white (invisible)
  static const Color VisibleWhite =
      const Color(0xFFFFFFFF); // fully opaque white (visible)

  static const Color AlphaRedGreenBlue = Color.fromARGB(255, 66, 165, 245);
  static const Color AlphaLightBlue = Color.fromARGB(100, 0, 80, 230);

  static const Color HexAlphaRedGreenBlue =
      Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);

  static Color DarkBlue = Color(AppUtils().HexToColor("0D1F3B"));
  static Color DarkBlueText = Color(AppUtils().HexToColor("131315"));
  static Color GlassBlue = Color(AppUtils().HexToColor("0E2F45"));
  static Color DarkLightBlue = Color(AppUtils().HexToColor("3B3B4D"));
  static Color DarkerBlue = Color(AppUtils().HexToColor("1D1D27"));
  static Color SkyBlue = Color(AppUtils().HexToColor("64CEEE"));
  static Color Indigo = Color(AppUtils().HexToColor("5A7BEF"));
  static Color LightBlue = Color(AppUtils().HexToColor("0050E6"));
  static Color StaticGrey = Color(AppUtils().HexToColor("F7F7F7"));

  //Gm Color
  static Color BrightOrgangeGM = Color(AppUtils().HexToColor("FF7B6E"));
  static Color GreyDark = Color(AppUtils().HexToColor("525252"));
  static Color BlackHeadLine = Color(AppUtils().HexToColor("4A4A4A"));
  static Color LineDark = Color(AppUtils().HexToColor("D4D4D4"));
  static Color ArrowGrey = Color(AppUtils().HexToColor("C7C7C7"));

  //Eat la Color
  static Color FutureGrey = Color(AppUtils().HexToColor("D8D8D8"));
  static Color TroutGrey = Color(AppUtils().HexToColor("9B9B9B"));
  static Color SystemGrey = Color(AppUtils().HexToColor("303030"));
  static Color DazzlingBlue = Color(AppUtils().HexToColor("0050E6"));
  static Color AttentionRed = Color(AppUtils().HexToColor("F00032"));
  static Color LightGrey = Color(AppUtils().HexToColor("FAFAFA"));

  static Color OrangefirstColor = Color(0xFFF47D15);
  static Color OrangesecondColor = Color(0xFFEF772C);

  static final Color discountBackgroundColor = Color(0xFFFFE08D);
  static final Color flightBorderColor = Color(0xFFE6E6E6);
  static final Color chipBackgroundColor = Color(0xFFF6F6F6);

  static get BackgroundWhite => Color(0xFFf7f8fc);

  //Curves painter
  static final Color CurvePainterfirstColor = Color(0xFF7A36DC);
  static final Color CurvePaintersecondColor =
      Color(0xFF7A36DC).withOpacity(0.5);
  static final Color CurvePainterthirdColor =
      Color(0xFF7A36DC).withOpacity(0.2);
}

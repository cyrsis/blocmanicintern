import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }
  int HexToColor(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  void addIfNotNull(Widget child, List<Widget> children) {
    if (child != null) {
      children.add(child);
    }
  }

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static String getAppLogo() {
    return 'assets/ic_logo.png';
  }

  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ImageUtil {
  static String getAppLogo() {
    return 'assets/ic_logo.png';
  }
}

class ColorUtil {
  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

class UrlUtil {
  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

int hexToInt(String hex) {
  int val = 0;
  int len = hex.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = hex.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("Invalid hexadecimal value");
    }
  }
  return val;
}

double getCalculateAppBarHeight(BuildContext context) {
  return screenAwareSize(80.0, context) + MediaQuery.of(context).padding.top;
}

const double baseHeight = 650.0;

double screenAwareSize(double size, BuildContext context) {
  //Calculate the Screen height, so we have a better Appbar Size
  double drawingHeight =
      MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  return size * drawingHeight / baseHeight;
}

HSLColor HSB(hhsb, shsb, bhsb, a) {
  if (bhsb == 0.0) {
    return new HSLColor.fromAHSL(a, 0.0, 0.0, 0.0);
    //  //(this.alpha, this.hue, this.saturation, this.lightness)
  } else {
    var lhsl = (bhsb / 2) * (2 - (shsb / 100));
    var shsl = (bhsb * shsb) / (lhsl < 50 ? lhsl * 2 : 200 - lhsl * 2);
    return new HSLColor.fromAHSL(a, hhsb, shsl, lhsl);
  }
}

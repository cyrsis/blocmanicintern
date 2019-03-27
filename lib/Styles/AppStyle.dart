import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './AppColors.dart';
import './AppUtils.dart';

class AppStyle {
  static get appBarTextStyle => TextStyle(color: Colors.black, fontSize: 24.0);

  static get messageTextStyle => TextStyle(color: Colors.black, fontSize: 28.0);

  static get titleStyle => TextStyle(color: Colors.black, fontSize: 20.0);

  static get searchTextStyle => TextStyle(color: Colors.black, fontSize: 22.0);

  static get subTitleStyle => TextStyle(color: Colors.black, fontSize: 14.0);

  static get hintStyle => TextStyle(color: Colors.black54, fontSize: 20.0);
  static Color purpleColor = Color(0xFF2B1AAF);
  static Color lightGreyColor = Color(0xFFABB6C9);

  static get lightBlue20 =>
      TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent);
  static Color greyColor = Color(0xFF4F4F51);
  static Color black = Color(0xFF161515);
  static Color brown = Color(0xFFA6725F);
  static Color green = Color(0xFF00BB00);

  static get Optima10Black => TextStyle(
        color: AppColors.GreyDark,
        fontSize: 25,
      );

  static get boldBlack16TextStyle =>
      TextStyle(color: black, fontSize: 16.0, fontWeight: FontWeight.w600);

  static get normalGrey14TextStyle => TextStyle(
        color: greyColor,
        fontSize: 14.0,
      );

  static get boldPurple16TextStyle => TextStyle(
      color: purpleColor, fontSize: 16.0, fontWeight: FontWeight.w600);

  static get normalBlackSmall12TextStyle => TextStyle(
        color: black,
        fontSize: 12.0,
      );

  static get boldGreen16LargeTextStyle => TextStyle(
        color: green,
        fontSize: 16.0,
      );

  static get Comfortaa15BWhiteBoldwhite => TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
      color: Colors.white);

  static get Comfortaa15Grey300 => TextStyle(
      fontFamily: 'Comfortaa',
      fontSize: 15.0,
      color: Colors.grey,
      fontWeight: FontWeight.w300);

  static get Comfortaa17WhiteBold => TextStyle(
      fontFamily: 'Comfortaa', fontSize: 17.0, fontWeight: FontWeight.bold);

  static get S80BoldTeal => TextStyle(
      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.teal);

  static get S80Bold => TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold);

  static get primaryColorBold =>
      TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold);

  static get Avenir8 => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontSize: 8.0,
      );

  static get Avenir10WhiteBold => new TextStyle(
      color: Colors.white,
      fontFamily: 'Avenir',
      fontSize: 8.0,
      fontWeight: FontWeight.w500);

  static get Avenir12Black => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontSize: 12.0,
      );

  static get Avenir12TroutGrey => new TextStyle(
        color: AppColors.TroutGrey,
        fontFamily: 'Avenir',
        fontSize: 12.0,
      );

  static get Avenir12OrganeGM => new TextStyle(
        color: AppColors.BrightOrgangeGM,
        fontFamily: 'Avenir',
        fontSize: 12.0,
      );

  static get Avenir12White => new TextStyle(
      color: Colors.white,
      fontFamily: 'Avenir',
      fontSize: 12.0,
      fontWeight: FontWeight.bold);

  static get Avenir12Grey => new TextStyle(
        color: AppColors.TroutGrey,
        fontFamily: 'Avenir',
        fontSize: 12.0,
      );

  static get Avenir14Grey => new TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      fontSize: 14.0,
      color: AppColors.GreyDark);

  static get Avenir14WhiteBold => new TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
      fontSize: 14.0,
      color: Colors.white);

  static get Avenir14White =>
      new TextStyle(fontFamily: 'Avenir', fontSize: 14.0, color: Colors.white);

  static get Avenir14 => new TextStyle(
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      );

  static get Avenir14W300Italic => new TextStyle(
        fontStyle: FontStyle.italic,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
      );

  static get Avenir14GreyDarkGm => new TextStyle(
        color: AppColors.BlackHeadLine,
        fontFamily: 'Avenir',
        fontSize: 14.0,
      );

  static get Avenir14GreyDark => new TextStyle(
        color: AppColors.TroutGrey,
        fontFamily: 'Avenir',
        fontSize: 14.0,
      );

  static get Avenir14Blue => new TextStyle(
        color: AppColors.DazzlingBlue,
        fontFamily: 'Avenir',
        fontSize: 14.0,
      );

  static get Avenir14Organge => new TextStyle(
        color: AppColors.BrightOrgangeGM,
        fontFamily: 'Avenir',
        fontSize: 14.0,
      );

  static get Avenir16White => new TextStyle(
      color: Colors.white,
      fontFamily: 'Avenir',
      fontSize: 16.0,
      fontWeight: FontWeight.w600);

  static get Avenir16Dark => new TextStyle(
      color: AppColors.BlackHeadLine,
      fontFamily: 'Avenir',
      fontSize: 16.0,
      fontWeight: FontWeight.w500);

  static get Avenir16DarkBold => new TextStyle(
      color: AppColors.BlackHeadLine,
      fontFamily: 'Avenir',
      fontSize: 16.0,
      fontWeight: FontWeight.w600);

  static get Avenir17Black => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontSize: 17.0,
      );

  static get Avenir17Black400 => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      );

  static get Avenir17 => new TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontSize: 17.0,
      );

  static get Avenir17Bold => new TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        fontSize: 17.0,
      );

  static get Avenir17BoldBlack => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        fontSize: 17.0,
      );

  static get Avenir18BoldOrgane => new TextStyle(
        color: AppColors.BrightOrgangeGM,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );

  static get Avenir21 => new TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
        fontSize: 21.0,
      );

  static get Avenir24 => new TextStyle(
        color: Colors.black,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );

  static get Avenir24White => new TextStyle(
        color: Colors.white,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );

  static get Avenir24Black => new TextStyle(
        color: AppColors.BlackHeadLine,
        fontWeight: FontWeight.w600,
        fontFamily: 'Avenir',
        letterSpacing: 0.43,
        fontSize: 24.0,
      );

  static get Avenir32DarkGm => new TextStyle(
        color: AppColors.BlackHeadLine,
        fontWeight: FontWeight.w400,
        fontFamily: 'Avenir',
        letterSpacing: 0.54,
        fontSize: 32.0,
      );

  static get RaleWayWhiteBold => new TextStyle(
      color: Colors.white, fontFamily: 'Raleway', fontWeight: FontWeight.bold);

  static get NothingYouCanDoWhiteBold => new TextStyle(
      wordSpacing: -1.0,
      letterSpacing: -2.0,
      fontFamily: 'NothingYouCouldDo',
      color: Colors.white,
      fontWeight: FontWeight.bold);

  static final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffb6b2df),
      fontSize: 14.0,
      fontWeight: FontWeight.w400);
  static final titleTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
  static final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w400);

  static final basewhiteTextStyle =
      TextStyle(color: Colors.white, fontFamily: 'arial');

  final bigHeaderTextStyle = baseTextStyle.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  final descTextStyle = baseTextStyle.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );

  final footerTextStyle = baseTextStyle.copyWith(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle SubTextStyle = const TextStyle(
      fontFamily: "Timeburner",
      fontSize: 16.0,
      color: Colors.white70,
      fontWeight: FontWeight.w700);

  static final TextStyle PurpleTextStyle = const TextStyle(
      color: AppColors.AlphaPurple,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 25.0);

  static final TextStyle PurpleTextStyle12 = const TextStyle(
      color: AppColors.AlphaPurple,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 10.0);

  static final TextStyle AppBarTextStyle = const TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 25.0);

  static get BlackTextStyle => new TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 20.0);

  static get MainTextStyle => new TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 20.0);

  //css : font: 900 24px Georgia
  static get GreyboxTextStyle => new TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w900,
        fontFamily: "Georgia",
      );

  static get AllBorder => new BoxDecoration(
      border: new Border(
          top: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          right: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          bottom: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          left: new BorderSide(width: 1.0, color: const Color(0xff999999))));

  static get BoldStyle => new TextStyle(fontWeight: FontWeight.bold);

  static get GreyText => new TextStyle(color: Colors.grey);

  static get Black18 => new TextStyle(fontSize: 18.0, color: Colors.black87);

  static get Black87 => new TextStyle(fontSize: 18.0, color: Colors.black87);

  final TextStyle _kDaveStyle =
      new TextStyle(color: Colors.indigo.shade400, height: 1.8);
  final TextStyle _kHalStyle =
      new TextStyle(color: Colors.red.shade400, fontFamily: 'monospace');
  final TextStyle _kBold = const TextStyle(fontWeight: FontWeight.bold);
  final TextStyle _kUnderline = const TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: const Color(0xFF000000),
      decorationStyle: TextDecorationStyle.wavy);

  static get MaterialPageTitleText => new TextStyle(
      color: Colors.white, fontFamily: "FlamantaRoma", fontSize: 34.0);

  static get BodyStyle => new TextStyle(color: Colors.white, fontSize: 18.0);

  static get hiddendrawerTitle =>
      new TextStyle(fontFamily: "bebas-neue", fontSize: 23.0);

  static get RestaruantCardTitle => new TextStyle(
      color: Colors.black26, fontFamily: "mermaid", fontSize: 22.0);

  static get RestaruantCardNumOfHeart => Black87;

  static get RestaruantCardSubTitle => new TextStyle(
      color: Color(0xFFAAAAAA),
      fontFamily: "bebas-neue",
      fontSize: 16.0,
      letterSpacing: 1.0);

  static get PinkTxt => new TextStyle(
      color: Colors.pinkAccent, fontSize: 10.0, letterSpacing: 1.0);

  static get WeatherTheme => new ThemeData(
        primarySwatch: Colors.blue,
      );

  static get CustomSliderText =>
      new TextStyle(color: Colors.black, fontSize: 70.0);

  static get SubTextStyleWhite => new TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      color: Colors.white70,
      fontWeight: FontWeight.w700);

  static get MiddWhiteText =>
      new TextStyle(color: Colors.white, fontSize: 18.0);

  static get BoldCrossOut => TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
      decoration: TextDecoration.lineThrough,
      color: Colors.grey);

  static get Bold20 => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );

  static get White16 => TextStyle(color: Colors.white, fontSize: 16.0);

  static get WhiteBold =>
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  static get Bold18White => TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0);

  static get White => TextStyle(color: Colors.white);

  static get White14 => TextStyle(
      fontWeight: FontWeight.normal, color: Colors.white, fontSize: 14.0);

  static get Black14 => TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14.0);

  static get GreyText12 => TextStyle(
      color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12.0);

  static get F18Bold => TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  static get Mermaid25 {
    return TextStyle(
      fontSize: 25.0,
      fontFamily: 'mermaid',
    );
  }

  static get MontserratGrey {
    return TextStyle(color: Colors.grey, fontFamily: 'Montserrat');
  }

  static get IOSActiveBlue => TextStyle(color: CupertinoColors.activeBlue);

  static get F12Grey => new TextStyle(fontSize: 12.0, color: Colors.grey);

  static FontBold(Color color) {
    return TextStyle(fontWeight: FontWeight.bold, color: color);
  }

  static get QuickSand15 => TextStyle(fontFamily: 'Quicksand', fontSize: 15.0);

  static get QuickSand12Grey =>
      TextStyle(fontFamily: 'Quicksand', fontSize: 12.0, color: Colors.grey);

  static get QuickSand12GreyBold => TextStyle(
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold,
      fontSize: 12.0,
      color: Colors.grey);

  static get QuickSand12GreenBold => TextStyle(
      color: Colors.green,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold,
      fontSize: 12.0);

  static get QuickSand15Blod => new TextStyle(
      color: Colors.grey,
      fontFamily: 'Quicksand',
      fontSize: 15.0,
      fontWeight: FontWeight.bold);

  static get QuickSand16Grey =>
      TextStyle(fontFamily: 'Quicksand', color: Colors.grey, fontSize: 16.0);

  static get QuickSand30Bold => TextStyle(
      color: Colors.white,
      fontFamily: 'Quicksand',
      fontSize: 30.0,
      fontWeight: FontWeight.bold);

  static get QuickSand20 =>
      TextStyle(color: Colors.white, fontFamily: 'Quicksand', fontSize: 20.0);

  static get Timesorman25BoldWhite => TextStyle(
      fontFamily: 'Timesroman',
      fontSize: 25.0,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  static get bkColor => Color.fromRGBO(37, 52, 104, 1.0);

  //Sotopia Font -Start
  static get Monsterrat20Grey => new TextStyle(
      fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.grey.shade900);

  static get Montserrat20DarkLightBlue => TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20.0,
      color: AppColors.DarkLightBlue,
      letterSpacing: 1.0);

  static get Monsterrart22BlackBold => TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.bold);

  static get Montserrat12White => new TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      color: Colors.white,
      letterSpacing: 1.0);

  static get Montserrat12WhiteOpacity => TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      color: Colors.white.withOpacity(0.4),
      letterSpacing: 2.0);

  static get Montserrat12WhiteBold => TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      letterSpacing: 2.0);

  static get Montserrat12DarkBlueSemiBold => new TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: AppColors.DarkBlue,
      letterSpacing: 2.0);

  static get Montserrat14RedBold => TextStyle(
      color: Colors.red,
      fontFamily: 'Montserrat',
      fontSize: 14.0,
      fontWeight: FontWeight.bold);

  static get Montserrat14Bold => TextStyle(
      fontFamily: 'Montserrat', fontSize: 14.0, fontWeight: FontWeight.bold);

  static get Montserrat14CyanBold => TextStyle(
      color: Colors.cyanAccent,
      fontFamily: 'Montserrat',
      fontSize: 14.0,
      fontWeight: FontWeight.bold);

  static get Montserrat14GreenBold => TextStyle(
      color: Colors.green,
      fontFamily: 'Montserrat',
      fontSize: 14.0,
      fontWeight: FontWeight.bold);

  static get Montserrat15DarkBlueSemiBold => new TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: AppColors.DarkBlue,
      letterSpacing: 2.5);

  static get Montserrat12DarkBlue => new TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      color: AppColors.DarkBlue,
      letterSpacing: 2.0);

  static get Montserrat12DarkBlueBold => new TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat',
      fontSize: 12.0,
      color: AppColors.DarkBlue,
      letterSpacing: 2.0);

  static get Montserrat12Grey =>
      TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, color: Colors.grey);

  static get Montserrat10DarkDarkBlue => new TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 10.0,
      color: AppColors.DarkBlueText,
      letterSpacing: 2.0);

  static get Montserrat10DarkGary => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10.0,
        color: AppColors.AlphaDarkGary,
      );

  static get Montserrat10White => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static get Montserrat10WhiteNormal => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10.0,
        color: Colors.white,
      );

  static get Montserrat10Indigo => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10.0,
        fontWeight: FontWeight.bold,
        color: AppColors.AlphaIndigo,
      );

  static get Montserrat10Brown =>
      TextStyle(fontFamily: 'Montserrat', fontSize: 10.0, color: Colors.brown);

  static get Montserrat8DarkBlue => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 8.0,
        color: AppColors.DarkBlue,
      );

  static get Montserrat12DarkBlueNoLetterSpacing => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12.0,
        color: AppColors.DarkBlue,
      );

  static get Montserrat12indigoNoLetterSpacing => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12.0,
        color: AppColors.AlphaIndigo,
      );

  static get Montserrat12PinkRedNoLetterSpacing => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12.0,
        color: AppColors.AlphaPinkRed,
      );

  static get Montserrat17DarkBlue => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 17.0,
        color: AppColors.DarkBlue,
      );

  static get Montserrat34DarkBold => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
        color: AppColors.DarkBlue,
      );

  static get Montserrat40DarkBold => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: AppColors.DarkBlue,
      );

  static get Montserrat33Bold => TextStyle(
      fontSize: 33.0, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);

  static get Montserrat40WhiteBold => TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static get SansSerif5 => TextStyle(
        fontFamily: 'SansSerif',
        fontSize: 10.0,
        color: Color(AppUtils().HexToColor("6C7B8A")),
      );

  static get SansSerif5UnderLine => TextStyle(
        fontFamily: 'SansSerif',
        decoration: TextDecoration.underline,
        fontSize: 10.0,
        color: Color(AppUtils().HexToColor("6C7B8A")),
      );

  static get SansSerif12White => TextStyle(
        fontFamily: 'SansSerif',
        fontSize: 12.0,
        color: Colors.white,
      );

  static get SansSerif13UnderLineWhite => TextStyle(
        fontFamily: 'SansSerif',
        decoration: TextDecoration.underline,
        fontSize: 13.0,
        color: Colors.white,
      );

  //Custom Fonts
  static get TextBackGroundDecoratoon => new TextStyle(
      color: Colors.blue,
      fontSize: 18.0,
      height: 1.2,
      fontFamily: "Courier",
      background: new Paint()..color = Colors.yellow,
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.dashed);

  static get Petita16WhiteBold => new TextStyle(
        color: Colors.white,
        fontFamily: 'petita',
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      );

  //Sotopia Font -End
  static get BebasNeue100BoldSpace10 => TextStyle(
      color: Colors.black,
      fontFamily: 'BebasNeue',
      fontSize: 100.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 10.0);

  static get BebasN => TextStyle(
      color: Colors.black,
      fontFamily: 'Montserrat',
      fontSize: 100.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 12.0);

  static get Comfortaa17Bold => TextStyle(
      fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 17.0);

  static get Comfortaa17BoldGrey => TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
      color: Colors.grey);

  static get FirSans16Black =>
      TextStyle(fontFamily: 'FirSans', fontSize: 16.0, color: Colors.black);

  static ThemeSubTitle(BuildContext context) {
    return Theme.of(context).textTheme.subtitle;
  }

  static ThemeDisplay1(BuildContext context) {
    return Theme.of(context).textTheme.display1;
  }

  static ThemeBody1(BuildContext context) {
    return Theme.of(context).textTheme.body1;
  }
}

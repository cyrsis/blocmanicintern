import 'package:flutter/material.dart';

class AppPadding {
  //Inside of the container
  static get Only => new EdgeInsets.only(left: 20.0, bottom: 40.0, top: 50.0);

  static get SymmetricH20V10 =>
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

  static get SymmetricH10 => EdgeInsets.symmetric(horizontal: 10.0);

  static get SymmetricH16 => EdgeInsets.symmetric(horizontal: 16.0);

  static get SymmetricH12V16 =>
      EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0);

  static get SymmetricH10V6 =>
      new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0);

  static get SymmetericH20V10 =>
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

  //Apple use 8 - 10 padding on the left
  static get sl8Padding => EdgeInsets.only(left: 8.0);

  static get SymmetricV8 => EdgeInsets.symmetric(vertical: 8.0);

  static get SymmetricV4 => EdgeInsets.symmetric(vertical: 4.0);

  static get Bottom5 => EdgeInsets.only(bottom: 5.0);

  static get All10 => EdgeInsets.all(10.0);

  static get All8 => EdgeInsets.all(8.0);

  static get All15 => EdgeInsets.all(15.0);

  static get All16 => EdgeInsets.all(16.0);

  static get Right20 => EdgeInsets.only(right: 12.0);

  static get Right10 => EdgeInsets.only(right: 10.0);

  static get Right16 => EdgeInsets.only(right: 16.0);

  static get Right8 => EdgeInsets.only(right: 8.0);

  static get Lef15Top15R12T12B12 =>
      EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0, bottom: 12.0);

  static get Left15Top10R15B10 =>
      EdgeInsets.only(top: 10.0, right: 15.0, bottom: 10.0, left: 15.0);

  static get Bottom10 => EdgeInsets.only(bottom: 10.0);

  static get Bottom25 => EdgeInsets.only(bottom: 25.0);

  static get LeftRight15 => EdgeInsets.only(left: 15.0, right: 15.0);

  static get Left15Right5 => EdgeInsets.only(left: 15.0, right: 5.0);

  static get Left8 => EdgeInsets.only(left: 8.0);
  static get Top8 => EdgeInsets.only(top: 8.0);

  static get Top75 => EdgeInsets.only(top: 75.0);

  static get Top20 => EdgeInsets.only(top: 20.0);

  static get All4 => EdgeInsets.all(5.0);
  static get All12 => EdgeInsets.all(12.0);

  static get Top10 => EdgeInsets.only(top: 10.0);

  static get Left15 => EdgeInsets.only(left: 15.0);
}

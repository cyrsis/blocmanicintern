import 'package:flutter/material.dart';

class AppDelegate {

  static get  FixCrossAxis => new SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 8.0,
    mainAxisSpacing: 8.0,
  );
}


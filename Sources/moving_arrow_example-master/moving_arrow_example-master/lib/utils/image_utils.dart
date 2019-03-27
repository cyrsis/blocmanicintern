import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

Future<ui.Image> getImage(String path) async {
  final ByteData data = await rootBundle.load(path);

  return await _loadImage(Uint8List.view(data.buffer));
}

Future<ui.Image> _loadImage(List<int> img) async {
  final Completer<ui.Image> imageCompleter = Completer();
  ui.decodeImageFromList(img, imageCompleter.complete);

  return imageCompleter.future;
}

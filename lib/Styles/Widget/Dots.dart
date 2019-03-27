import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Dots extends SingleChildRenderObjectWidget {
  const Dots({Key key, Widget child}) : super(key: key, child: child);

  @override
  RenderDots createRenderObject(BuildContext context) => new RenderDots();
}

class RenderDots extends RenderConstrainedBox {
  RenderDots() : super(additionalConstraints: const BoxConstraints.expand());

  // Makes this render box hittable so that we'll get pointer events.
  @override
  bool hitTestSelf(Offset position) => true;

  final Map<int, Offset> _dots = <int, Offset>{};

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    if (event is PointerDownEvent || event is PointerMoveEvent) {
      _dots[event.pointer] = event.position;
      markNeedsPaint();
    } else if (event is PointerUpEvent || event is PointerCancelEvent) {
      _dots.remove(event.pointer);
      markNeedsPaint();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final Canvas canvas = context.canvas;
    canvas.drawRect(
        offset & size, new Paint()..color = const Color(0xFF0000FF));

    final Paint paint = new Paint()..color = const Color(0xFF00FF00);
    for (Offset point in _dots.values) canvas.drawCircle(point, 50.0, paint);

    super.paint(context, offset);
  }
}

void main() {
  runApp(
    const Directionality(
      textDirection: TextDirection.ltr,
      child: Dots(
        child: Center(
          child: Text('Touch me!'),
        ),
      ),
    ),
  );
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fluttery/layout.dart';
import './profile_card.dart';

class DraggableCard extends StatefulWidget {
  @override
  DraggableCardState createState() => DraggableCardState();
}

class DraggableCardState extends State<DraggableCard> with TickerProviderStateMixin {
  Offset cardOffset = const Offset(0.0, 0.0);
  Offset dragStart;
  Offset dragPosition;
  Offset slideBackStart;
  AnimationController slideBackAnimation;
  Tween<Offset> slideOutTween;
  AnimationController slideOutAnimation;

  @override
  void initState() {
    super.initState();
    slideBackAnimation = new AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this
    )
    ..addListener(() => setState(() {
      cardOffset = Offset.lerp(
        slideBackStart,
        const Offset(0.0, 0.0),
        Curves.elasticOut.transform(slideBackAnimation.value)
      );
    }))
    ..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
      setState(() {
          dragStart = null;
          slideBackStart = null;
          dragPosition = null;
          });
        }
      }
    );

    slideOutAnimation = new AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this
    )
    ..addListener(() => setState(() {
      cardOffset = slideOutTween.evaluate(slideOutAnimation);
    }))
    ..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
          setState(() {
              dragStart = null;
              slideOutTween = null;
              dragPosition = null;
              cardOffset = const Offset(0.0, .0);
          });
        }
      }
    ); 
  }

  @override
    void dispose() {
      slideBackAnimation.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return AnchoredOverlay(
      showOverlay: true,
      child: Center(),
      overlayBuilder: (BuildContext context, Rect anchorBounds, Offset anchor) {
        return CenterAbout(
          position: anchor,
          child: Transform(
            transform: Matrix4.translationValues(cardOffset.dx, cardOffset.dy, 0.0)
              ..rotateZ(_rotation(anchorBounds)),
            origin: _rotationOrigin(anchorBounds),
            child: Container(
              width: anchorBounds.width,
              height: anchorBounds.height,
              padding: EdgeInsets.all(16.0),
              child: GestureDetector(
                onPanStart: _onPanStart,
                onPanUpdate: _onPanUpdate,
                onPanEnd: _onPanEnd,
                child: ProfileCard(),
              )
            ),
          ),
        );
      },
    );
  }

  void _onPanStart(DragStartDetails details) {
    dragStart = details.globalPosition;
    //Si todavia esta animando y vuelvo a hacer un drag, cancelo la animacion
    if (slideBackAnimation.isAnimating) {
      slideBackAnimation.stop(canceled: true);
    }
  }
  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      dragPosition = details.globalPosition;
      cardOffset = dragPosition - dragStart;
    });
  }
  void _onPanEnd(DragEndDetails details) {
    //Vector que indica para donde se esta haciendo el drag
    final Offset dragVector = cardOffset / cardOffset.distance;
    final isInNopeRegion = (cardOffset.dx / context.size.width) < -0.45;
    final isInLikeRegion = (cardOffset.dx / context.size.width) > 0.45;
    final isInSuperLikeRegion = (cardOffset.dy / context.size.height) < -0.40;

    setState(() {
      if (isInLikeRegion || isInNopeRegion) {
        //Multiplico el size del widget * 2 para que salga de la pantalla
        slideOutTween = new Tween(begin: cardOffset, end: dragVector * (context.size.width*2));
        slideOutAnimation.forward(from: 0.0);
      } else if (isInSuperLikeRegion) {
        slideOutTween = new Tween(begin: cardOffset, end: dragVector * (context.size.height*2));
        slideOutAnimation.forward(from: 0.0);
      } else {
        slideBackStart = cardOffset;
        slideBackAnimation.forward(from: 0.0);
      }
    });
  }

  double _rotation(Rect dragBounds) {
    if (dragStart != null) {
      //print((pi / 8) * (dragBounds.width));
      //Esto es para cuando se hace el drag desde la mitad para abajo de la imagen, rote sobre la esquina inferior correcta
      final int rotationCornerMultiplier = dragStart.dy >= dragBounds.top+(dragBounds.height/2) ? -1 : 1;
      return (pi / 8) * (cardOffset.dx / dragBounds.width) * rotationCornerMultiplier;
    } else {
      return 0.0;
    }
  }

  Offset _rotationOrigin(Rect dragBounds) {
    if (dragStart != null) {
      //Se resta dragBounds.topLeft porque 0.0,0.0 no es el centro de la imagen, hay una appBar. Por eso se resta
      return dragStart - dragBounds.topLeft;
    } else {
      return Offset(0.0, 0.0);
    }
  }
}
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:memory_game/model/animation_status.dart' as model;
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:redux/redux.dart';

class FlipWidget extends StatefulWidget {
  final Store<AppState> store;
  final String idMemoryBlock;
  final Widget from;
  final Widget to;
  final model.AnimationStatus animationStatus;

  const FlipWidget({
    @required this.store,
    @required this.idMemoryBlock,
    @required this.from,
    @required this.to,
    @required this.animationStatus,
    Key key,
  }) : super(key: key);

  @override
  _FlipWidgetState createState() => _FlipWidgetState();
}

class _FlipWidgetState extends State<FlipWidget>
    with SingleTickerProviderStateMixin {
  static final flipCurve = Cubic(0.455, 0.030, 0.515, 0.955);

  AnimationController _controller;
  Animation<double> flipAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    flipAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: flipCurve));

    flipAnimation.addStatusListener((animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        widget.store.dispatch(AppActionFlipAnimationCompleted(
            idMemoryBlock: widget.idMemoryBlock));
      } else if (animationStatus == AnimationStatus.dismissed) {
        widget.store.dispatch(AppActionFlipAnimationDismissed(
            idMemoryBlock: widget.idMemoryBlock));
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(FlipWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.animationStatus != widget.animationStatus) {
      switch (widget.animationStatus) {
        case model.AnimationStatus.forward:
          _controller.forward();
          break;
        case model.AnimationStatus.reverse:
          _controller.reverse();
          break;
        default:
          break;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        final Widget child = _controller.value <= 0.5 &&
                widget.animationStatus != model.AnimationStatus.completed
            ? widget.from
            : widget.to;

        Widget mirror(Widget child) => _controller.value <= 0.5
            ? Container(child: child)
            : Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(pi),
                child: child,
              );

        return slideUpTransition(
          child: alignmentRotateTransition(
            child: mirror(child),
          ),
        );
      });

  Widget alignmentRotateTransition({Widget child}) {
    final alignTransition =
        AlignmentTween(begin: Alignment.topCenter, end: Alignment.bottomCenter);

    return Transform(
      alignment: alignTransition.animate(_controller).value,
      transform: Matrix4.identity()..rotateX(_controller.value * pi),
      child: child,
    );
  }

  Widget slideUpTransition({Widget child}) {
    final Tween<Offset> slideUp =
        Tween<Offset>(begin: Offset.zero, end: Offset(0.0, -1.0));

    return SlideTransition(
      position: slideUp.animate(_controller),
      child: child,
    );
  }

  Widget flipWidget(Widget child) => Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationX(pi),
      child: child);
}

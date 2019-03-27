import 'package:flutter/material.dart';
import 'package:memory_game/model/animation_status.dart' as model;
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:redux/redux.dart';

class FadeOutWidget extends StatefulWidget {
  final Widget child;
  final String idMemoryBlock;
  final model.AnimationStatus animationStatus;
  final Store<AppState> store;

  const FadeOutWidget({
    this.child,
    this.animationStatus,
    this.idMemoryBlock,
    this.store,
    Key key,
  }) : super(key: key);

  @override
  _FadeOutWidgetState createState() => _FadeOutWidgetState();
}

class _FadeOutWidgetState extends State<FadeOutWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> fadeAnimation;

  @override
  void didUpdateWidget(FadeOutWidget oldWidget) {
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
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(_controller);

    fadeAnimation.addStatusListener((animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        widget.store.dispatch(AppActionFadeDiscoveredCompleted(
            idMemoryBlock: widget.idMemoryBlock));
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: fadeAnimation,
        child: widget.child,
      );
}

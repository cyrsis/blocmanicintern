import 'package:flutter/material.dart';
import 'package:memory_game/model/animation_status.dart' as model;
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:redux/redux.dart';

class GridCenterImageWidget extends StatefulWidget {
  final Store<AppState> store;
  final String imagePath;
  final String idMemoryBlock;
  final int imageIndex;
  final int horizontalBlockCount;
  final model.AnimationStatus animationStatus;

  const GridCenterImageWidget(
      {Key key,
      this.store,
      this.imagePath,
      this.imageIndex,
      this.idMemoryBlock,
      this.horizontalBlockCount,
      this.animationStatus})
      : super(key: key);

  @override
  _GridCenterImageWidgetState createState() => _GridCenterImageWidgetState();
}

class _GridCenterImageWidgetState extends State<GridCenterImageWidget>
    with TickerProviderStateMixin {
  final Curve alignmentCurve = Cubic(0.155, 0.925, 0.375, 0.995);
  final double imageSize = 70.0;

  static final Duration animationDuration = const Duration(milliseconds: 400);

  AnimationController _controller;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: animationDuration);

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 3.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _controller.addStatusListener((animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        widget.store.dispatch(AppActionScaleToCenterCompleted(
            idMemoryBlock: widget.idMemoryBlock));
      } else if (animationStatus == AnimationStatus.dismissed) {
        widget.store.dispatch(AppActionScaleToCenterDismissed(
            idMemoryBlock: widget.idMemoryBlock));
      }
    });

    /*_controller.forward();

    Timer(keepOpenDuration, () {
      _controller.reverse();
    });*/

    super.initState();
  }

  @override
  void didUpdateWidget(GridCenterImageWidget oldWidget) {
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
  Widget build(BuildContext context) {
    if (widget.animationStatus == model.AnimationStatus.dismissed)
      return Container();

    double animation(int index) =>
        Tween<double>(begin: (imageSize + 16.0) * index, end: 0.0)
            .animate(CurvedAnimation(
              parent: _controller,
              curve: alignmentCurve,
            ))
            .value;

    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        final EdgeInsets indexPositionMargin = EdgeInsets.fromLTRB(
            animation(widget.imageIndex % widget.horizontalBlockCount),
            animation(widget.imageIndex ~/ widget.horizontalBlockCount),
            0.0,
            0.0);

        return Positioned(
          top: 0.0,
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            margin: indexPositionMargin,
            child: ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  alignment: AlignmentTween(
                          begin: Alignment.topLeft, end: Alignment.center)
                      .animate(CurvedAnimation(
                          parent: _controller,
                          // https://matthewlein.com/tools/ceaser -> custom
                          curve: alignmentCurve))
                      .value,
                  child: child,
                )),
          ),
        );
      },
      child: Container(
        child: buildImage(),
        width: imageSize,
        height: imageSize,
      ),
    );
  }

  Widget buildImage() => GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      );
}

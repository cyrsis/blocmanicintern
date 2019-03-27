import 'package:flutter/material.dart';
import 'package:memory_game/model/animation_status.dart' as model;
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:memory_game/widget/flip_widget.dart';
import 'package:redux/redux.dart';

class FlipWidgetStful extends StatefulWidget {
  final Store<AppState> store;

  const FlipWidgetStful({Key key, this.store}) : super(key: key);

  @override
  _FlipWidgetStfulState createState() => _FlipWidgetStfulState();
}

class _FlipWidgetStfulState extends State<FlipWidgetStful> {
  MemoryBlock memoryBlock;

  @override
  void initState() {
    super.initState();
    memoryBlock = widget.store.state.memories[0];

    setFlow();
  }

  Future setFlow() async {
    await Future.delayed(Duration(seconds: 4));
    setState(() {
      memoryBlock = memoryBlock.copyWith(
          flipAnimationStatus: model.AnimationStatus.forward);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlipWidget(
      store: widget.store,
      idMemoryBlock: memoryBlock.id,
      from: buildImage(memoryBlock, MemoryBlock.coveredImagePath),
      to: buildImage(memoryBlock, memoryBlock.imagePath),
      animationStatus: memoryBlock.flipAnimationStatus,
    );
  }

  Widget buildImage(MemoryBlock memoryBlock, String imagePath) =>
      GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 300.0,
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () => widget.store
            .dispatch(AppActionSelectMemoryBlock(memoryBlock: memoryBlock)),
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:memory_game/model/animation_status.dart' as model;
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:memory_game/widget/fade_out_widget.dart';
import 'package:memory_game/widget/flip_widget.dart';
import 'package:memory_game/widget/grid_center_image_widget.dart';
import 'package:redux/redux.dart';

class MemoryPage extends StatelessWidget {
  final Store<AppState> appStore;
  final String appTitle;

  static const int horizontalBlockCount = 4;

  const MemoryPage({
    this.appStore,
    this.appTitle,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: StoreConnector<AppState, bool>(
              distinct: true,
              converter: (Store<AppState> store) => store.state.gameFinished,
              builder: (BuildContext context, bool gameFinished) =>
                  gameFinished ? buildGameFinished(context) : buildGameField(),
            ),
          ),
        ),
      );

  Widget buildGameField() => StoreConnector<AppState, List<MemoryBlock>>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.memories,
      builder: (BuildContext context, List<MemoryBlock> memories) {
        return Stack(
          children: <Widget>[
            appStore.state.isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    children: <Widget>[
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              memories.length ~/ horizontalBlockCount,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                        ),
                        itemCount: memories.length,
                        itemBuilder: (BuildContext context, int index) {
                          MemoryBlock memoryBlock = memories[index];

                          if (memoryBlock.scaleCenterAnimationStatus !=
                              model.AnimationStatus.dismissed) {
                            return Container();
                          }

                          return FadeOutWidget(
                              idMemoryBlock: memoryBlock.id,
                              store: appStore,
                              animationStatus: memoryBlock.fadeAnimationStatus,
                              child: FlipWidget(
                                store: appStore,
                                idMemoryBlock: memoryBlock.id,
                                from: buildImage(
                                    memoryBlock, MemoryBlock.coveredImagePath),
                                to: buildImage(
                                    memoryBlock, memoryBlock.imagePath),
                                animationStatus:
                                    memoryBlock.flipAnimationStatus,
                              ));
                        },
                      ),
                      Positioned.fill(
                        child: Stack(
                          children: zoomedMemoryBlocks(memories),
                        ),
                      ),
                    ],
                  ),
          ],
        );
      });

  List<GridCenterImageWidget> zoomedMemoryBlocks(List<MemoryBlock> memories) =>
      memories
          .asMap()
          .keys
          .map(
            (indexBlock) => GridCenterImageWidget(
                  store: appStore,
                  animationStatus:
                      memories[indexBlock].scaleCenterAnimationStatus,
                  idMemoryBlock: memories[indexBlock].id,
                  imagePath: memories[indexBlock].imagePath,
                  imageIndex: indexBlock,
                  horizontalBlockCount: horizontalBlockCount,
                ),
          )
          .toList();

  Widget buildGameFinished(BuildContext context) => Center(
        child: Column(
          children: <Widget>[
            Text(
              'Game finished',
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(height: 16.0),
            OutlineButton(
              child: Text(
                'Retry',
                style: Theme.of(context).textTheme.title,
              ),
              highlightedBorderColor: Theme.of(context).primaryColor,
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 3.0,
              ),
              onPressed: () => appStore.dispatch(AppActionRetryGame()),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      );

  Widget buildImage(MemoryBlock memoryBlock, String imagePath) =>
      GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () => appStore
            .dispatch(AppActionSelectMemoryBlock(memoryBlock: memoryBlock)),
      );
}

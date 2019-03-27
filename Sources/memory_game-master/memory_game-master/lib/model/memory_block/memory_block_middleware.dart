import 'dart:async';

import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> middlewareMemoryBlock() => [
      TypedMiddleware<AppState, AppActionScaleToCenterCompleted>(
          _centerZoomCompleted()),
      TypedMiddleware<AppState, AppActionFlipAnimationCompleted>(
          _flipAnimationCompleted()),
      TypedMiddleware<AppState, AppActionResolveDiscoveredMemoryBlocks>(
          _resolveDiscoveredMemoryBlocks()),
      TypedMiddleware<AppState, AppActionFadeDiscoveredCompleted>(
          _fadeDiscoveredCompleted()),
    ];

Middleware<AppState> _centerZoomCompleted() {
  return (Store<AppState> store, action, NextDispatcher next) {
    final List<MemoryBlock> memoryBlocks = store.state.memories;
    final Duration keepOpenDuration = const Duration(milliseconds: 1000);

    for (MemoryBlock memoryBlock in memoryBlocks) {
      if (memoryBlock.id != action.idMemoryBlock) continue;

      Timer(keepOpenDuration, () {
        store.dispatch(
            AppActionScaleToCenterReverse(idMemoryBlock: memoryBlock.id));
      });
    }
    next(action);
  };
}

Middleware<AppState> _flipAnimationCompleted() {
  return (Store<AppState> store, action, NextDispatcher next) {
    next(action);
    store.dispatch(AppActionResolveDiscoveredMemoryBlocks());
  };
}

Middleware<AppState> _fadeDiscoveredCompleted() {
  return (Store<AppState> store, action, NextDispatcher next) {
    final List<MemoryBlock> memoryBlocks = store.state.memories;

    final bool gameFinished =
        memoryBlocks.every((memoryBlock) => memoryBlock.isSelected);
    if (gameFinished) {
      store.dispatch(AppActionFinishedGame());
    }

    next(action);
  };
}

Middleware<AppState> _resolveDiscoveredMemoryBlocks() {
  return (Store<AppState> store, action, NextDispatcher next) {
    final List<MemoryBlock> memoryBlocks = store.state.memories;
    final List<MemoryBlock> discovered = discoveredMemoryBlocks(memoryBlocks);

    if (discovered.length >= 2) {
      final bool equalDiscoveredImages = discovered.every(
          (memoryBlock) => memoryBlock.imagePath == discovered.first.imagePath);

      if (equalDiscoveredImages) {
        fadeMemoryBlocks(discovered, store);
      } else {
        reverseMemoryBlocks(discovered, store);
      }
    }

    next(action);
  };
}

Future reverseMemoryBlocks(
    List<MemoryBlock> memoryBlocks, Store<AppState> store) async {
  final delayKeepDiscovered = const Duration(milliseconds: 0); // TODO 1500
  final delayBetween = const Duration(milliseconds: 0);

  await Future.delayed(delayKeepDiscovered);

  for (MemoryBlock memoryBlock in memoryBlocks) {
    _reverseAnimation(store, memoryBlock);
    await Future.delayed(delayBetween);
  }
}

void fadeMemoryBlocks(List<MemoryBlock> discovered, Store<AppState> store) {
  for (MemoryBlock memoryBlock in discovered) {
    store.dispatch(
        AppActionFadeDiscoveredForward(idMemoryBlock: memoryBlock.id));
  }
}

List<MemoryBlock> discoveredMemoryBlocks(List<MemoryBlock> memoryBlocks) =>
    memoryBlocks.where((memoryBlock) => memoryBlock.isDiscovered).toList();

void _reverseAnimation(Store<AppState> store, MemoryBlock memoryBlock) => store
    .dispatch(AppActionFlipAnimationReverse(idMemoryBlock: memoryBlock.id));

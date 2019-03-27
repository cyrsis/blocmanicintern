import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/model/memory_block/memory_block_middleware.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createMiddleware() => [
      TypedMiddleware<AppState, AppActionRetryGame>(_retryGame()),
      TypedMiddleware<AppState, AppActionLoadMemoryBlocks>(
          _loadMemories()), // could be replace with _loadPredefinedMemories()
      TypedMiddleware<AppState, AppActionSelectMemoryBlock>(_selectMemory()),
    ]..addAll(middlewareMemoryBlock());

Middleware<AppState> _retryGame() {
  return (Store<AppState> store, action, NextDispatcher next) {
    store.dispatch(AppActionLoadMemoryBlocks());
    next(action);
  };
}

Middleware<AppState> _selectMemory() {
  return (Store<AppState> store, action, NextDispatcher next) {
    final List<MemoryBlock> discovered =
        store.state.memories.where((memory) => memory.isDiscovered).toList();
    final MemoryBlock memoryBlock = action.memoryBlock;

    if (memoryBlock.isDiscovered) {
      store.dispatch(
          AppActionScaleToCenterForward(idMemoryBlock: memoryBlock.id));
    } else if (discovered.length <= 1) {
      store.dispatch(
          AppActionFlipAnimationForward(idMemoryBlock: memoryBlock.id));
    }

    next(action);
  };
}

Middleware<AppState> _loadMemories() =>
    (Store<AppState> store, action, NextDispatcher next) {
      List<MemoryBlock> memoryBlocks = List.generate(
          16,
          (index) => MemoryBlock(
              id: '$index',
              imagePath: 'images/memory_block_${(index + 2) ~/ 2}.jpg'))
        ..shuffle();

      store.dispatch(AppActionLoadedMemoryBlocks(memories: memoryBlocks));
      next(action);
    };

Middleware<AppState> _loadPredefinedMemories() =>
    (Store<AppState> store, action, NextDispatcher next) {
      MemoryBlock image(int number) => MemoryBlock(
            id: '${number - 1}',
            imagePath: 'images/memory_block_$number.jpg',
          );

      List<MemoryBlock> memoryBlocks = [
        image(1),
        image(2),
        image(3),
        image(4),
        image(5),
        image(2),
        image(1),
        image(6),
        image(3),
        image(6),
        image(5),
        image(7),
        image(8),
        image(7),
        image(8),
        image(4),
      ];

      store.dispatch(AppActionLoadedMemoryBlocks(memories: memoryBlocks));
      next(action);
    };

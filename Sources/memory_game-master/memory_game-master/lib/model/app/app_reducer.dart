import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/app/app_state.dart';
import 'package:memory_game/model/memory_block/memory_block_reducer.dart';
import 'package:redux/redux.dart';

final appStateReducer = combineReducers<AppState>([
  TypedReducer<AppState, AppActionFinishedGame>(_finishedGame),
  TypedReducer<AppState, AppActionRetryGame>(_retryGame),
  TypedReducer<AppState, dynamic>(_reduceMemoryBlocks),
  TypedReducer<AppState, AppActionLoadedMemoryBlocks>(_loadedMemoryBlocks),
]);

AppState _retryGame(AppState state, dynamic action) =>
    state.copyWith(gameFinished: false);

AppState _finishedGame(AppState state, dynamic action) =>
    state.copyWith(gameFinished: true);

AppState _reduceMemoryBlocks(AppState state, dynamic action) => state.copyWith(
    memories: List.from(state.memories
        .map((memoryBlock) => memoryBlockReducer(memoryBlock, action))
        .toList()));

AppState _loadedMemoryBlocks(
        AppState state, AppActionLoadedMemoryBlocks action) =>
    state.copyWith(memories: action.memories, isLoading: false);

// TODO ??
/* if (action is AppActionSelectMemoryBlock)
    return state.copyWith(memories: action.idMemoryBlock);*/

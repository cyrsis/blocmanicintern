import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final bool gameFinished;
  final bool isLoading;
  final List<MemoryBlock> memories;

  const AppState({
    this.gameFinished = false,
    this.isLoading = false,
    this.memories = const [],
  });

  factory AppState.isLoading() => AppState(isLoading: true);

  AppState copyWith(
          {List<MemoryBlock> memories, bool gameFinished, bool isLoading}) =>
      AppState(
        gameFinished: gameFinished ?? this.gameFinished,
        memories: memories ?? this.memories,
        isLoading: isLoading ?? this.isLoading,
      );
}

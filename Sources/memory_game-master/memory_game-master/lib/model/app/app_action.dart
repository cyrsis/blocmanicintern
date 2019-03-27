import 'package:flutter/material.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';

@immutable
abstract class AppAction {
  const AppAction();
}

@immutable
class AppActionFinishedGame extends AppAction {}

@immutable
class AppActionRetryGame extends AppAction {}

@immutable
class AppActionLoadMemoryBlocks extends AppAction {}

@immutable
class AppActionLoadedMemoryBlocks extends AppAction {
  final List<MemoryBlock> memories;

  const AppActionLoadedMemoryBlocks({@required this.memories});
}

@immutable
class AppActionSelectMemoryBlock extends AppAction {
  final MemoryBlock memoryBlock;

  const AppActionSelectMemoryBlock({@required this.memoryBlock});
}

@immutable
class AppActionFlipAnimationForward extends AppAction {
  final String idMemoryBlock;

  const AppActionFlipAnimationForward({@required this.idMemoryBlock});
}

@immutable
class AppActionFlipAnimationReverse extends AppAction {
  final String idMemoryBlock;

  const AppActionFlipAnimationReverse({@required this.idMemoryBlock});
}

@immutable
class AppActionFlipAnimationDismissed extends AppAction {
  final String idMemoryBlock;

  const AppActionFlipAnimationDismissed({@required this.idMemoryBlock});
}

@immutable
class AppActionFlipAnimationCompleted extends AppAction {
  final String idMemoryBlock;

  const AppActionFlipAnimationCompleted({@required this.idMemoryBlock});
}

@immutable
class AppActionScaleToCenterForward extends AppAction {
  final String idMemoryBlock;

  const AppActionScaleToCenterForward({@required this.idMemoryBlock});
}

@immutable
class AppActionScaleToCenterReverse extends AppAction {
  final String idMemoryBlock;

  const AppActionScaleToCenterReverse({@required this.idMemoryBlock});
}

@immutable
class AppActionScaleToCenterDismissed extends AppAction {
  final String idMemoryBlock;

  const AppActionScaleToCenterDismissed({@required this.idMemoryBlock});
}

@immutable
class AppActionScaleToCenterCompleted extends AppAction {
  final String idMemoryBlock;

  const AppActionScaleToCenterCompleted({@required this.idMemoryBlock});
}

@immutable
class AppActionResolveDiscoveredMemoryBlocks extends AppAction {
  const AppActionResolveDiscoveredMemoryBlocks();
}

@immutable
class AppActionFadeDiscoveredForward extends AppAction {
  final String idMemoryBlock;

  const AppActionFadeDiscoveredForward({@required this.idMemoryBlock});
}

@immutable
class AppActionFadeDiscoveredCompleted extends AppAction {
  final String idMemoryBlock;

  const AppActionFadeDiscoveredCompleted({@required this.idMemoryBlock});
}

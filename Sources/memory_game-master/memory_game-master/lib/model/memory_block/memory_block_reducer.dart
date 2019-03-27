import 'package:memory_game/model/animation_status.dart';
import 'package:memory_game/model/app/app_action.dart';
import 'package:memory_game/model/memory_block/memory_block_state.dart';
import 'package:redux/redux.dart';

final memoryBlockReducer = combineReducers<MemoryBlock>([
  TypedReducer<MemoryBlock, AppActionFlipAnimationForward>(
      _flipAnimationForward),
  TypedReducer<MemoryBlock, AppActionFlipAnimationReverse>(
      _flipAnimationReverse),
  TypedReducer<MemoryBlock, AppActionFlipAnimationDismissed>(
      _flipAnimationDismissed),
  TypedReducer<MemoryBlock, AppActionFlipAnimationCompleted>(
      _flipAnimationCompleted),
  TypedReducer<MemoryBlock, AppActionScaleToCenterForward>(
      _scaleToCenterForward),
  TypedReducer<MemoryBlock, AppActionScaleToCenterReverse>(
      _scaleToCenterReverse),
  TypedReducer<MemoryBlock, AppActionScaleToCenterDismissed>(
      _scaleToCenterDismissed),
  TypedReducer<MemoryBlock, AppActionScaleToCenterCompleted>(
      _scaleToCenterCompleted),
  TypedReducer<MemoryBlock, AppActionFadeDiscoveredForward>(
      _fadeDiscoveredForward),
  TypedReducer<MemoryBlock, AppActionFadeDiscoveredCompleted>(
      _fadeDiscoveredCompleted),
]);

MemoryBlock _flipAnimationForward(
        MemoryBlock memoryBlock, AppActionFlipAnimationForward action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(flipAnimationStatus: AnimationStatus.forward)
        : memoryBlock;

MemoryBlock _flipAnimationReverse(
        MemoryBlock memoryBlock, AppActionFlipAnimationReverse action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(flipAnimationStatus: AnimationStatus.reverse)
        : memoryBlock;

MemoryBlock _flipAnimationDismissed(
        MemoryBlock memoryBlock, AppActionFlipAnimationDismissed action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(flipAnimationStatus: AnimationStatus.dismissed)
        : memoryBlock;

MemoryBlock _flipAnimationCompleted(
        MemoryBlock memoryBlock, AppActionFlipAnimationCompleted action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(flipAnimationStatus: AnimationStatus.completed)
        : memoryBlock;

MemoryBlock _scaleToCenterForward(
        MemoryBlock memoryBlock, AppActionScaleToCenterForward action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            centerZoomAnimationStatus: AnimationStatus.forward)
        : memoryBlock;

MemoryBlock _scaleToCenterReverse(
        MemoryBlock memoryBlock, AppActionScaleToCenterReverse action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            centerZoomAnimationStatus: AnimationStatus.reverse)
        : memoryBlock;

MemoryBlock _scaleToCenterDismissed(
        MemoryBlock memoryBlock, AppActionScaleToCenterDismissed action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            centerZoomAnimationStatus: AnimationStatus.dismissed)
        : memoryBlock;

MemoryBlock _scaleToCenterCompleted(
        MemoryBlock memoryBlock, AppActionScaleToCenterCompleted action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            centerZoomAnimationStatus: AnimationStatus.completed)
        : memoryBlock;

MemoryBlock _fadeDiscoveredForward(
        MemoryBlock memoryBlock, AppActionFadeDiscoveredForward action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            fadeAnimationStatus: AnimationStatus.forward,
            isSelected: true,
          )
        : memoryBlock;

MemoryBlock _fadeDiscoveredCompleted(
        MemoryBlock memoryBlock, AppActionFadeDiscoveredCompleted action) =>
    (memoryBlock.id == action.idMemoryBlock)
        ? memoryBlock.copyWith(
            flipAnimationStatus: AnimationStatus.dismissed,
            centerZoomAnimationStatus: AnimationStatus.dismissed,
          )
        : memoryBlock;

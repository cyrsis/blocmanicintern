import 'package:memory_game/model/animation_status.dart';
import 'package:meta/meta.dart';

@immutable
class MemoryBlock {
  final String id;
  final bool isSelected;
  final String imagePath;
  final AnimationStatus flipAnimationStatus;
  final AnimationStatus scaleCenterAnimationStatus;
  final AnimationStatus fadeAnimationStatus;

  const MemoryBlock({
    @required this.id,
    @required this.imagePath,
    this.isSelected = false,
    this.flipAnimationStatus = AnimationStatus.dismissed,
    this.scaleCenterAnimationStatus = AnimationStatus.dismissed,
    this.fadeAnimationStatus = AnimationStatus.dismissed,
  });

  static String get coveredImagePath => 'images/memory_block_covered.jpg';

  get isDiscovered => flipAnimationStatus == AnimationStatus.completed;

  get isDiscovering =>
      isDiscovered || flipAnimationStatus == AnimationStatus.forward;

  MemoryBlock copyWith({
    String id,
    bool isSelected,
    String imagePath,
    AnimationStatus flipAnimationStatus,
    AnimationStatus centerZoomAnimationStatus,
    AnimationStatus fadeAnimationStatus,
  }) =>
      MemoryBlock(
        id: id ?? this.id,
        isSelected: isSelected ?? this.isSelected,
        imagePath: imagePath ?? this.imagePath,
        flipAnimationStatus: flipAnimationStatus ?? this.flipAnimationStatus,
        scaleCenterAnimationStatus:
            centerZoomAnimationStatus ?? this.scaleCenterAnimationStatus,
        fadeAnimationStatus: fadeAnimationStatus ?? this.fadeAnimationStatus,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemoryBlock &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          imagePath == other.imagePath &&
          flipAnimationStatus == other.flipAnimationStatus &&
          scaleCenterAnimationStatus == other.scaleCenterAnimationStatus &&
          fadeAnimationStatus == other.fadeAnimationStatus;

  @override
  int get hashCode =>
      id.hashCode ^
      imagePath.hashCode ^
      flipAnimationStatus.hashCode ^
      scaleCenterAnimationStatus.hashCode ^
      fadeAnimationStatus.hashCode;

  @override
  String toString() =>
      'MemoryBlock{id: $id, imagePath: $imagePath, flipAnimationStatus: $flipAnimationStatus, centerZoomAnimationStatus: $scaleCenterAnimationStatus, fadeAnimationStatus: $fadeAnimationStatus}';
}

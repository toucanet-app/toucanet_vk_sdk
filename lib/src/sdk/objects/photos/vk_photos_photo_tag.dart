import 'package:meta/meta.dart';

import '../base/vk_base_bool_int.dart';

class VKPhotosPhotoTag {
  /// Date when tag has been added in Unixtime.
  final int date;

  /// Tag ID.
  final int id;

  /// ID of the tag creator.
  final int placerId;

  /// Tag description.
  final String taggedName;

  /// Tagged description..
  final String description;

  /// Tagged user ID.
  final int userId;

  /// Information whether the tag is reviewed.
  final VKBaseBoolInt viewed;

  /// Coordinate X of the left upper corner.
  final double x;

  /// Coordinate X of the right lower corner.
  final double x2;

  /// Coordinate Y of the left upper corner.
  final double y;

  /// Coordinate Y of the right lower corner.
  final double y2;

  const VKPhotosPhotoTag({
    @required this.date,
    @required this.id,
    @required this.placerId,
    @required this.taggedName,
    this.description,
    @required this.userId,
    @required this.viewed,
    @required this.x,
    @required this.x2,
    @required this.y,
    @required this.y2,
  }) : assert(date >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'id': id,
      'placer_id': placerId,
      'tagged_name': taggedName,
      'description': description,
      'user_id': userId,
      'viewed': viewed?.value,
      'x': x,
      'x2': x2,
      'y': y,
      'y2': y2,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKPhotosPhotoTag.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKPhotosPhotoTag(
      date: map['date'] as int,
      id: map['id'] as int,
      placerId: map['placer_id'] as int,
      taggedName: map['tagged_name'] as String,
      description: map['description'] as String,
      userId: map['user_id'] as int,
      viewed: VKBaseBoolInt(map['viewed']),
      x: map['x'] as double,
      x2: map['x2'] as double,
      y: map['y'] as double,
      y2: map['y2'] as double,
    );
  }
}

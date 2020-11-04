import 'base_bool_int.dart';

class BoardTopic {
  /// Comments number.
  final int comments;

  /// Date when the topic has been created in Unixtime.
  final int created;

  /// Creator ID.
  final int createdBy;

  /// Topic ID.
  final int id;

  /// Information whether the topic is closed.
  final BaseBoolInt isClosed;

  /// Information whether the topic is fixed.
  final BaseBoolInt isFixed;

  /// Topic title.
  final String title;

  /// Date when the topic has been updated in Unixtime.
  final int updated;

  /// ID of user who updated the topic.
  final int updatedBy;

  const BoardTopic({
    this.comments,
    this.created,
    this.createdBy,
    this.id,
    this.isClosed,
    this.isFixed,
    this.title,
    this.updated,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'created': created,
      'created_by': createdBy,
      'id': id,
      'is_closed': isClosed?.value,
      'is_fixed': isFixed?.value,
      'title': title,
      'updated': updated,
      'updated_by': updatedBy,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory BoardTopic.fromMap(Map<String, dynamic> map) {
    return BoardTopic(
      comments: map['comments'] as int,
      created: map['created'] as int,
      createdBy: map['created_by'] as int,
      id: map['id'] as int,
      isClosed: BaseBoolInt(map['is_closed']),
      isFixed: BaseBoolInt(map['is_fixed']),
      title: map['title'] as String,
      updated: map['updated'] as int,
      updatedBy: map['updated_by'] as int,
    );
  }
}

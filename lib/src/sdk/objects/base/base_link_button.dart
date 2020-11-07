import 'base_link_button_action.dart';

class VKBaseLinkButton {
  /// Button action.
  final VKBaseLinkButtonAction action;

  /// Button title.
  final String title;

  /// Target block id.
  final String blockId;

  /// Target section id.
  final String sectionId;

  /// Owner id.
  final int ownerId;

  /// Button icon name, e.g. 'phone' or 'gift'.
  final String icon;

  /// Button style
  final String style;

  const VKBaseLinkButton({
    this.action,
    this.title,
    this.blockId,
    this.sectionId,
    this.ownerId,
    this.icon,
    this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action?.toMap(),
      'title': title,
      'block_id': blockId,
      'section_id': sectionId,
      'owner_id': ownerId,
      'icon': icon,
      'style': style,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseLinkButton.fromMap(Map<String, dynamic> map) {
    return VKBaseLinkButton(
      action: VKBaseLinkButtonAction.fromMap(map['action']),
      title: map['title'] as String,
      blockId: map['block_id'] as String,
      sectionId: map['section_id'] as String,
      ownerId: map['owner_id'] as int,
      icon: map['icon'] as String,
      style: map['style'] as String,
    );
  }
}

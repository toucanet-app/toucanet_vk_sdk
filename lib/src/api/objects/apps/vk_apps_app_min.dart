import 'package:meta/meta.dart';

import 'vk_apps_app_type.dart';

class VKAppsAppMin {
  final VKAppsAppType type;

  /// Application ID.
  final int id;

  /// Application title.
  final String title;

  /// Application author's ID.
  final int authorOwnerId;

  /// Is application installed.
  final bool isInstalled;

  /// URL of the app icon with 139 px in width.
  final String icon139;

  /// URL of the app icon with 150 px in width.
  final String icon150;

  /// URL of the app icon with 278 px in width.
  final String icon278;

  /// URL of the app icon with 576 px in width.
  final String icon576;

  /// Hex color code without hash sign.
  final String backgroundLoaderColor;

  /// SVG data.
  final String loaderIcon;

  /// URL of the app icon with 75 px in width.
  final String icon75;

  const VKAppsAppMin({
    @required this.type,
    @required this.id,
    @required this.title,
    this.authorOwnerId,
    this.isInstalled,
    this.icon139,
    this.icon150,
    this.icon278,
    this.icon576,
    this.backgroundLoaderColor,
    this.loaderIcon,
    this.icon75,
  }) : assert(id >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type?.value,
      'id': id,
      'title': title,
      'author_owner_id': authorOwnerId,
      'is_installed': isInstalled,
      'icon_139': icon139,
      'icon_150': icon150,
      'icon_278': icon278,
      'icon_576': icon576,
      'background_loader_color': backgroundLoaderColor,
      'loader_icon': loaderIcon,
      'icon_75': icon75,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAppsAppMin.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKAppsAppMin(
      type: VKAppsAppType(map['type']),
      id: map['id'] as int,
      title: map['title'] as String,
      authorOwnerId: map['author_owner_id'] as int,
      isInstalled: map['is_installed'] as bool,
      icon139: map['icon_139'] as String,
      icon150: map['icon_150'] as String,
      icon278: map['icon_278'] as String,
      icon576: map['icon_576'] as String,
      backgroundLoaderColor: map['background_loader_color'] as String,
      loaderIcon: map['loader_icon'] as String,
      icon75: map['icon_75'] as String,
    );
  }
}

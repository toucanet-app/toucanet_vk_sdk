import 'apps_app_type.dart';
import 'base_bool_int.dart';
import 'apps_app_leaderboard_type.dart';
import 'package:meta/meta.dart';

class AppsApp {
  final AppsAppType type;

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

  /// Application author's URL.
  final String authorUrl;

  /// URL of the app banner with 1120 px in width.
  final String banner1120;

  /// URL of the app banner with 560 px in width.
  final String banner560;

  /// URL of the app icon with 16 px in width.
  final String icon16;

  /// Is new flag.
  final BaseBoolInt isNew;

  /// Is push enabled.
  final BaseBoolInt pushEnabled;

  /// Screen orientation.
  final int screenOrientation;

  final List<int> friends;

  /// Catalog position.
  final int catalogPosition;

  /// Application description.
  final String description;

  /// Genre name.
  final String genre;

  /// Genre ID.
  final int genreId;

  /// Information whether the application is multilanguage.
  final bool international;

  /// Information whether application is in mobile catalog.
  final int isInCatalog;

  final AppsAppLeaderboardType leaderboardType;

  /// Members number.
  final int membersCount;

  /// Application ID in store.
  final String platformId;

  /// Date when the application has been published in Unixtime.
  final int publishedDate;

  /// Screen name.
  final String screenName;

  /// Application section name.
  final String section;

  const AppsApp({
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
    this.authorUrl,
    this.banner1120,
    this.banner560,
    this.icon16,
    this.isNew,
    this.pushEnabled,
    this.screenOrientation,
    this.friends,
    this.catalogPosition,
    this.description,
    this.genre,
    this.genreId,
    this.international,
    this.isInCatalog,
    this.leaderboardType,
    this.membersCount,
    this.platformId,
    this.publishedDate,
    this.screenName,
    this.section,
  });

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
      'author_url': authorUrl,
      'banner_1120': banner1120,
      'banner_560': banner560,
      'icon_16': icon16,
      'is_new': isNew?.value,
      'push_enabled': pushEnabled?.value,
      'screen_orientation': screenOrientation,
      'friends': friends,
      'catalog_position': catalogPosition,
      'description': description,
      'genre': genre,
      'genre_id': genreId,
      'international': international,
      'is_in_catalog': isInCatalog,
      'leaderboard_type': leaderboardType?.value,
      'members_count': membersCount,
      'platform_id': platformId,
      'published_date': publishedDate,
      'screen_name': screenName,
      'section': section,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory AppsApp.fromMap(Map<String, dynamic> map) {
    return AppsApp(
      type: AppsAppType(map['type']),
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
      authorUrl: map['author_url'] as String,
      banner1120: map['banner_1120'] as String,
      banner560: map['banner_560'] as String,
      icon16: map['icon_16'] as String,
      isNew: BaseBoolInt(map['is_new']),
      pushEnabled: BaseBoolInt(map['push_enabled']),
      screenOrientation: map['screen_orientation'] as int,
      friends: map['friends'] as List<int>,
      catalogPosition: map['catalog_position'] as int,
      description: map['description'] as String,
      genre: map['genre'] as String,
      genreId: map['genre_id'] as int,
      international: map['international'] as bool,
      isInCatalog: map['is_in_catalog'] as int,
      leaderboardType: AppsAppLeaderboardType(map['leaderboard_type']),
      membersCount: map['members_count'] as int,
      platformId: map['platform_id'] as String,
      publishedDate: map['published_date'] as int,
      screenName: map['screen_name'] as String,
      section: map['section'] as String,
    );
  }
}

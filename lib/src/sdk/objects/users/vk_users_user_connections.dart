import 'package:meta/meta.dart';

class VKUsersUserConnections {
  /// User's Skype nickname.
  final String skype;

  /// User's Facebook account.
  final String facebook;

  /// User's Facebook name.
  final String facebookName;

  /// User's Twitter account.
  final String twitter;

  /// User's Livejournal account.
  final String livejournal;

  /// User's Instagram account.
  final String instagram;

  const VKUsersUserConnections({
    @required this.skype,
    @required this.facebook,
    this.facebookName,
    @required this.twitter,
    this.livejournal,
    @required this.instagram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skype': skype,
      'facebook': facebook,
      'facebook_name': facebookName,
      'twitter': twitter,
      'livejournal': livejournal,
      'instagram': instagram,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersUserConnections.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersUserConnections(
      skype: map['skype'] as String,
      facebook: map['facebook'] as String,
      facebookName: map['facebook_name'] as String,
      twitter: map['twitter'] as String,
      livejournal: map['livejournal'] as String,
      instagram: map['instagram'] as String,
    );
  }
}

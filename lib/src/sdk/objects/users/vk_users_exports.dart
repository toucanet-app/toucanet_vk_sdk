class VKUsersExports {
  final int facebook;

  final int livejournal;

  final int twitter;

  const VKUsersExports({
    this.facebook,
    this.livejournal,
    this.twitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facebook': facebook,
      'livejournal': livejournal,
      'twitter': twitter,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKUsersExports.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKUsersExports(
      facebook: map['facebook'] as int,
      livejournal: map['livejournal'] as int,
      twitter: map['twitter'] as int,
    );
  }
}

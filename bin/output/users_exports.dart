

class UsersExports {
  final int facebook;

  final int livejournal;

  final int twitter;

  const UsersExports({
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

  factory UsersExports.fromMap(Map<String, dynamic> map) {
    return UsersExports(
      facebook: map['facebook'] as int,
      livejournal: map['livejournal'] as int,
      twitter: map['twitter'] as int,
    );
  }
}

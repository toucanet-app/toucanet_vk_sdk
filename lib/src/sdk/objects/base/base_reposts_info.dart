class VKBaseRepostsInfo {
  /// Total reposts counter. Sum of wall and mail reposts counters.
  final int count;

  /// Wall reposts counter.
  final int wallCount;

  /// Mail reposts counter.
  final int mailCount;

  /// Information whether current user has reposted the post.
  final int userReposted;

  const VKBaseRepostsInfo({
    this.count,
    this.wallCount,
    this.mailCount,
    this.userReposted,
  })  : assert(count >= 0),
        assert(wallCount >= 0),
        assert(mailCount >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'wall_count': wallCount,
      'mail_count': mailCount,
      'user_reposted': userReposted,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBaseRepostsInfo.fromMap(Map<String, dynamic> map) {
    return VKBaseRepostsInfo(
      count: map['count'] as int,
      wallCount: map['wall_count'] as int,
      mailCount: map['mail_count'] as int,
      userReposted: map['user_reposted'] as int,
    );
  }
}
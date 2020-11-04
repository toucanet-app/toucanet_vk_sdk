

class VideoVideoFiles {
  /// URL of the external player.
  final String external;

  /// URL of the mpeg4 file with 240p quality.
  final String mp4240;

  /// URL of the mpeg4 file with 360p quality.
  final String mp4360;

  /// URL of the mpeg4 file with 480p quality.
  final String mp4480;

  /// URL of the mpeg4 file with 720p quality.
  final String mp4720;

  /// URL of the mpeg4 file with 1080p quality.
  final String mp41080;

  /// URL of the flv file with 320p quality.
  final String flv320;

  const VideoVideoFiles({
    this.external,
    this.mp4240,
    this.mp4360,
    this.mp4480,
    this.mp4720,
    this.mp41080,
    this.flv320,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'external': external,
      'mp4_240': mp4240,
      'mp4_360': mp4360,
      'mp4_480': mp4480,
      'mp4_720': mp4720,
      'mp4_1080': mp41080,
      'flv_320': flv320,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VideoVideoFiles.fromMap(Map<String, dynamic> map) {
    return VideoVideoFiles(
      external: map['external'] as String,
      mp4240: map['mp4_240'] as String,
      mp4360: map['mp4_360'] as String,
      mp4480: map['mp4_480'] as String,
      mp4720: map['mp4_720'] as String,
      mp41080: map['mp4_1080'] as String,
      flv320: map['flv_320'] as String,
    );
  }
}

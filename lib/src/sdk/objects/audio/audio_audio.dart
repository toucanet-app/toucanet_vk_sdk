import 'package:meta/meta.dart';

class VKAudioAudio {
  /// Artist name.
  final String artist;

  /// Audio ID.
  final int id;

  /// Title.
  final String title;

  /// URL of mp3 file.
  final String url;

  /// Duration in seconds.
  final int duration;

  /// Date when uploaded.
  final int date;

  /// Album ID.
  final int albumId;

  /// Genre ID.
  final int genreId;

  /// Performer name.
  final String performer;

  const VKAudioAudio({
    @required this.artist,
    @required this.id,
    @required this.title,
    this.url,
    @required this.duration,
    this.date,
    this.albumId,
    this.genreId,
    this.performer,
  })  : assert(id >= 0),
        assert(duration >= 0),
        assert(date >= 0),
        assert(albumId >= 0),
        assert(genreId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artist': artist,
      'id': id,
      'title': title,
      'url': url,
      'duration': duration,
      'date': date,
      'album_id': albumId,
      'genre_id': genreId,
      'performer': performer,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAudioAudio.fromMap(Map<String, dynamic> map) {
    return VKAudioAudio(
      artist: map['artist'] as String,
      id: map['id'] as int,
      title: map['title'] as String,
      url: map['url'] as String,
      duration: map['duration'] as int,
      date: map['date'] as int,
      albumId: map['album_id'] as int,
      genreId: map['genre_id'] as int,
      performer: map['performer'] as String,
    );
  }
}

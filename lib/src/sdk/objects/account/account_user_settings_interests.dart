import 'account_user_settings_interest.dart';

class VKAccountUserSettingsInterests {
  final VKAccountUserSettingsInterest activities;

  final VKAccountUserSettingsInterest interests;

  final VKAccountUserSettingsInterest music;

  final VKAccountUserSettingsInterest tv;

  final VKAccountUserSettingsInterest movies;

  final VKAccountUserSettingsInterest books;

  final VKAccountUserSettingsInterest games;

  final VKAccountUserSettingsInterest quotes;

  final VKAccountUserSettingsInterest about;

  const VKAccountUserSettingsInterests({
    this.activities,
    this.interests,
    this.music,
    this.tv,
    this.movies,
    this.books,
    this.games,
    this.quotes,
    this.about,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activities': activities?.toMap(),
      'interests': interests?.toMap(),
      'music': music?.toMap(),
      'tv': tv?.toMap(),
      'movies': movies?.toMap(),
      'books': books?.toMap(),
      'games': games?.toMap(),
      'quotes': quotes?.toMap(),
      'about': about?.toMap(),
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKAccountUserSettingsInterests.fromMap(Map<String, dynamic> map) {
    return VKAccountUserSettingsInterests(
      activities: VKAccountUserSettingsInterest.fromMap(map['activities']),
      interests: VKAccountUserSettingsInterest.fromMap(map['interests']),
      music: VKAccountUserSettingsInterest.fromMap(map['music']),
      tv: VKAccountUserSettingsInterest.fromMap(map['tv']),
      movies: VKAccountUserSettingsInterest.fromMap(map['movies']),
      books: VKAccountUserSettingsInterest.fromMap(map['books']),
      games: VKAccountUserSettingsInterest.fromMap(map['games']),
      quotes: VKAccountUserSettingsInterest.fromMap(map['quotes']),
      about: VKAccountUserSettingsInterest.fromMap(map['about']),
    );
  }
}

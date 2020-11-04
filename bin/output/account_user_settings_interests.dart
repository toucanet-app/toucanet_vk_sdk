import 'account_user_settings_interest.dart';

class AccountUserSettingsInterests {
  final AccountUserSettingsInterest activities;

  final AccountUserSettingsInterest interests;

  final AccountUserSettingsInterest music;

  final AccountUserSettingsInterest tv;

  final AccountUserSettingsInterest movies;

  final AccountUserSettingsInterest books;

  final AccountUserSettingsInterest games;

  final AccountUserSettingsInterest quotes;

  final AccountUserSettingsInterest about;

  const AccountUserSettingsInterests({
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

  factory AccountUserSettingsInterests.fromMap(Map<String, dynamic> map) {
    return AccountUserSettingsInterests(
      activities: AccountUserSettingsInterest.fromMap(map['activities']),
      interests: AccountUserSettingsInterest.fromMap(map['interests']),
      music: AccountUserSettingsInterest.fromMap(map['music']),
      tv: AccountUserSettingsInterest.fromMap(map['tv']),
      movies: AccountUserSettingsInterest.fromMap(map['movies']),
      books: AccountUserSettingsInterest.fromMap(map['books']),
      games: AccountUserSettingsInterest.fromMap(map['games']),
      quotes: AccountUserSettingsInterest.fromMap(map['quotes']),
      about: AccountUserSettingsInterest.fromMap(map['about']),
    );
  }
}

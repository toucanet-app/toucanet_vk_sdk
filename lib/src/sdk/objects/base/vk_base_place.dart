class VKBasePlace {
  /// Place address.
  final String address;

  /// Checkins number.
  final int checkins;

  /// City name.
  final String city;

  /// Country name.
  final String country;

  /// Date of the place creation in Unixtime.
  final int created;

  /// URL of the place's icon.
  final String icon;

  /// Place ID.
  final int id;

  /// Place latitude.
  final double latitude;

  /// Place longitude.
  final double longitude;

  /// Place title.
  final String title;

  /// Place type.
  final String type;

  const VKBasePlace({
    this.address,
    this.checkins,
    this.city,
    this.country,
    this.created,
    this.icon,
    this.id,
    this.latitude,
    this.longitude,
    this.title,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'checkins': checkins,
      'city': city,
      'country': country,
      'created': created,
      'icon': icon,
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'type': type,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKBasePlace.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKBasePlace(
      address: map['address'] as String,
      checkins: map['checkins'] as int,
      city: map['city'] as String,
      country: map['country'] as String,
      created: map['created'] as int,
      icon: map['icon'] as String,
      id: map['id'] as int,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      title: map['title'] as String,
      type: map['type'] as String,
    );
  }
}

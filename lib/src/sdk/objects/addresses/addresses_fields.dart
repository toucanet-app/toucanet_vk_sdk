/// .
class VKAddressesFields {
  final String value;

  const VKAddressesFields._(this.value);

  factory VKAddressesFields(value) {
    if (!values.contains(value)) return null;
    return VKAddressesFields._(value);
  }

  static const VKAddressesFields additionalAddress =
      VKAddressesFields._('additional_address');

  static const VKAddressesFields address = VKAddressesFields._('address');

  static const VKAddressesFields cityId = VKAddressesFields._('city_id');

  static const VKAddressesFields countryId = VKAddressesFields._('country_id');

  static const VKAddressesFields distance = VKAddressesFields._('distance');

  static const VKAddressesFields id = VKAddressesFields._('id');

  static const VKAddressesFields latitude = VKAddressesFields._('latitude');

  static const VKAddressesFields longitude = VKAddressesFields._('longitude');

  static const VKAddressesFields metroStationId =
      VKAddressesFields._('metro_station_id');

  static const VKAddressesFields phone = VKAddressesFields._('phone');

  static const VKAddressesFields timeOffset =
      VKAddressesFields._('time_offset');

  static const VKAddressesFields timetable = VKAddressesFields._('timetable');

  static const VKAddressesFields title = VKAddressesFields._('title');

  static const VKAddressesFields workInfoStatus =
      VKAddressesFields._('work_info_status');

  static List get values => const [
        'id',
        'title',
        'address',
        'additional_address',
        'country_id',
        'city_id',
        'metro_station_id',
        'latitude',
        'longitude',
        'distance',
        'work_info_status',
        'timetable',
        'phone',
        'time_offset'
      ];

  @override
  String toString() => '$value';
}

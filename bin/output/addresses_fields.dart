/// .
class AddressesFields {
  final String value;

  const AddressesFields._(this.value);

  factory AddressesFields(value) {
    if (!values.contains(value)) return null;

    return AddressesFields._(value);
  }

  static const AddressesFields id = AddressesFields._('id');

  static const AddressesFields title = AddressesFields._('title');

  static const AddressesFields address = AddressesFields._('address');

  static const AddressesFields additionalAddress = AddressesFields._('additional_address');

  static const AddressesFields countryId = AddressesFields._('country_id');

  static const AddressesFields cityId = AddressesFields._('city_id');

  static const AddressesFields metroStationId = AddressesFields._('metro_station_id');

  static const AddressesFields latitude = AddressesFields._('latitude');

  static const AddressesFields longitude = AddressesFields._('longitude');

  static const AddressesFields distance = AddressesFields._('distance');

  static const AddressesFields workInfoStatus = AddressesFields._('work_info_status');

  static const AddressesFields timetable = AddressesFields._('timetable');

  static const AddressesFields phone = AddressesFields._('phone');

  static const AddressesFields timeOffset = AddressesFields._('time_offset');

  static List get values => const ['id', 'title', 'address', 'additional_address', 'country_id', 'city_id', 'metro_station_id', 'latitude', 'longitude', 'distance', 'work_info_status', 'timetable', 'phone', 'time_offset'];

  @override
  String toString() => '$value';
}

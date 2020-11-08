import 'package:meta/meta.dart';

import 'vk_groups_address_timetable.dart';
import 'vk_groups_address_work_info_status.dart';

class VKGroupsAddress {
  /// Additional address to the place (6 floor, left door).
  final String additionalAddress;

  /// String address to the place (Nevsky, 28).
  final String address;

  /// City id of address.
  final int cityId;

  /// Country id of address.
  final int countryId;

  /// Distance from the point.
  final int distance;

  /// Address id.
  final int id;

  /// Address latitude.
  final double latitude;

  /// Address longitude.
  final double longitude;

  /// Metro id of address.
  final int metroStationId;

  /// Address phone.
  final String phone;

  /// Time offset int minutes from utc time.
  final int timeOffset;

  /// Week timetable for the address.
  final VKGroupsAddressTimetable timetable;

  /// Title of the place (Zinger, etc).
  final String title;

  /// Status of information about timetable.
  final VKGroupsAddressWorkInfoStatus workInfoStatus;

  const VKGroupsAddress({
    this.additionalAddress,
    this.address,
    this.cityId,
    this.countryId,
    this.distance,
    @required this.id,
    this.latitude,
    this.longitude,
    this.metroStationId,
    this.phone,
    this.timeOffset,
    this.timetable,
    this.title,
    this.workInfoStatus,
  })  : assert(cityId == null || cityId >= 0),
        assert(countryId == null || countryId >= 0),
        assert(metroStationId == null || metroStationId >= 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additional_address': additionalAddress,
      'address': address,
      'city_id': cityId,
      'country_id': countryId,
      'distance': distance,
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'metro_station_id': metroStationId,
      'phone': phone,
      'time_offset': timeOffset,
      'timetable': timetable?.toMap(),
      'title': title,
      'work_info_status': workInfoStatus?.value,
    }..removeWhere((_, dynamic value) => value == null);
  }

  factory VKGroupsAddress.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VKGroupsAddress(
      additionalAddress: map['additional_address'] as String,
      address: map['address'] as String,
      cityId: map['city_id'] as int,
      countryId: map['country_id'] as int,
      distance: map['distance'] as int,
      id: map['id'] as int,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      metroStationId: map['metro_station_id'] as int,
      phone: map['phone'] as String,
      timeOffset: map['time_offset'] as int,
      timetable: VKGroupsAddressTimetable.fromMap(map['timetable']),
      title: map['title'] as String,
      workInfoStatus: VKGroupsAddressWorkInfoStatus(map['work_info_status']),
    );
  }
}

class Geo {
  final String? latitude;
  final String? longitude;

  Geo({this.latitude, this.longitude});

  Geo.fromMap(Map<String, dynamic> map)
      : latitude = map['lat'],
        longitude = map['lng'];
}

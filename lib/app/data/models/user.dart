import 'address.dart';
import 'company.dart';
import 'geo.dart';

class User {
  final int? id;

  final String? name;
  final String? userName;
  final String? email;
  final String? phone;
  final String? website;
   final Address? address;
  // final Geo? geo;
  // final Company? company;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.userName,
    this.website,
     this.address,
    // this.geo,
    // this.company,
  });

  User.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        email = map['email'],
        phone = map['phone'],
        userName = map['username'],
        website = map['website'],
         address = Address.fromMap(map['address']);
        // geo = Geo.fromMap(map['geo']),
        // company = Company.from(map['company']);
}

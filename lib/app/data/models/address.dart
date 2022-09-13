class Address {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipCode;

  Address({
    this.city,
    this.street,
    this.suite,
    this.zipCode,
  });

  Address.fromMap(Map<String, dynamic> map)
      : city = map['city'],
        street = map['street'],
        suite = map['suite'],
        zipCode = map['zipcode'];
}

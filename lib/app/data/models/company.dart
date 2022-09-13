class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Company({
    this.name,
    this.bs,
    this.catchPhrase,
  });

  Company.from(Map<String, dynamic> map)
      : name = map['name'],
        catchPhrase = map['catchPhrase'],
        bs = map['bs'];
}

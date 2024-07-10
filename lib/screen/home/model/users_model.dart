class UsersModel {
  int? id;
  String? name, username, email, phone, website;
  Address? address;
  Company? company;

  UsersModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.website,
        this.geo,
      this.address,
      this.company});

  factory UsersModel.mapToModel(Map m1) {
    return UsersModel(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        phone: m1['phone'],
        website: m1['website'],
        address: Address.mapToModel(m1['address']),
        company: Company.mapToModel(m1['company']));
  }
}

class Address {
  String? street, suite, city, zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.mapToModel(Map m1) {
    return Address(
        street: m1['street'],
        suite: m1['suite'],
        city: m1['city'],
        zipcode: m1['zipcode'],
        geo: Geo.mapToModel(m1['geo']));
  }
}

class Geo {
  String? lat, lng;

  Geo({this.lat, this.lng});

  factory Geo.mapToModel(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  String? name, catchPhrase, bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.mapToModel(Map m1) {
    return Company(
        name: m1['name'], catchPhrase: m1['catchPhrase'], bs: m1['bs']);
  }
}

// class Company()
// {
//
// }

class SafeLocation {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final String type; // police, hospital, shelter, etc.
  final String? phoneNumber;
  final String? address;
  final double? rating;

  SafeLocation({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.type,
    this.phoneNumber,
    this.address,
    this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'type': type,
      'phoneNumber': phoneNumber,
      'address': address,
      'rating': rating,
    };
  }

  factory SafeLocation.fromMap(Map<String, dynamic> map) {
    return SafeLocation(
      id: map['id'],
      name: map['name'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      type: map['type'],
      phoneNumber: map['phoneNumber'],
      address: map['address'],
      rating: map['rating'],
    );
  }
}

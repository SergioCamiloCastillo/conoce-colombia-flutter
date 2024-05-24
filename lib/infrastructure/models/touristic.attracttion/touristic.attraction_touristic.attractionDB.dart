

import 'package:conoce_colombia/infrastructure/models/touristic.attracttion/city_touristic.attractionDB.dart';

class TouristicAttractionFromTouristicAttractionDB {
  final int id;
  final String name;
  final String description;
  final List<String> images;
  final String latitude;
  final String longitude;
  final int cityId;
  final City city;

  TouristicAttractionFromTouristicAttractionDB({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.latitude,
    required this.longitude,
    required this.cityId,
    required this.city,
  });

  factory TouristicAttractionFromTouristicAttractionDB.fromJson(Map<String, dynamic> json) =>
      TouristicAttractionFromTouristicAttractionDB(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        images: List<String>.from(json["images"].map((x) => x)),
        latitude: json["latitude"],
        longitude: json["longitude"],
        cityId: json["cityId"],
        city: City.fromJson(json["city"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "images":
            images.isEmpty ? null : List<dynamic>.from(images.map((x) => x)),
        "latitude": latitude,
        "longitude": longitude,
        "cityId": cityId,
        "city": city.toJson(),
      };
}

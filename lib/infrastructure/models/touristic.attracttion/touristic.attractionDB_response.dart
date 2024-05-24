import 'package:conoce_colombia/infrastructure/models/touristic.attracttion/touristic.attraction_touristic.attractionDB.dart';

class TouristicAttractionDbResponse {
  final List<TouristicAttractionFromTouristicAttractionDB> results;

  TouristicAttractionDbResponse({
    required this.results,
  });

  factory TouristicAttractionDbResponse.fromJson(Map<String, dynamic> json) =>
      TouristicAttractionDbResponse(
        results: List<TouristicAttractionFromTouristicAttractionDB>.from(
            json["results"].map((x) =>
                TouristicAttractionFromTouristicAttractionDB.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

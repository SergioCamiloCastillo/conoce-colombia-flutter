import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';
import 'package:conoce_colombia/infrastructure/models/touristic.attracttion/touristic.attraction_touristic.attractionDB.dart';

class TouristicAttractionMapper {
  static TouristicAttractionEntity touristicAttractionDBToEntity(
          TouristicAttractionFromTouristicAttractionDB touristicAttractionDb) =>
      TouristicAttractionEntity(
        id: touristicAttractionDb.id,
        name: touristicAttractionDb.name,
        description: touristicAttractionDb.description,
        images: touristicAttractionDb.images,
        city: touristicAttractionDb.city.name,
      );
}

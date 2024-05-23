import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';

abstract class TouristicAttractionRepository {
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions();
  Future<TouristicAttractionEntity> getTouristicAttractionById({int id});
}

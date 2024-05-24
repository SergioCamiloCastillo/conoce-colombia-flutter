import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';

abstract class TouristicAttractionsRepository {
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions();
  Future<TouristicAttractionEntity> getTouristicAttractionById({required int id});
}

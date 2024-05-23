import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';

abstract class TouristicAttractionDataSource {
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions();
  Future<TouristicAttractionEntity> getTouristicAttractionById({required int id});
}

import 'package:conoce_colombia/domain/datasources/touristic.attraction_datasource.dart';
import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';
import 'package:conoce_colombia/domain/repositories/touristic.attraction_repository.dart';

class TouristicAttractionRepositoryImpl extends TouristicAttractionsRepository {
  final TouristicAttractionDataSource datasource;
  TouristicAttractionRepositoryImpl(this.datasource);

  @override
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions() {
    return datasource.getListTouristicAttractions();
  }

  @override
  Future<TouristicAttractionEntity> getTouristicAttractionById(
      {required int id}) {
    return datasource.getTouristicAttractionById(id: id);
  }
}

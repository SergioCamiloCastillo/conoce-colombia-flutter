import 'package:conoce_colombia/domain/datasources/touristic.attraction_datasource.dart';
import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';
import 'package:conoce_colombia/infrastructure/mappers/touristic.attraction_mapper.dart';
import 'package:conoce_colombia/infrastructure/models/touristic.attracttion/touristic.attractionDB_response.dart';
import 'package:dio/dio.dart';

class TouristicAttractionDBDatasourceImpl
    extends TouristicAttractionDataSource {
  final dio = Dio(BaseOptions(baseUrl: "https://api-colombia.com/api/v1"));
  @override
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions() async {
    final response = await dio.get("/TouristicAttraction");
    final touristicAttractionDBResponse =
        TouristicAttractionDbResponse.fromJson(response.data);
    final List<TouristicAttractionEntity> touristicAttractions =
        touristicAttractionDBResponse.results
            .map((item) =>
                TouristicAttractionMapper.touristicAttractionDBToEntity(item))
            .toList();

    return touristicAttractions;
  }

  @override
  Future<TouristicAttractionEntity> getTouristicAttractionById(
      {required int id}) {
    // TODO: implement getTouristicAttractionById
    throw UnimplementedError();
  }
}

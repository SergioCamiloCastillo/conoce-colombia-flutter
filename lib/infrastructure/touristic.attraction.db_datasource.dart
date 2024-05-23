import 'package:conoce_colombia/domain/datasources/touristic.attraction_datasource.dart';
import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';
import 'package:dio/dio.dart';

class TouristicAttractionDBDatasource extends TouristicAttractionDataSource {
  final dio = Dio(BaseOptions(baseUrl: "https://api-colombia.com/api/v1"));
  @override
  Future<List<TouristicAttractionEntity>> getListTouristicAttractions() async {
    final responde = await dio.get("/TouristicAttraction");
    final List<TouristicAttractionEntity> touristicAttractionList = [];
    return touristicAttractionList;
  }

  @override
  Future<TouristicAttractionEntity> getTouristicAttractionById(
      {required int id}) {
    // TODO: implement getTouristicAttractionById
    throw UnimplementedError();
  }
}

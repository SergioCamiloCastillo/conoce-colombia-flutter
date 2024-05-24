import 'package:conoce_colombia/domain/datasources/touristic.attraction_datasource.dart';
import 'package:conoce_colombia/infrastructure/datasources/touristic.attraction.db_datasource_impl.dart';
import 'package:conoce_colombia/infrastructure/repositories/touristic.attraction_repository.impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final touristicAttractionRepositoryProvider = Provider((ref) {
  return TouristicAttractionRepositoryImpl(
      TouristicAttractionDBDatasourceImpl());
});

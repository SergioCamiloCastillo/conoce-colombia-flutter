import 'package:conoce_colombia/domain/entities/touristic.attraction_entity.dart';
import 'package:conoce_colombia/infrastructure/datasources/touristic.attraction.db_datasource_impl.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    TouristicAttractionDBDatasourceImpl().getListTouristicAttractions();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Placeholder(),
    );
  }
}

class TouristicAttractionEntity {
  final int id;
  final String name;
  final String description;
  final String city;
  final List<String> images;
  TouristicAttractionEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.city,
      this.images = const []});
}

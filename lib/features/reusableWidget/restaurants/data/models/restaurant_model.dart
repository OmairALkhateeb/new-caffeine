class Restaurant {
  final String name;
  final String description;
  final String image;
  bool isFavorite;

  Restaurant(
      {required this.name, required this.description, required this.image,this.isFavorite = false});
}

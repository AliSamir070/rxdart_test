// Categories: Cow, Sheep, Goat
class CategoryModel {
  String name;
  int collectionId;
  bool isSelected; // category is false unless the user chooses it
  String selectedImage;
  String unSelectedImage;

  CategoryModel(
      {required this.name,
        required this.collectionId,
      required this.selectedImage,
      required this.unSelectedImage,
      this.isSelected = false});
}

class TypeModel {
  String name;
  bool isSelected;

  TypeModel({
    required this.name,
    this.isSelected = false, // type is not selected by default unless the user clicks on it
  });
}

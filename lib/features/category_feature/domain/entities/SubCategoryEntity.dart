class SubCategoryEntity {
  SubCategoryEntity({
    this.data,
  });

  List<SubCategoryData>? data;
}

class SubCategoryData {
  SubCategoryData({
    this.id,
    this.name,
  });

  String? id;
  String? name;
}

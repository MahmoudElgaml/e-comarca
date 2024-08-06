class SubCategoryEntity {
  SubCategoryEntity({
    this.data,
  });

  List<SubCategoryData>? data;
}

class SubCategoryData {
  SubCategoryData({
    this.id,
    this.title,
    this.imageCover
  });

  String? id;
  String? title;
  String? imageCover;
}

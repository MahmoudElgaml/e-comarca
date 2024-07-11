class Category2Entity {
  Category2Entity({
    this.data,
  });

  Category2Entity.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(CategoryData2.fromJson(v));
      });
    }
  }

  List<CategoryData2>? data;
}

class CategoryData2 {
  CategoryData2({
    this.name,
  });

  CategoryData2.fromJson(dynamic json) {
    name = json['name'];
  }

  String? name;
}

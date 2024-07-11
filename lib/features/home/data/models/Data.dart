import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';

class Data extends CategoryData{
  Data({
    super.id,
    super.name,
    super.image,
    this.slug,
    this.createdAt,
    this.updatedAt,
  });

  @override
  Data.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? slug;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['image'] = image;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}

class BrandEntity {
  BrandEntity({
    this.results,
    this.data,
  });

  BrandEntity.fromJson(dynamic json) {
    results = json['results'];

    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(BrandDataEntity.fromJson(v));
      });
    }
  }

  num? results;

  List<BrandDataEntity>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['results'] = results;

    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class BrandDataEntity {
  BrandDataEntity({
    this.id,
    this.name,
    this.image,
  });

  BrandDataEntity.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];

    image = json['image'];
  }

  String? id;
  String? name;

  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;

    map['image'] = image;

    return map;
  }
}

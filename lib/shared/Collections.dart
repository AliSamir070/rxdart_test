/// count : 2
/// next : null
/// previous : null
/// results : [{"id":1,"name":"cow","products_count":1},{"id":2,"name":"sheep","products_count":0}]

class Collections {
  Collections({
      this.count, 
      this.next, 
      this.previous, 
      this.results,});

  Collections.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Collection.fromJson(v));
      });
    }
  }
  int? count;
  dynamic next;
  dynamic previous;
  List<Collection>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }

    return map;
  }

}

/// id : 1
/// name : "cow"
/// products_count : 1

class Collection {
  Collection({
      this.id, 
      this.name, 
      this.productsCount,
      this.image,
      this.image_after});

  Collection.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    productsCount = json['products_count'];
    image = json['image_before'];
    image_after = json['image_after'];
  }
  int? id;
  String? name;
  int? productsCount;
  String? image;
  String? image_after;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['products_count'] = productsCount;
    map['image_before'] = image;
    map['image_after'] = image_after;
    return map;
  }

}
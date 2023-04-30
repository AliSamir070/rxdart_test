/// count : 1
/// next : null
/// previous : null
/// results : [{"id":1,"product_name":"خروف ضاني","slug":"khrof-dny","products_code":"1234","quantity":4,"unit_price":"200.00","max_price":"500.00","collection":4,"description":"خروف ضاني قابل للذبح","order":1,"delivery_time":"12","packaging_details":"2","supply_appility":"c","shelf_life":"c","address":"usa","style":"s","packaging":null,"part":null,"storage_type":null,"instruction_for_use":null,"place_of_origin":null,"image":null,"is_alive":false}]

class ProductList {
  ProductList({
      this.count, 
      this.next, 
      this.previous, 
      this.results,});

  ProductList.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(MeatShopProduct.fromJson(v));
      });
    }
  }
  int? count;
  String? next;
  dynamic previous;
  List<MeatShopProduct>? results;

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
/// product_name : "خروف ضاني"
/// slug : "khrof-dny"
/// products_code : "1234"
/// quantity : 4
/// unit_price : "200.00"
/// max_price : "500.00"
/// collection : 4
/// description : "خروف ضاني قابل للذبح"
/// order : 1
/// delivery_time : "12"
/// packaging_details : "2"
/// supply_appility : "c"
/// shelf_life : "c"
/// address : "usa"
/// style : "s"
/// packaging : null
/// part : null
/// storage_type : null
/// instruction_for_use : null
/// place_of_origin : null
/// image : null
/// is_alive : false

class MeatShopProduct {
  MeatShopProduct({
      this.id, 
      this.productName, 
      this.slug, 
      this.productsCode, 
      this.quantity, 
      this.unitPrice, 
      this.deposite,
      this.collection, 
      this.description, 
      this.order, 
      this.deliveryTime, 
      this.packagingDetails, 
      this.supplyAppility, 
      this.shelfLife, 
      this.address, 
      this.style, 
      this.packaging, 
      this.part, 
      this.storageType, 
      this.instructionForUse, 
      this.placeOfOrigin, 
      this.image, 
      this.isAlive,
      this.deliveryFees});

  MeatShopProduct.fromJson(dynamic json) {
    id = json['id'];
    productName = json['product_name'];
    slug = json['slug'];
    productsCode = json['products_code'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    deposite = json['deposite'];
    collection = json['collection'];
    description = json['description'];
    order = json['order'];
    deliveryTime = json['delivery_time'];
    packagingDetails = json['packaging_details'];
    supplyAppility = json['supply_appility'];
    shelfLife = json['shelf_life'];
    address = json['address'];
    style = json['style'];
    packaging = json['packaging'];
    part = json['part'];
    storageType = json['storage_type'];
    instructionForUse = json['instruction_for_use'];
    placeOfOrigin = json['place_of_origin'];
    image = json['image'];
    isAlive = json['is_alive'];
    deliveryFees = json['delivery_fees'];
  }
  int? id;
  String? productName;
  String? slug;
  String? productsCode;
  int? quantity;
  double? unitPrice;
  double? deposite;
  int? collection;
  String? description;
  int? order;
  String? deliveryTime;
  String? deliveryFees;
  String? packagingDetails;
  String? supplyAppility;
  String? shelfLife;
  String? address;
  String? style;
  dynamic packaging;
  dynamic part;
  dynamic storageType;
  dynamic instructionForUse;
  dynamic placeOfOrigin;
  dynamic image;
  bool? isAlive;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['product_name'] = productName;
    map['slug'] = slug;
    map['products_code'] = productsCode;
    map['quantity'] = quantity;
    map['unit_price'] = unitPrice;
    map['deposite'] = deposite;
    map['collection'] = collection;
    map['description'] = description;
    map['order'] = order;
    map['delivery_time'] = deliveryTime;
    map['packaging_details'] = packagingDetails;
    map['supply_appility'] = supplyAppility;
    map['shelf_life'] = shelfLife;
    map['address'] = address;
    map['style'] = style;
    map['packaging'] = packaging;
    map['part'] = part;
    map['storage_type'] = storageType;
    map['instruction_for_use'] = instructionForUse;
    map['place_of_origin'] = placeOfOrigin;
    map['image'] = image;
    map['is_alive'] = isAlive;
    map['delivery_fees'] = deliveryFees;
    return map;
  }

}
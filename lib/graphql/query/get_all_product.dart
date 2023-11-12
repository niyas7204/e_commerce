class GetAllProductQuery {
  final String venderId;
  GetAllProductQuery(this.venderId);
  String get getAllPorductQuery {
    return '''query MyQuery {
  products(where: {vender_id: {_eq: "$venderId"}}) {
    categories
    price
    product_code
    product_description
    product_id
    product_image
    product_name
  }
}
''';
  }
}

class GetProductByCatogeryQuery {
  final String venderId;
  final String catergory;
  GetProductByCatogeryQuery(this.venderId, this.catergory);
  String get getAllPorductQuery {
    return '''query MyQuery {
  products(where: {vender_id: {_eq: "$venderId"}, _and: {categories: {_eq: "$catergory"}}}) {
    categories
    price
    product_code
    product_description
    product_id
    product_image
    product_name
    vender_id
  }
}
''';
  }
}

class GetAllCategories {
  final String query;
  GetAllCategories(this.query);
  String get getAllcategoriesQuery {
    return ''' query MyQuery {
  products(where: {categories: {_regex: "$query"}}) {
    categories
  }
}''';
  }
}

import 'package:e_commerce/data/models/product_model.dart';

class UploadProducQuery {
  final Product product;
  final String userId;
  UploadProducQuery(this.product, this.userId);
  String get uploadProductMutation {
    return '''mutation MyMutation {
  insert_products(objects: {categories: "${product.categories}", price: ${product.price}, product_code: "${product.productCode}",
   product_description: "${product.productDescription}", product_id: "${product.productId}", vender_id: "$userId", product_name: "${product.productName}", product_image: "${product.productImage}"}) {
    affected_rows
  }
}

 ''';
  }
}

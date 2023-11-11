import 'package:e_commerce/data/models/product_model.dart';

class UploadProducQuery {
  final Product product;
  UploadProducQuery(this.product);
  String get uploadProductMutation {
    return '''mutation MyMutation {
  insert_products(objects: {product_id: "${product.productId}", product_code: "${product.productCode}", product_name: "${product.productName}", categories: "${product.categories}", product_description: "${product.productDescription}", product_image: ${product.productImage}"", vender_id: "${product.productImage}"}) {
    affected_rows
  }
}
 ''';
  }
}

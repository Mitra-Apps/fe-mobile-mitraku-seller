import 'package:rest_client/rest_client.dart';

abstract class ProductRepository {
  Future getProductCategory();
  Future getProductType(String idProductCategory);
  Future getUom();
  Future createProduct(ProductPostRequest productPostRequest);
  Future getProductList(String storeId);
}

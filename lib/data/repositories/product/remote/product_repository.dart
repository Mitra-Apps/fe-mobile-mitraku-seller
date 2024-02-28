abstract class ProductRepository {
  Future getProductCategory();
  Future getProductType(String idProductCategory);
  Future getUom();
}

import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/api_config.dart';
import 'package:madura_chandima_flutter_interview/models/Products_types_model.dart';
import 'package:madura_chandima_flutter_interview/models/product_details.dart';
import 'package:madura_chandima_flutter_interview/services/network_service.dart';

class Homecontroller extends GetxController {
  var items = [].obs;
  var selectesIndex = 0.obs;
  var navbarselectedindex = 0.obs;
  var produtDetails = ProductDetailsModel().obs;
  @override
  void onInit() {
    () async {
      items.value = await getProducts();
    }();
    super.onInit();
  }

  Future getProducts() async {
    try {
      var response =
          await NetworkService().getRequest(ApiConfig().GET_PRODUCTS);
      if (response.statusCode == 200) {
        List<ProductTypesModel>? _temTypesModel =
            productTypesModelFromJson(response.body);

        return _temTypesModel;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  getProductDetails() async {
    try {
      var response =
          await NetworkService().getRequest(ApiConfig().GET_PRODUCT_DETAILS);
      if (response.statusCode == 200) {
        produtDetails.value = productDetailsFromJson(response.body);
      } else {
        //show error
      }
    } catch (e) {
      ;
    }
  }
}

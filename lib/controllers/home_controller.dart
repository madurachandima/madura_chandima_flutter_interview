import 'package:get/get.dart';
import 'package:madura_chandima_flutter_interview/configs/api_config.dart';
import 'package:madura_chandima_flutter_interview/models/Item_types_model.dart';
import 'package:madura_chandima_flutter_interview/services/network_service.dart';

class Homecontroller extends GetxController {
  var items = [].obs;
  var selectesIndex = 0.obs;
  var navbarselectedindex = 0.obs;
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
        List<ItemTypesModel>? _temTypesModel =
            itemTypesModelFromJson(response.body);

        return _temTypesModel;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}

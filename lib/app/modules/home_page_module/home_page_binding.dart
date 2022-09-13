import 'package:ecommerce/app/modules/home_page_module/home_page_controller.dart';
import 'package:get/get.dart';

class HomePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomePageController());
  }

}
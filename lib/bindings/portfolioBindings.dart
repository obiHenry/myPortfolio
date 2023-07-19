import 'package:get/get.dart';
import 'package:henryportfolio/controller/portfolioController.dart';

class PortfolioBindings implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => PortfolioController());
  }
}

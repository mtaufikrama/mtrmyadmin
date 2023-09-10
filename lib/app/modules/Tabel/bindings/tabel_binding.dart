import 'package:get/get.dart';

import '../controllers/tabel_controller.dart';

class TabelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabelController>(
      () => TabelController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/design_tabel_controller.dart';

class DesignTabelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DesignTabelController>(
      () => DesignTabelController(),
    );
  }
}

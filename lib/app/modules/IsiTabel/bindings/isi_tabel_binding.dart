import 'package:get/get.dart';

import '../controllers/isi_tabel_controller.dart';

class IsiTabelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IsiTabelController>(
      () => IsiTabelController(),
    );
  }
}

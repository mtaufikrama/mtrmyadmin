import 'package:get/get.dart';

import '../modules/DesignTabel/bindings/design_tabel_binding.dart';
import '../modules/DesignTabel/views/design_tabel_view.dart';
import '../modules/IsiTabel/bindings/isi_tabel_binding.dart';
import '../modules/IsiTabel/views/isi_tabel_view.dart';
import '../modules/Tabel/bindings/tabel_binding.dart';
import '../modules/Tabel/views/tabel_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TABEL,
      page: () => const TabelView(),
      binding: TabelBinding(),
    ),
    GetPage(
      name: _Paths.ISI_TABEL,
      page: () => const IsiTabelView(),
      binding: IsiTabelBinding(),
    ),
    GetPage(
      name: _Paths.DESIGN_TABEL,
      page: () => const DesignTabelView(),
      binding: DesignTabelBinding(),
    ),
  ];
}

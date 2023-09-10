import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/isi_tabel_controller.dart';

class IsiTabelView extends GetView<IsiTabelController> {
  const IsiTabelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IsiTabelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IsiTabelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

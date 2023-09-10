import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/design_tabel_controller.dart';

class DesignTabelView extends GetView<DesignTabelController> {
  const DesignTabelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DesignTabelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DesignTabelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

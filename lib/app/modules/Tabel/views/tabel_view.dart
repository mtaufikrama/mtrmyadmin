import 'package:backend/app/data/fetch_data.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabel_controller.dart';

class TabelView extends GetView<TabelController> {
  const TabelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabelView'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: API.showTable(dbname: controller.db),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState != ConnectionState.waiting &&
              snapshot.data != null) {
            final datas = snapshot.data!;
            return ListView.builder(
              itemCount: datas['items'].length,
              itemBuilder: (context, index) {
                final data = datas['items'][index];
                return Text(data);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

import 'package:backend/app/data/fetch_data.dart';
import 'package:backend/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: API.showDatabase(),
        builder: (context, snapshot) {
          if (snapshot.hasData &&
              snapshot.connectionState != ConnectionState.waiting &&
              snapshot.data != null) {
            final data = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: (data['items']! as List<dynamic>)
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            Routes.TABEL,
                            parameters: {
                              'db': e.toString(),
                            },
                          );
                        },
                        child: Text(
                          e.toString(),
                        ),
                      ),
                    )
                    .toList(),
              ),
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

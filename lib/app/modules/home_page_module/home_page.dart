import 'package:ecommerce/app/modules/home_page_module/home_page_controller.dart';
import 'package:ecommerce/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/dialogs.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _willPop,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Users",
          ),

        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            child: controller.obx(
              (state) => ListView.builder(
                itemCount: state?.length,
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () =>
                      controller.navigateToBlogPost(id: state![index].id!),
                  child: CustomCard(
                    id: state![index].id.toString(),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state[index].name ?? " ",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                state[index].email ?? " ",
                                style: const TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                state[index].phone ?? " ",
                                style: const TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                "${state[index].address!.suite!}, ${state[index].address!.street!}, ${state[index].address!.city!} ",
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                state[index].address!.zipCode ?? " ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Get.theme.primaryColorDark
                                      .withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () => controller.navigateToTodoPage(
                                id: state[index].id!),
                            child: const Text("Todo"))
                      ],
                    ),
                  ),
                ),
              ),
              onError: (error) => onError(
                error: error,
                onPressed: controller.getUsers,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _willPop() async {
    bool pop = false;
    await Get.defaultDialog(
        title: "Do you want to leave?",
        middleText: '',
        actions: [
          ElevatedButton(
              onPressed: () async {
                Get.back();
                pop = true;
              },
              child: const Text("Yes")),
          ElevatedButton(
              onPressed: () async {
                Get.back();
                pop = false;
              },
              child: const Text("No")),
        ]);
    print(pop);
    return await Future.value(pop);
  }
}

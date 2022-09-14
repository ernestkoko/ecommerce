import 'package:ecommerce/app/modules/todo_module/todo_page_controller.dart';
import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:ecommerce/app/widgets/card.dart';
import 'package:ecommerce/app/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoPage extends GetView<TodoPageController> {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Todos"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: SafeArea(
          child: controller.obx(
            (state) => ListView.builder(
              itemCount: state!.length,
              itemBuilder: (BuildContext ctx, int index) => CustomCard(
                id: state[index].id.toString(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state[index].userId}",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Get.theme.primaryColorDark),
                    ),
                    Text(
                      "${state[index].title}",
                      style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Completed: ${state[index].completed}",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Get.theme.primaryColorDark.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
            ),
            onError: (error) => onError(
              error: error,
              onPressed: controller.getTodo,
            ),
          ),
        ),
      ),
    );
  }
}

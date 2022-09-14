import 'package:ecommerce/app/modules/create_post_module/widgets/text_field.dart';
import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './create_post_page_controller.dart';

class CreatePostPage extends GetView<CreatePostPageController> {
  const CreatePostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: Obx(() =>
              Text(controller.create.value ? "Create Post" : "Edit Post"))),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTextField(
                hintText: "Title",
                onChanged: (text) => controller.onTitleChanged(text),
                controller: controller.titleController,
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 4),
              CustomTextField(
                hintText: "Body",
                controller: controller.bodyController,
                onChanged: (text) => controller.onBodyChanged(text),
              ),
              const SizedBox(height: 20),
              Obx(
                () => ElevatedButton(
                    onPressed: controller.loading.value
                        ? () {}
                        : controller.createPost,
                    child: controller.loading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(controller.create.value ? "Create" : "Edit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

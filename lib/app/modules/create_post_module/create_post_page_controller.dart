import 'package:ecommerce/app/modules/create_post_module/create_post_page_provider.dart';
import 'package:ecommerce/app/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/post.dart';

enum FormState { create, edit }

class CreatePostPageController extends GetxController {
  final loading = false.obs;
  final title = ''.obs;
  final body = ''.obs;
  Rx<bool> create = false.obs;
  final post = Post().obs;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final formState = FormState.create.obs;

  @override
  onInit() {
    super.onInit();

    _setFieldsForEdit();
  }

  _setFieldsForEdit() {
    final arg = Get.arguments as Map<String, dynamic>;

    create.value = arg['create']!;

    if (!create.value) {
      post.value = arg['post']!;
      formState.value = FormState.edit;
      bodyController.text = post.value.body!;
      body.value = post.value.body!;
      titleController.text = post.value.title!;
      title.value = post.value.title!;
    } else {
      formState.value = FormState.create;
    }
  }



  onTitleChanged(String text) => title.value = text;

  onBodyChanged(String text) =>
      body.value = text;


  bool canSubmit() {
    if (title.isEmpty || body.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  void createPost() async {
    if (!canSubmit()) {
      errorNotificationDialog(middleText: "The form must be filled!");
      return;
    } else {
      loading.value = true;

      try {
        if (formState.value == FormState.create) {
          //create post

          await CreatePostPageProvider.createPost(
              title: title.value, body: body.value);
          notificationDialog(
              title: "Create",
              middleText: "Post created successfully",
              popPage: true);
        } else {
          //edit post


          await CreatePostPageProvider.editPost(
              id: post.value.id ?? -1, body: body.value, title: title.value);
          notificationDialog(
              title: "Update",
              middleText: "Post updated successfully",
              popPage: true);
        }
      } catch (error) {
        errorNotificationDialog(middleText: error.toString());
      } finally {
        loading.value = false;
      }
    }
  }
}

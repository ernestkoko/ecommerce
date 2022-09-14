import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'post_details_page_controller.dart';

class PostDetailsPage extends GetView<PostDetailsPageController> {
  const PostDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text("Post Details"),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 0),
              child: ElevatedButton(
                onPressed: controller.navigateToPostCommentsPage,
                child: Text(
                  "comments",
                  style: TextStyle(color: Get.theme.textTheme.headline1!.color),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 10),
          child: controller.obx(
            (state) => Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                          color: Get.theme.primaryColor.withOpacity(0.5)))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${state!.id} "),
                  Text("${state.userId} "),
                  Text(
                    "${state.title} ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Get.theme.primaryColorDark),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Body",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "${state.body} ",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

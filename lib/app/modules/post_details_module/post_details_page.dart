import 'package:ecommerce/app/modules/post_details_module/post_details_page_controller.dart';
import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostDetailsPage extends GetView<PostDetailsPageController> {
  const PostDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Post Details",
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

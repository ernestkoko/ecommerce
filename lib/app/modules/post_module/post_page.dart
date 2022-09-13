import 'package:ecommerce/app/modules/post_module/post_page_controller.dart';
import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:ecommerce/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPage extends GetView<PostPageController> {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Posts",
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: controller.obx((state) => ListView.builder(
                  itemCount: state!.length,
                  itemBuilder: (ctx, int index) => GestureDetector(
                    onTap: () => controller.navigateToPostDetailsPage(id: state[index].id!),
                    child: CustomCard(
                      id: state[index].id.toString(),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${state[index].title} ",
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  "${state[index].body} ",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Get.theme.primaryColor,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  "${state[index].userId} ",
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert_outlined,

                              ))
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

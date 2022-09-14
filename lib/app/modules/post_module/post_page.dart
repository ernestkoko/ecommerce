import 'package:ecommerce/app/modules/post_module/post_page_controller.dart';
import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:ecommerce/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../widgets/dialogs.dart';

class PostPage extends GetView<PostPageController> {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text("Posts"),
          actions: [
            IconButton(
              onPressed: controller.navigateToCreatePostPage,
              icon: const Icon(
                Icons.create_outlined,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: controller.obx(
              (state) => ListView.builder(
                itemCount: state!.length,
                itemBuilder: (ctx, int index) => GestureDetector(
                  onTap: () => controller.navigateToPostDetailsPage(
                      id: state[index].id!),
                  child: CustomCard(
                    id: state[index].id.toString(),
                    loading: state[index].loading,
                    child: Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (ctx) =>
                                controller.deletePost(id: state[index].id!),
                            backgroundColor: Get.theme.errorColor,
                            borderRadius: BorderRadius.circular(10),
                            icon: Icons.delete,
                          )
                        ],
                      ),
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
                          ElevatedButton(
                              onPressed: () => controller.navigateToEditPost(
                                  id: state[index].id!),
                              child: const Text("Edit"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onError: (error) => onError(
                error: error,
                onPressed: controller.getPosts,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.title, this.actions}) : super(key: key);

  final List<Widget>? actions;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      actions: actions,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.id, this.child, this.loading = false})
      : super(key: key);
  final String? id;
  final Widget? child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                  shape: CircleBorder(
                      side:
                          BorderSide(color: Get.theme.primaryColor, width: 2))),
              child: !loading
                  ? Text(id ?? "")
                  :const  SizedBox(
                height: 10,
                    width: 10,
                    child:  CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                  ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: child ?? const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

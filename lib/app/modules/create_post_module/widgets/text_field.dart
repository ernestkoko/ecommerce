import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, this.hintText, this.onChanged, this.controller})
      : super(key: key);

  final String? hintText;
  final  Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          padding:const  EdgeInsets.symmetric(vertical: 2, horizontal: 15),
            decoration: ShapeDecoration(
                color: Get.theme.primaryColor.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3))),
            child: Text(hintText ?? "", style:const  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500),)),
        TextField(
          onChanged: onChanged,
          controller: controller,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            isDense: true,
            focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 2,
                color: Get.theme.primaryColor.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 2,
                color: Get.theme.primaryColor.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:route_flutter_task/utils/MyTheme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TextField(
        cursorColor: MyTheme.primaryColor,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8),
            hintText: "What do you search for?",
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: MyTheme.greyColor),
            prefixIcon: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: MyTheme.primaryColor,
              ),
              onPressed: () {},
            ),
            enabledBorder: buildBaseBorder(),
            focusedBorder: buildBaseBorder().copyWith(
                borderSide:
                    const BorderSide(color:MyTheme.primaryColor, width: 2))),
      ),
    );
  }

  OutlineInputBorder buildBaseBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: MyTheme.primaryColor, width: 1),
    );
  }
}

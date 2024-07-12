import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:route_flutter_task/utils/MyTheme.dart';

import 'custom_text_field.dart';


class CustomSearchWithShoppingCart extends StatelessWidget {
  const CustomSearchWithShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04,right:MediaQuery.of(context).size.width*0.04 ),
            child: CustomTextField(),
          ),
        ),

        InkWell(
          onTap: () {},
          child: ImageIcon(
            AssetImage('assets/icons/shopping_cart.png'),
            size: 30,
            color: MyTheme.primaryColor,
          ),
        )
        ,SizedBox(width:MediaQuery.of(context).size.width*0.04 ,)
      ],
    );
  }
}

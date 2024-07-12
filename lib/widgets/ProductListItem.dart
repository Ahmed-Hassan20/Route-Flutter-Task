import 'package:flutter/material.dart';
import 'package:route_flutter_task/utils/MyTheme.dart';

class ProductItemWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String oldPrice;
  final String rating;

  ProductItemWidget({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: MyTheme.greyColor,
      elevation: 1,
      color: MyTheme.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.topRight,
            children: [
              Image.network(
                imageUrl,
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Image.asset('assets/icons/favourite_not_selected.png')
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: MyTheme.blueColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4.0),
                Text(
                  description,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: MyTheme.blueColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        price,
                        style: TextStyle(
                            color: MyTheme.blueColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      oldPrice,
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 11),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Review ${(rating)} ',
                      style: TextStyle(
                          color: MyTheme.blueColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

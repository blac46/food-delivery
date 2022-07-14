import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {return Icon(Icons.star,color: Colors.cyanAccent,size: 15,);}),
            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "1287"),
            SizedBox(width: 10,),
            SmallText(text: "Comments")
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidgets(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: Colors.amberAccent
            ),

            IconAndTextWidgets(
                icon: Icons.location_on,
                text: '3.7km',
                iconColor: Colors.cyanAccent
            ),

            IconAndTextWidgets(
                icon: Icons.access_alarm_rounded,
                text: '32mins',
                iconColor: Colors.redAccent
            )
          ],
        ),
      ],
    );
  }
}

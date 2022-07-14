import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/app_icon.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/exandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_rounded)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText( size:Dimensions.font26,text: "Chinese Side",)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                ),
              )
            ),
            pinned: true,
            backgroundColor: Colors.brown,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/img_2.png",
                width: double.maxFinite,
                fit: BoxFit.cover,

              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin:EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                  child: ExpandableTextWidget(text: "Chinese side food is the best food among the rest and it has the best taste ever in around the world and the stuff in it is tthe greatest of all time and people love it show much concern about it .That is impressive reall migical so very much in liove which iof plebthd,is very and the are very much of the food items illatreated over there .Many this Im the dumber guy around mostly to see me as on of the goo "
                      "good people around and is very dishearten but we leave to tell a story some time to come .It hurt when they treat u to be no body. I mostly fell embrassed when it happends like that we for the good  not the bad.Onions ansd fresh meat .Real souce food nic taset all arond the the country and most people love it is very essential around most place but it helps arot chale there are goods thos the people praise it always around the are maviously things are arond ghana as country very magical bro it may lead to the sucess of a man bro.and highly respected  ",),
                )
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:Colors.cyanAccent,
                    icon: Icons.remove),
                BigText(text: "\$12.88 "+" X "+" 0 ",size: Dimensions.font26,),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor:Colors.cyanAccent,
                    icon: Icons.add)

              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20*2),
                    topLeft: Radius.circular(Dimensions.radius20*2)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child:Icon(
                    Icons.favorite,
                    color: Colors.cyanAccent,

                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),

                  child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.cyanAccent[100],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bakery_shop/screens/red_screen.dart';
import 'package:flutter_bakery_shop/utils/colors.dart';

class PurpleScreen extends StatelessWidget {
  const PurpleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.red,
        appBar: AppBar(
          backgroundColor: MyColors.purple,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: MyColors.white.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              child: const Center(
                child: Text(
                  'Choose Your favourite ',
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 250,
                  decoration: BoxDecoration(
                    color: MyColors.white.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: const [
                      Image(
                        image:
                            AssetImage('assets/images/blueberry_toppings.png'),
                      ),
                      Image(
                        image: AssetImage('assets/images/blueberry.png'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: MyColors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: MyColors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                    ),
                    child: const Center(
                      child: Text(
                        'Add to card  ',
                        style: TextStyle(
                          color: MyColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: MyColors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RedScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

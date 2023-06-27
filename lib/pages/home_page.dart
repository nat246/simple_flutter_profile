import 'package:flutter/material.dart';
import 'package:simple_flutter_profile/class/item_class.dart';
import 'package:simple_flutter_profile/core/constants.dart';
import 'package:simple_flutter_profile/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Profile App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png'),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                      box: ItemClass(
                          title: 'Space', imagePath: 'images/space.png')),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Travel', imagePath: 'images/travel.png'),
                  ),
                )
              ],
            ),
            CardWidget(
              box: ItemClass(title: 'yeah', imagePath: 'images/yeah.png'),
            ),
          ],
        ),
      ),
    );
  }
}

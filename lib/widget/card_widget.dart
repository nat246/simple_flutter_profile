import 'package:flutter/material.dart';
import 'package:simple_flutter_profile/class/item_class.dart';
import 'package:simple_flutter_profile/pages/description_page.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});

  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(box: box,);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('This is the ${box.title} description'),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

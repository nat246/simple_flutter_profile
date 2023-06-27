import 'package:flutter/material.dart';
import 'package:simple_flutter_profile/class/item_class.dart';
import 'package:simple_flutter_profile/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Snackbar'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(children: [
            Image.asset(widget.box.imagePath),
            Wrap(
              spacing: kDouble10,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 25;
                    });
                  },
                  child: const Text('Small text'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 50;
                    });
                  },
                  child: const Text('Medium text'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 100;
                    });
                  },
                  child: const Text('Large text'),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 200;
                    });
                  },
                  child: const Text('Huge text'),
                ),
              ],
            ),
            FittedBox(
              child: Text(
                widget.box.title,
                style: TextStyle(
                    fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              lorem,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: kDouble10,
            ),
          ]),
        ),
      ),
    );
  }
}

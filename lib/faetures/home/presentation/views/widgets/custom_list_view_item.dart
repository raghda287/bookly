import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.redAccent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Book 1 High.png'),
          ),
        ),
      ),
    );
  }
}

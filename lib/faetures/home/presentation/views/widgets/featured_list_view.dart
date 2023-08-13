import 'package:bookly/faetures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4),
          child:  FeaturedListViewItem(),
        ),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
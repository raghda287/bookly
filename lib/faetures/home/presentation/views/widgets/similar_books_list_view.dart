import 'package:bookly/faetures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4),
          child:  FeaturedListViewItem(imageUrl: 'assets/images/Book 1 High.png',),
        ),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

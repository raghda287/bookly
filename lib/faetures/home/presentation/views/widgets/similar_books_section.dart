import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can also like',
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(height: height * .23, child: const SimilarBooksListView()),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

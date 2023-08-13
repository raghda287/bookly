import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'custom_bookDetails_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            BooksDetailsSection(),
            SimilarBooksSection(),

          ],
        ),
      ),
    );
  }
}

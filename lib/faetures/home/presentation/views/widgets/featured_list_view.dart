import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/faetures/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/faetures/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics:  const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: FeaturedListViewItem(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail),
              ),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is FeaturedBooksError) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

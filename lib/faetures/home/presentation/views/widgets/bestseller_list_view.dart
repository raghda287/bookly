import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/faetures/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/faetures/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/bestseller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_error.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetails);
              },
              child:  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              ),
            ),
            itemCount: 10,
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errorMsg,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

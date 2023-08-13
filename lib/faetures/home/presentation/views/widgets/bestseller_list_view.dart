import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/faetures/home/presentation/views/widgets/bestseller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.kBookDetails);
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerListViewItem(),
        ),
      ),
      itemCount: 10,

    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                text: '19.99€',
                borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomLeft:Radius.circular(16))),
          ),
          Expanded(
            child: CustomButton(
                backgroundColor: Color(0XFFEF8262),
                textColor: Colors.black,
                text: 'Free preview',
                borderRadius: BorderRadius.only(topRight:Radius.circular(16),bottomRight:Radius.circular(16))),
          ),
        ],
      ),
    );
  }
}

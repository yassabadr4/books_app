import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: BooklyStyles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}

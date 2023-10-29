import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({Key? key, required this.book}) : super(key: key);
 final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail?? "",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
          book.volumeInfo.title!,
          style: BooklyStyles.textStyle30,
           textAlign: TextAlign.center,

        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: BooklyStyles.textStyle18.copyWith(
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(
          book: book,
        ),
      ],
    );
  }
}
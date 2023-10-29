import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utiles/function/url_lancher.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backGroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
               lunchCustomUrl(context, book.volumeInfo.previewLink!);
              },
              text: getText(book),
              fontSize: 16,
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

 String getText(BookModel book) {
    if(book.volumeInfo.previewLink == null){
      return "not Available";
    }
    else{
      return"Preview";
    }
 }
}

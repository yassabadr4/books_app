import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //بحدد feature هتعمل ايه

  // مش هتتعمل ازاي...

  //هعمل ملف تاني home_repo_implementation واورث منه عشان اشتغل على methods

  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}

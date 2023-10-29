part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object?> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksLoading extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> book;

  const SimilarBooksSuccess(this.book);
}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}

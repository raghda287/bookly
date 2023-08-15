
import 'package:bookly/faetures/home/data/models/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksError extends FeaturedBooksState {
 final String errMessage;
  FeaturedBooksError(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
 final List<BookModel> books;

  FeaturedBooksSuccess(this.books);

}

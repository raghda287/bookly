import 'package:bookly/faetures/home/data/models/book_model.dart';
import 'package:bookly/faetures/home/data/repos/home_repo.dart';
import 'package:bookly/faetures/home/presentation/manager/featured_books_cubit/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  HomeRepo? homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo
        !.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksError(failure.errMessage));
    }, (books) {

      emit(FeaturedBooksSuccess(books));
    });
  }
}

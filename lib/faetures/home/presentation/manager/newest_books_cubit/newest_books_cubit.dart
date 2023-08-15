import 'package:bloc/bloc.dart';
import 'package:bookly/faetures/home/data/repos/home_repo.dart';
import 'package:bookly/faetures/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  static NewestBooksCubit get(context) => BlocProvider.of(context);

  HomeRepo? homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo?.fetchFeaturedBooks();
    result?.fold((failure) {
      emit(NewestBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }

}

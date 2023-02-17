import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/domain/repositories/articles_repository.dart';
part 'read_state.dart';

@injectable
class ReadCubit extends Cubit<ReadState> {
  ReadCubit({required this.articlesRepository}) : super(ReadState());

final ArticlesRepository articlesRepository;



Future<void> fetchData({required int id}) async {

  emit(ReadState(
    status: Status.loading
    ),
   );
   await Future.delayed(const Duration(seconds: 1));

  try {
    final results = await articlesRepository.getArticleForId(id);
    emit(ReadState(
    status: Status.success,
    results: results,
    ));

  }
  catch (error) {
    emit(ReadState(
      status: Status.error,
      errorMessage: error.toString(),

    ));
  }

  }
}
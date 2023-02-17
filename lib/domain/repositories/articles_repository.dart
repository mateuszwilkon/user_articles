import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/articles_remote_data_source.dart';
import 'package:user_articles/domain/models/article_model.dart';
@injectable
class ArticlesRepository {
  ArticlesRepository({required this.remoteDataSource});

  final ArticlesRemoteRetrofitDioDataSource remoteDataSource;

  Future<List<ArticleModel>> getArticlesForAuthorId(int authorId) async {
    final allArticles = await remoteDataSource.getArticles();
    return allArticles.where((article) => article.authorId == authorId).toList();
  }
  Future<List<ArticleModel>> getArticleForId(int id) async {
    final allArticles = await remoteDataSource.getArticles();
    return allArticles.where((article) => article.id == id).toList();
  }
}

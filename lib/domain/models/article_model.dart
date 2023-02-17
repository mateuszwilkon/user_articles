import 'package:freezed_annotation/freezed_annotation.dart';
part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleModel with _$ArticleModel {
  factory ArticleModel(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'author_id') int authorId,
    String title,
    String content, 
    String picture,
  ) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
}


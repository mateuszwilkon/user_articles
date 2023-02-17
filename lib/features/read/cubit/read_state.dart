part of 'read_cubit.dart';

class ReadState {
  ReadState ({
  this.results = const [],
  this.errorMessage,
  this.status = Status.initial,
    }
  );

  
final List<ArticleModel> results;
  final Status status;
  final String? errorMessage;
}

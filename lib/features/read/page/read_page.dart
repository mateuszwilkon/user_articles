
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_articles/app/incjection_container.dart';
import 'package:user_articles/domain/models/article_model.dart';
import 'package:user_articles/features/articles/cubit/articles_cubit.dart';
import 'package:user_articles/features/read/cubit/read_cubit.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({
    Key? key, required this.article,
  }) : super(key: key);

  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('title')),
      body: BlocProvider<ReadCubit>(
        create: (context) => getIt(
        )..fetchData(id: article.id),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
               CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    article.picture),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                article.title,
                style: GoogleFonts.itim(
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  color: Colors.black12,
                  child:  Text(
                      article.content),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

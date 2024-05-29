import 'package:flutter/material.dart';
import 'package:flutter_understand_widget/data/movie.dart';


class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie details',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints.expand(height: 500, width: 330),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movie.cover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              movie.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Text(movie.comment,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

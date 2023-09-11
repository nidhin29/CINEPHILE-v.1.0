//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:flutter/material.dart';

class ErrorNoteCard extends StatelessWidget {
  final Movie list;
  const ErrorNoteCard({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      child: Column(
        children: <Widget>[
          Text(
            'Invalid movie,please contact support',
            style: Theme.of(context)
                .primaryTextTheme
                .bodyMedium
                ?.copyWith(fontSize: 18),
          ),
          Text(
            'Details for nerds:',
            style: Theme.of(context).primaryTextTheme.bodyMedium,
          ),
          Text(
            list.failureOption.fold(() => '', (a) => a.toString()),
            style: Theme.of(context)
                .primaryTextTheme
                .bodyMedium
                ?.copyWith(fontSize: 18),
          )
        ],
      ),
    );
  }
}

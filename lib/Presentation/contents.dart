import 'package:app_3/Application/movies/movie_actor/movie_actor_bloc.dart';
import 'package:app_3/Application/movies/movie_watcher/movie_watcher_bloc.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Presentation/routes/router.dart';
import 'package:app_3/Presentation/splash/widgets/critical_faliure_display.dart';
import 'package:app_3/Presentation/splash/widgets/error_note_card_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentsPage extends StatelessWidget {
  const ContentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final movie = state.lists[index];
                if (movie.failureOption.isSome()) {
                  return ErrorNoteCard(list: movie);
                } else {
                  return Card(
                    child: ListTile(
                      title: Text(movie.body.getOrCrash()),
                      subtitle: Text(movie.body1.getOrCrash()),
                      onTap: () {
                        AutoRouter.of(context)
                            .replace(DetailsRoute(editedlist: movie));
                      },
                      tileColor: movie.color.getOrCrash(),
                      trailing: IconButton(
                        onPressed: () {
                          final movieActorBloc = context.read<MovieActorBloc>();
                          _showDeletionDialog(movie, context, movieActorBloc);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                }
              },
              itemCount: state.lists.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(failure: state.noteFailure);
          },
        );
      },
    );
  }

  Future<void> _showDeletionDialog(
      Movie movie, BuildContext context, MovieActorBloc movieActorBloc) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected Movie:'),
          content: Text(movie.body.getOrCrash()),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CANCEL')),
            TextButton(
                onPressed: () {
                  movieActorBloc.add(MovieActorEvent.deleted(movie));
                  AutoRouter.of(context).push(const HomeRoute());
                },
                child: const Text('DELETE'))
          ],
        );
      },
    );
  }
}

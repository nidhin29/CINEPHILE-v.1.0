import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app_3/Application/movies/movie_actor/movie_actor_bloc.dart';
import 'package:app_3/Application/sign-in/sign_in_bloc.dart';
//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Presentation/contents.dart';
import 'package:app_3/Presentation/routes/router.dart';
import 'package:app_3/injectable.dart';
//import 'package:app_3/Presentation/splash/widgets/switch.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Application/movies/movie_watcher/movie_watcher_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (ctx) => getit<MovieWatcherBloc>()..add(const MovieWatcherEvent.watchAllstarted()),
        ),
        BlocProvider<MovieActorBloc>(create: (ctx) => getit<MovieActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignInBloc, SignInState>(listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                unauthenticated: (_) =>
                    AutoRouter.of(context).replace(const SignInRoute()));
          }),
          BlocListener<MovieActorBloc, MovieActorState>(
              listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              deleteFailure: (state) {
                FlushbarHelper.createError(
                  duration: const Duration(seconds: 5),
                  message: state.noteFailure.map(
                      unexpected: (_) =>
                          'Unexpected error occured while deleteing, please contact supoort',
                      insufficientPermission: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error'),
                ).show(context);
              },
            );
          }),
        ],
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(240, 42, 113, 179),
              leading: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content:
                              const Text('Are you sure you want to logout?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                // Perform logout operation
                                context.read<SignInBloc>().add(const SignInEvent
                                    .signOut()); // Close the dialog
                              },
                              child: const Text('Yes'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: const Text('No'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.logout_outlined)),
              title: Padding(
                padding: EdgeInsets.only(left: zize * 0.13),
                child: const Text('Favourite Movies'),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                AutoRouter.of(context)
                    .replace(DetailsRoute(editedlist: null));
              },
              backgroundColor: const Color.fromARGB(240, 42, 113, 179),
              child: const Icon(Icons.add),
            ),
            body: const ContentsPage()),
      ),
    );
  }
}

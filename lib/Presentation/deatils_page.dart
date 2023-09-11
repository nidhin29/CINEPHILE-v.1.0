import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app_3/Application/movies/movie_form/movie_form_bloc.dart';
//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Presentation/routes/router.dart';
import 'package:app_3/Presentation/splash/widgets/body_field.dart';
import 'package:app_3/Presentation/splash/widgets/body_field1.dart';
import 'package:app_3/Presentation/splash/widgets/color_field.dart';
import 'package:app_3/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  final Movie? editedlist;
  const DetailsPage({
    super.key,
    required this.editedlist,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<NoteFormBloc>()
        ..add(MovieFormEvent.initialized(optionOf(editedlist))),
      child: BlocConsumer<NoteFormBloc, MovieFormState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSuccessOption !=
            current.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                          unexpected: (_) =>
                              'Unexpected error occured while deleteing, please contact supoort',
                          insufficientPermission: (_) =>
                              'Insufficient permissions ❌',
                          unableToUpdate: (_) => 'Impossible error'),
                    ).show(context);
                  }, (_) {
                    AutoRouter.of(context).popUntil((routePage) =>
                        routePage.settings.name == HomeRoute.name);
                  }));
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const MovieFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving)
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    super.key,
    required this.isSaving,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieFormPageScaffold extends StatelessWidget {
  const MovieFormPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(240, 42, 113, 179),
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).replace(const HomeRoute());
            },
            icon: const Icon(Icons.close)),
        title: BlocBuilder<NoteFormBloc, MovieFormState>(
          buildWhen: (previous, current) =>
              previous.isEditing != current.isEditing,
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(left: zize * 0.2),
              child: Text(state.isEditing ? 'Edit Movie' : 'Add Movie'),
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).replace(const HomeRoute());
                context.read<NoteFormBloc>().add(const MovieFormEvent.saved());
              },
              icon: const Icon(Icons.check))
        ],
      ),
      body: BlocBuilder<NoteFormBloc, MovieFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return const Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BodyField(),
                  BodyField1(),
                  ColorField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

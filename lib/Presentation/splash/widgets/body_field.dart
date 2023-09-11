//import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../Application/movies/movie_form/movie_form_bloc.dart';

class BodyField extends HookWidget {
  const BodyField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    final textEditingController = useTextEditingController();

    return BlocListener<NoteFormBloc, MovieFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.mlist.body.getOrCrash();
      },
      child: Padding(
            padding: EdgeInsets.only(
              left: zize * 0.04,
              right: zize * 0.04,
              top: zize * 0.04,
            ),
            child: SizedBox(
              width: zize * 6,
              child:  TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Movie',
              counterText: '',
            ),
            maxLines: null,
            onChanged: (value) => context
                .read<NoteFormBloc>()
                .add(MovieFormEvent.moviesChanged(value)),
            validator: (_) => context
                .read<NoteFormBloc>()
                .state
                .mlist
                .body
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
          )),
     ) );
  }
}
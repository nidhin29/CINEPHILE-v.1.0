//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class INoteRepository {
  Future<Either<NoteFailure, KtList<Movie>>> watchAll();
  Future<Either<NoteFailure, Unit>> create(Movie movie);
  Future<Either<NoteFailure, Unit>> update(Movie movie);
  Future<Either<NoteFailure, Unit>> delete(Movie movie);
}

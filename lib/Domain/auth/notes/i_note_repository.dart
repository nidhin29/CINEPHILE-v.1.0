import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class INoteRepository {
  Stream<Either<NoteFailure, KtList<List>>> watchAll();
  Stream<Either<NoteFailure, KtList<List>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Mlist list);
  Future<Either<NoteFailure, Unit>> update(Mlist list);
  Future<Either<NoteFailure, Unit>> delete(Mlist list);
}

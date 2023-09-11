import 'package:app_3/Domain/auth/notes/i_movie_repository.dart';
//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:app_3/Domain/auth/notes/notes_dto/notes_dto.dart';
import 'package:app_3/Infrastructure/auth/core/firebase_helpers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firebaseFirestore;

  NoteRepository(this._firebaseFirestore);
  @override
  Future<Either<NoteFailure, Unit>> create(Movie list) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final listDto = MoviesDto.fromDomain(list);

      await userDoc.moviecollection.doc(listDto.id).set(listDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Movie list) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final listId = list.id.getOrCrash();

      await userDoc.moviecollection.doc(listId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Movie list) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final listDto = MoviesDto.fromDomain(list);

      await userDoc.moviecollection.doc(listDto.id).update(listDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, KtList<Movie>>> watchAll() async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final querySnapshot = await userDoc.moviecollection
          .orderBy('serverTimeStamp', descending: true)
          .get();

      final movies = querySnapshot.docs
          .map((doc) => MoviesDto.fromFirestore(doc).toDomain())
          .toImmutableList();

      return right<NoteFailure, KtList<Movie>>(movies);
    } catch (e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}

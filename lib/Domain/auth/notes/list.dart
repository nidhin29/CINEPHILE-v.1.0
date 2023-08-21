import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
part 'list.freezed.dart';

@freezed
abstract class Mlist implements _$Mlist {
  const Mlist._();
  const factory Mlist({required UniqueId id, required MovieList<Movie> list}) =
      _Mlist;
  factory Mlist.empty() => Mlist(id: UniqueId(), list: MovieList(emptyList()));
  Option<ValueFailure<dynamic>> get failureOption {
    return list.failureOrUnit.andThen
    (list.getOrCrash().map((p0) => p0.failureOption).filter((p0) => p0.isSome()).getOrElse(0, (_) => none()).fold(()=>const Right(unit),
    (f)=> Left(f))).
    fold((f) => some(f), (_) => none());
  
  }
}



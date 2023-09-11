import 'package:app_3/Domain/auth/auth/i_authfailure.dart';
import 'package:app_3/Domain/auth/core/errors.dart';
import 'package:app_3/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getit<IauthFailure>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get moviecollection => collection('movies');
}

import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;
  const CriticalFailureDisplay({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(failure.maybeMap(orElse: ()=>'Unexpected error. \nPlease, contact support.',insufficientPermission: (_) => 'Insufficient permissions' ,),
          style:const TextStyle(fontSize: 24,) ,textAlign: TextAlign.center,
          ),
          
        ],
      ),
      
    );
  }
}

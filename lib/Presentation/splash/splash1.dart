import 'package:app_3/Application/sign-in/sign_in_bloc.dart';
import 'package:app_3/Presentation/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animcontroller;
  @override
  void initState() {
    super.initState();
    animcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animation =
        CurvedAnimation(parent: animcontroller, curve: Curves.easeInOut);

    animcontroller.forward();
  }

  @override
  void dispose() {
    animcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.map(initial: (_)  {
        }, authenticated: (_) {
          AutoRouter.of(context).replace(const HomeRoute());
        }, unauthenticated: (_) {
          AutoRouter.of(context).replace(const SignInRoute());
        });
      },
      child:  Scaffold(
            body: Center(
              child: AnimatedBuilder(
                animation: animcontroller,
                builder: _buildAnimation,
              ),
            ),
          )
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildLetter('C', 0),
        const SizedBox(
          width: 8,
        ),
        buildLetter('I', 1),
        const SizedBox(
          width: 8,
        ),
        buildLetter('N', 2),
        const SizedBox(
          width: 8,
        ),
        buildLetter('E', 3),
        const SizedBox(
          width: 8,
        ),
        buildLetter('P', 4),
        const SizedBox(
          width: 8,
        ),
        buildLetter('H', 5),
        const SizedBox(
          width: 8,
        ),
        buildLetter('I', 6),
        const SizedBox(
          width: 8,
        ),
        buildLetter('L', 7),
        const SizedBox(
          width: 8,
        ),
        buildLetter('E', 8),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }

  Widget buildLetter(String letter, int index) {
    return Opacity(
      opacity: animation.value > index / 9.0 ? 1.0 : 0.0,
      child: Text(
        letter,
        style: const TextStyle(
            fontSize: 32, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}

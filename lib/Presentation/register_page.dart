import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app_3/Application/auth/auth_bloc.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final zize = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.7),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(zize * 0.6))),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 43, 21, 244).withOpacity(0.7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(zize * 1.1, 300))),
            width: double.infinity,
            height: double.infinity,
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.authfailureorsuccess.fold(
                    () {},
                    (either) => either.fold((failure) {
                          FlushbarHelper.createError(
                            message: failure.map(
                                cancelledbyuser: (_) => 'Cancelled',
                                servererror: (_) => 'Server Error',
                                emailalreadyinuse: (_) =>
                                    'Email Already In Use',
                                invalidemailandpasswordcomnination: (_) =>
                                    'Invalid Email And Password Combination'),
                          ).show(context);
                        }, (_) {}));
              },
              builder: (context, state) {
                return Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      kheight,
                      const Text(
                        'Let\'s Get Started!',
                        style: TextStyle(fontSize: 40),
                      ),
                      kheight10,
                      const Text(
                        'Create An Account',
                        style: TextStyle(fontSize: 33),
                      ),
                      kheight50,
                      Padding(
                        padding: EdgeInsets.only(
                            left: zize * 0.02, right: zize * 0.02),
                        child: TextFormField(
                          //  autovalidateMode: AutovalidateMode.onUserInteraction,
                          autocorrect: false,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(zize * 0.1))),
                              hoverColor: Colors.black,
                              hintText: 'Email Address'),
                          onChanged: (value) {
                            return WidgetsBinding.instance
                                .addPostFrameCallback((_) {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(AuthEvent.emailchanged(value));
                            });
                          },
                          validator: (_) {
                            return BlocProvider.of<AuthBloc>(context)
                                .state
                                .emailAddress
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () => null),
                                    (_) => null);
                          },
                        ),
                      ),
                      kheight10,
                      kheight10,
                      Padding(
                        padding: EdgeInsets.only(
                            left: zize * 0.02, right: zize * 0.02),
                        child: TextFormField(
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                            autocorrect: false,
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(zize * 0.1))),
                                hoverColor: Colors.black,
                                hintText: 'Password'),
                            onChanged: (value) {
                              return WidgetsBinding.instance
                                  .addPostFrameCallback((_) {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(AuthEvent.passwordchanged(value));
                              });
                            },
                            validator: (_) {
                              return BlocProvider.of<AuthBloc>(context)
                                  .state
                                  .password
                                  .value
                                  .fold(
                                      (f) => f.maybeMap(
                                          shortPassword: (_) =>
                                              'Short Password',
                                          orElse: () => null),
                                      (_) => null);
                            }),
                      ),
                      kheight50,
                      TextButton(
                          onPressed: () {
                            return WidgetsBinding.instance
                                .addPostFrameCallback((_) {
                              BlocProvider.of<AuthBloc>(context).add(
                                  const AuthEvent
                                      .registerwithemailandpassword());
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              fixedSize: MaterialStatePropertyAll(
                                  Size(zize * 0.4, 0))),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.black),
                          )),
                      if (state.isSubmitting) ...[
                        const SizedBox(
                          height: 8,
                        ),
                        const LinearProgressIndicator(
                          value: null,
                        )
                      ]
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

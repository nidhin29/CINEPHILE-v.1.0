import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app_3/Application/auth/auth_bloc.dart';
import 'package:app_3/Application/sign-in/sign_in_bloc.dart';
import 'package:app_3/Presentation/core/constants.dart';

import 'package:app_3/Presentation/routes/router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                        }, (_) {
                          AutoRouter.of(context).replace(const HomeRoute());
                          context
                              .watch()<SignInBloc>()
                              .add(const SignInEvent.authCheckRequested());
                        }));
              },
              builder: (context, state) {
                return Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      kheight,
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://www.sixsigmahospital.com/wp-content/uploads/2018/04/person-icon.png',
                            ),
                          ),
                        ),
                        width: zize * 0.3,
                        height: zize * 0.3,
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
                                  const AuthEvent.signinwithemailandpassword());
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
                            'Sign In',
                            style: TextStyle(color: Colors.black),
                          )),
                      kheight10,
                      const Text('Sign In With'),
                      TextButton(
                          onPressed: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(const AuthEvent.signinwithgoogle());
                            });
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png'))),
                            width: zize * 0.08,
                            height: zize * 0.08,
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
          Positioned(
            bottom: 10,
            left: 5,
            child: FloatingActionButton(
              onPressed: () {
                AutoRouter.of(context).push(const RegisterRoute());
              },
              backgroundColor: const Color(0xFF3857F0),
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}

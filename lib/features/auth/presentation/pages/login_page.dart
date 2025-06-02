import 'package:prezza/core/helper/tools.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/constants/assets.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final AuthBloc bloc;
  @override
  void initState() {
    bloc = AuthBloc.get(context);
    bloc.loginForm = GlobalKey<FormState>();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc.email.clear();
      bloc.password.clear();
      bloc.phone.clear();
    });
  }

  bool obsureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: bloc.loginForm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.assetsImagesLogo3),
            Center(
              child: Image.asset(Assets.assetsImagesLogo2),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: bloc.isEmail ? bloc.email : bloc.phone,
                        decoration: InputDecoration(
                          hintText: bloc.isEmail ? tr.email : tr.phone,
                        ),
                        validator: (v) {
                          if (bloc.isEmail) {
                            if (!bloc.emailRegex.hasMatch(v!)) {
                              return tr.plsEnterValidEmail;
                            }
                            if (v.isEmpty) {
                              return tr.plsEnterEmail;
                            }
                          } else {
                            if (!bloc.qatarPhoneRegExp.hasMatch(v!)) {
                              return tr.plsEnterValidPhone;
                            }
                            if (v.isEmpty) {
                              return tr.plsEnterPhone;
                            }
                          }

                          return null;
                        },
                        onChanged: (v) {
                          bloc.loginForm.currentState!.validate();
                        },
                      ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      vSpace(1),
                      TextFormField(
                        controller: bloc.password,
                        obscureText: obsureText,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              obsureText = !obsureText;
                              setState(() {});
                            },
                            icon: Icon(
                              obsureText
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: primary,
                            ),
                          ),
                          hintText: tr.password,
                        ),
                        validator: (v) {
                          if (v!.isEmpty) {
                            return tr.plsEnterPass;
                          }

                          return null;
                        },
                        onChanged: (v) {
                          bloc.loginForm.currentState!.validate();
                        },
                      ).prezaa(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      vSpace(1),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {
                              appRoute.navigate(const ForgotPassRoute());
                            },
                            child: Text(
                              tr.forgotPassword,
                              style: clickableText,
                            ),
                          ),
                        ),
                      ),
                      vSpace(2),
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                          state.maybeMap(
                            failure: (err) {
                              if (err.errMsg == 'Please activate email' ||
                                  err.errMsg == 'Please activate phone') {
                                BotToast.showCustomText(
                                  duration: const Duration(seconds: 4),
                                  toastBuilder: (_) => Card(
                                    color: Colors.black87,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            bloc.isEmail
                                                ? tr.plsActivateEmail
                                                : tr.plsActivatePhone,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          const SizedBox(width: 10),
                                          InkWell(
                                            onTap: () {
                                              appRoute.navigate(
                                                  OtpVerificationRoute(
                                                      onSubmit: () {
                                                bloc.add(
                                                    AuthEvent.confirmSignup(
                                                  bloc.isEmail
                                                      ? 'email'
                                                      : 'phone',
                                                ));
                                              }, onResend: () {
                                                bloc.add(AuthEvent.resendOtp(
                                                  bloc.isEmail
                                                      ? 'email'
                                                      : 'phone',
                                                ));
                                              }, onSuccess: () {
                                                appRoute.navigate(
                                                    const LoginRoute());
                                              }));

                                              bloc.add(AuthEvent.resendOtp(
                                                bloc.isEmail
                                                    ? 'email'
                                                    : 'phone',
                                              ));
                                              BotToast.cleanAll();
                                            },
                                            child: Text(
                                              bloc.isEmail
                                                  ? tr.verifyEmail
                                                  : tr.verifyPhone,
                                              style: const TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else if (err.errMsg == 'complete setup') {
                                BotToast.showCustomText(
                                  duration: const Duration(seconds: 4),
                                  toastBuilder: (_) => Card(
                                    color: Colors.black87,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            tr.plsCompleteSetup,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          const SizedBox(width: 10),
                                          InkWell(
                                            onTap: () {
                                              appRoute.navigate(
                                                  const ChooseUserTypeRoute());
                                              BotToast.cleanAll();
                                            },
                                            child: Text(
                                              tr.complete,
                                              style: const TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                BotToast.showText(text: err.errMsg);
                              }
                            },
                            success: (_) {
                              if (mounted) {
                                appRoute.navigate(const LoginLoadingRoute());
                              }
                            },
                            orElse: () {},
                          );
                        },
                        builder: (context, state) {
                          return ElevatedButton(
                            onPressed: () {
                              bloc.add(
                                AuthEvent.signin(
                                  bloc.isEmail ? 'email' : 'phone',
                                ),
                              );
                            },
                            child: state.maybeWhen(
                              loading: () =>
                                  LoadingAnimationWidget.progressiveDots(
                                color: Colors.white,
                                size: 15.w,
                              ),
                              success: () {
                                bool isDone = true;
                                Future.delayed(
                                    const Duration(milliseconds: 500), () {
                                  isDone = false;
                                  setState(() {});
                                });
                                return isDone
                                    ? const Icon(Icons.check)
                                    : Text(tr.login);
                              },
                              orElse: () => Text(tr.login),
                            ),
                          );
                        },
                      ),
                      vSpace(5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: primary,
                            height: 2,
                            width: 43.w,
                          ),
                          Text(
                            tr.or,
                            style: redText,
                          ),
                          Container(
                            color: primary,
                            height: 2,
                            width: 43.w,
                          ),
                        ],
                      ),
                      vSpace(2),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.golf_course),
                        label: Text(tr.continueWithGoogle),
                      ),
                      vSpace(1),
                      TextButton.icon(
                        onPressed: () {
                          bloc.isEmail = !bloc.isEmail;
                          setState(() {});
                        },
                        icon: Icon(bloc.isEmail ? Icons.phone : Icons.email),
                        label: Text(
                          bloc.isEmail
                              ? tr.continueWithPhone
                              : tr.continueWithEmail,
                        ),
                      ),
                      vSpace(3),
                      RichText(
                        text: TextSpan(
                          style: redText,
                          children: [
                            TextSpan(text: tr.dontHaveAccount),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  appRoute.navigate(const SignUpRoute());
                                },
                              text: tr.signup,
                              style: clickableText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const Spacer(),

            // Image.asset(Assets.assetsImagesLogo3),
          ],
        ),
      ),
    );
  }
}

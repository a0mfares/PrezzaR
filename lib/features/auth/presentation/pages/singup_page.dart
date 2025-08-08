import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPPageState();
}

class _SignUpPPageState extends State<SignUpPage> {
  late final AuthBloc bloc;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    bloc = AuthBloc.get(context);
    bloc.signupForm = _formKey;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc.email.clear();
      bloc.password.clear();
      bloc.confirmPass.clear();
      bloc.firstName.clear();
      bloc.lastName.clear();
      bloc.phone.clear();
    });
  }

  bool obsureText = true;

  @override
  Widget build(BuildContext context) {
    log(bloc.selectedType);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tr.setupAccount),
            // change language
            IconButton(
              onPressed: () {
                // change local without dialog
                PrezzaPage.restartApp(currentLocal == 'ar' ? 'en' : 'ar');
                setState(() {});
              },
              icon: const Icon(Icons.language_outlined),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              vSpace(2),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    tr.continueWithEmail,
                    style: tstyle.headlineSmall,
                  ),
                ),
              ),
              vSpace(3),
              TextFormField(
                controller: bloc.firstName,
                decoration: InputDecoration(
                  hintText: tr.firstName,
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return tr.plsEnterFName;
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  _formKey.currentState!.validate();
                },
              ).prezaa(
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              vSpace(1),
              TextFormField(
                controller: bloc.lastName,
                decoration: InputDecoration(
                  hintText: tr.lastName,
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return tr.plsEnterLName;
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  _formKey.currentState!.validate();
                },
              ).prezaa(
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              vSpace(1),
              TextFormField(
                controller: bloc.isEmail ? bloc.email : bloc.phone,
                decoration: InputDecoration(
                    hintText: bloc.isEmail ? tr.email : tr.phone,
                    suffixIcon: InkWell(
                      onTap: () {
                        bloc.isEmail = !bloc.isEmail;
                        setState(() {});
                      },
                      child: Icon(bloc.isEmail ? Icons.phone : Icons.email),
                    )),
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
                onFieldSubmitted: (v) {
                  _formKey.currentState!.validate();
                },
              ).prezaa(
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              vSpace(1),
              TextFormField(
                controller: bloc.password,
                obscureText: obsureText,
                decoration: InputDecoration(
                  hintText: tr.password,
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
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return tr.plsEnterPass;
                  }
                  if (!bloc.passwordRegex.hasMatch(v)) {
                    return tr.plsEnterValidPass;
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  _formKey.currentState!.validate();
                },
              ).prezaa(
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              vSpace(1),
              TextFormField(
                controller: bloc.confirmPass,
                obscureText: obsureText,
                decoration: InputDecoration(
                  hintText: tr.confirmPass,
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
                ),
                validator: (v) {
                  if (v!.isEmpty) {
                    return tr.plsEnterPass;
                  }
                  if (bloc.password.text != v) {
                    return tr.yourPassNotMatch;
                  }
                  return null;
                },
                onFieldSubmitted: (v) {
                  _formKey.currentState!.validate();
                },
              ).prezaa(
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              vSpace(1),
              buildValidationRules(),
              RadioListTile(
                value: true,
                toggleable: true,
                groupValue: '',
                title: Text(
                  tr.iwantRecive,
                  style: redText.copyWith(fontSize: 15.sp),
                ),
                onChanged: (v) {},
              ),
              vSpace(2),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.maybeMap(
                    failure: (err) {
                      BotToast.showText(text: err.errMsg);
                    },
                    success: (_) {
                      if (mounted) {
                        appRoute.replaceAll([
                          OtpVerificationRoute(
                            onSubmit: () {
                              bloc.add(AuthEvent.confirmSignup(
                                bloc.isEmail ? 'email' : 'phone',
                              ));
                            },
                            onResend: () {
                              bloc.add(AuthEvent.resendOtp(
                                bloc.isEmail ? 'email' : 'phone',
                              ));
                            },
                            onSuccess: () {
                              appRoute.navigate(LoginRoute());
                            },
                          ),
                        ]);
                      }
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      bloc.add(AuthEvent.signup(
                        bloc.isEmail ? 'email' : 'phone',
                      ));
                    },
                    child: state.maybeWhen(
                      loading: () => LoadingAnimationWidget.progressiveDots(
                        color: Colors.white,
                        size: 15.w,
                      ),
                      success: () {
                        bool isDone = true;
                        Future.delayed(const Duration(milliseconds: 500), () {
                          if (!mounted) return;
                          isDone = false;
                          setState(() {});
                        });
                        return isDone
                            ? const Icon(Icons.check)
                            : Text(tr.createAccount);
                      },
                      orElse: () => Text(tr.createAccount),
                    ),
                  );
                },
              ),
              vSpace(5),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: redText,
                  children: [
                    TextSpan(text: '${tr.byCreating}\n'),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          appRoute.navigate(const SignUpRoute());
                        },
                      text: tr.terms,
                      style: clickableText,
                    ),
                    TextSpan(
                      text: tr.and,
                      // style: underLineTxt,
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          appRoute.navigate(const SignUpRoute());
                        },
                      text: tr.privacy,
                      style: clickableText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildValidationRules() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr.passwordValidaton,
            style: tstyle.bodyLarge,
          ),
          vSpace(2),
          bulletText(tr.upLetter),
          bulletText(tr.loLetter),
          bulletText(tr.oneNumber),
          bulletText(tr.onSpecial),
        ],
      ),
    );
  }

  Widget bulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        hSpace(4),
        Text('• ', style: TextStyle(fontSize: 18.sp)), // Bullet point
        Expanded(
          child: Text(
            text,
            style: tstyle.bodyMedium,
          ),
        ),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/txt_themes.dart';
import '../../../../core/helper/tools.dart';
import '../../../../prezza_page.dart';
import '../bloc/auth_bloc.dart';

@RoutePage()
class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  late final AuthBloc bloc;

  @override
  void initState() {
    bloc = AuthBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: bloc.forgotPassForm,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                vSpace(15),
                Text(
                  tr.forgotPassword.replaceFirst('?', ''),
                  style:
                      tstyle.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                vSpace(2),
                Text(
                  tr.enterEmailOrPhone,
                  textAlign: TextAlign.center,
                ).margin(margin: const EdgeInsets.symmetric(horizontal: 100)),
                vSpace(10),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
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
                            bloc.forgotPassForm.currentState!.validate();
                          },
                        ).prezaa(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                        ),
                        vSpace(1),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: InkWell(
                            onTap: () {
                              bloc.isEmail = !bloc.isEmail;
                              setState(() {});
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                bloc.isEmail
                                    ? tr.continueWithPhoneInst
                                    : tr.continueWithEmailInst,
                                style: clickableText,
                              ),
                            ),
                          ),
                        ),
                        vSpace(7),
                        BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.maybeMap(
                              failure: (err) {
                                BotToast.showText(text: err.errMsg);
                              },
                              successForgot: (_) {
                                if (mounted) {
                                  appRoute.navigate(
                                    OtpVerificationRoute(
                                      onSubmit: () {
                                        bloc.add(AuthEvent.getToken(
                                          bloc.isEmail ? 'email' : 'phone',
                                        ));
                                      },
                                      onResend: () {
                                        bloc.add(AuthEvent.resendOtp(
                                          bloc.isEmail ? 'email' : 'phone',
                                        ));
                                      },
                                      onSuccess: () {
                                        appRoute.push(const ResetPassRoute());
                                      },
                                    ),
                                  );
                                }
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: () {
                                bloc.add(AuthEvent.forgotPass(
                                  bloc.isEmail ? 'email' : 'phone',
                                ));
                              },
                              child: state.maybeWhen(
                                loading: () =>
                                    LoadingAnimationWidget.progressiveDots(
                                  color: Colors.white,
                                  size: 15.w,
                                ),
                                orElse: () => Text(tr.confirm),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

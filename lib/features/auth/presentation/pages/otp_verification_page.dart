import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:prezza/config/custom_colors.dart';
import 'package:prezza/config/txt_themes.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';

@RoutePage()
class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage(
      {super.key,
      required this.onSubmit,
      required this.onResend,
      required this.onSuccess});
  final VoidCallback onSubmit;
  final VoidCallback onResend;
  final VoidCallback onSuccess;
  @override
  State<OtpVerificationPage> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerificationPage> {
  late final AuthBloc bloc;
  int resendTime = 59;
  late Timer countDownTimer;
  @override
  void initState() {
    bloc = AuthBloc.get(context);
    startTimer();
    super.initState();
  }

  startTimer() {
    countDownTimer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (resendTime == 0) {
          resendTime = 59;
        }
        setState(
          () {
            resendTime = resendTime - 1;
          },
        );
        if (resendTime < 1) {
          countDownTimer.cancel();
          if (mounted) {
            setState(
              () {},
            );
          }
        }
      },
    );
  }

  @override
  void dispose() {
    countDownTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.setupAccount),
        centerTitle: true,
      ).prezzaLeading(onTap: () {
        appRoute.replace(LoginRoute());
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            child: PinCodeTextField(
              // key: UniqueKey(),
              appContext: context,
              length: 4,
              onChanged: (v) {
                bloc.otp = v;
              },
              // controller: bloc.otp,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              backgroundColor: Colors.transparent,
              textStyle: redText,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                selectedColor: primary,
                activeColor: primary,
                borderRadius: BorderRadius.circular(6),
                shape: PinCodeFieldShape.box,
                fieldWidth: 50,
              ),
            ),
          ),
          vSpace(5),
          InkWell(
            onTap: () {
              if (!countDownTimer.isActive) {
                startTimer();
                widget.onResend();
              }
            },
            child: Text(
              '${tr.resendCode} ${resendTime < 10 ? '00:0${resendTime.toString()}' : '00:${resendTime.toString()}'}',
              style: clickableText,
            ),
          ),
          vSpace(5),
          BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                failure: (err) {
                  BotToast.showText(text: err.errMsg);
                },
                successOtp: (_) {
                  if (mounted) {
                    widget.onSuccess();
                  }
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return ElevatedButton(
                  onPressed: widget.onSubmit,
                  child: state.maybeWhen(
                    loading: () => LoadingAnimationWidget.progressiveDots(
                      color: Colors.white,
                      size: 15.w,
                    ),
                    orElse: () => Text(tr.confirm),
                  ));
            },
          ),
          vSpace(5),
        ],
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

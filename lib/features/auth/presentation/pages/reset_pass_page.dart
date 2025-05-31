import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../core/helper/tools.dart';
import '../../../../prezza_page.dart';
import '../bloc/auth_bloc.dart';

@RoutePage()
class ResetPassPage extends StatefulWidget {
  const ResetPassPage({super.key});

  @override
  State<ResetPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ResetPassPage> {
  late final AuthBloc bloc;

  @override
  void initState() {
    bloc = AuthBloc.get(context);
    super.initState();
  }

  bool obsureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.setupAccount),
        centerTitle: true,
      ),
      body: Form(
        key: bloc.resetPassForm,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  onChanged: (v) {
                    bloc.resetPassForm.currentState!.validate();
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
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
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
                  onChanged: (v) {
                    bloc.resetPassForm.currentState!.validate();
                  },
                ).prezaa(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                vSpace(5),
                buildValidationRules(),
                vSpace(2),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeMap(
                      failure: (err) {
                        BotToast.showText(text: err.errMsg);
                      },
                      success: (_) {
                        if (mounted) {
                          appRoute.navigate(const LoginRoute());
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        bloc.add(const AuthEvent.resetPassword());
                      },
                      child: state.maybeWhen(
                        loading: () => LoadingAnimationWidget.progressiveDots(
                          color: Colors.white,
                          size: 15.w,
                        ),
                        orElse: () => Text(tr.changePass),
                      ),
                    );
                  },
                ),
              ],
            ),
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

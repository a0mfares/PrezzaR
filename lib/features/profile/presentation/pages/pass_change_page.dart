import 'package:prezza/core/helper/tools.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/core/extension/widget_ext.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../config/custom_colors.dart';
import '../../../../config/txt_themes.dart';
import '../../../../core/helper/tools.dart';
import '../../../../core/service/routes.gr.dart';
import '../../../../prezza_page.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

@RoutePage()
class PassChangePage extends StatefulWidget {
  const PassChangePage({super.key});

  @override
  State<PassChangePage> createState() => _PassChangePageState();
}

class _PassChangePageState extends State<PassChangePage> {
  late final ProfileBloc bloc;

  @override
  void initState() {
    bloc = ProfileBloc.get(context);
    super.initState();
  }

  bool obsureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar().prezzaLeading(),
      body: Form(
        key: bloc.changePassForm,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tr.changePass.replaceFirst('?', ''),
                  style: tstyle.headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                vSpace(5),
                TextFormField(
                  controller: bloc.oldPass,
                  obscureText: obsureText,
                  decoration: InputDecoration(
                    hintText: tr.oldPass,
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
                    bloc.changePassForm.currentState!.validate();
                  },
                ).prezaa(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                vSpace(1),
                TextFormField(
                  controller: bloc.pass,
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
                    bloc.changePassForm.currentState!.validate();
                  },
                ).prezaa(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                vSpace(1),
                TextFormField(
                  controller: bloc.passConfirm,
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
                    if (bloc.pass.text != v) {
                      return tr.yourPassNotMatch;
                    }
                    return null;
                  },
                  onChanged: (v) {
                    bloc.changePassForm.currentState!.validate();
                  },
                ).prezaa(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                vSpace(5),
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
                vSpace(3),
                buildValidationRules(),
                vSpace(2),
                BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                    state.maybeMap(
                      failure: (err) {
                        BotToast.showText(text: err.err);
                      },
                      success: (_) {
                        BotToast.showText(text: tr.successUpdate);
                        appRoute.back();
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        bloc.add(const ProfileEvent.updatePass());
                        // bloc.add(const AuthEvent.resetPassword());
                      },
                      child: state.maybeWhen(
                        loading: () => defLoadingCenter,
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

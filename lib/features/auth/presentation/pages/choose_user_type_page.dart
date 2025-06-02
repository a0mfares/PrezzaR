import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:prezza/core/constants/assets.dart';
import 'package:prezza/core/service/routes.gr.dart';
import 'package:prezza/prezza_page.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/helper/tools.dart';
import '../bloc/auth_bloc.dart';

@RoutePage()
class ChooseUserTypePage extends StatefulWidget {
  const ChooseUserTypePage({super.key});

  @override
  State<ChooseUserTypePage> createState() => _ChooseUserTypePageState();
}

class _ChooseUserTypePageState extends State<ChooseUserTypePage> {
  late final AuthBloc bloc;
  @override
  void initState() {
    bloc = AuthBloc.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        failure: (err) {
                          BotToast.showText(text: err.errMsg);
                        },
                        success: (_) {
                          if (mounted) {}
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          bloc.selectedType = 'customer';
                          bloc.add(const AuthEvent.chooseUserType());
                          appRoute.navigate(const LoginLoadingRoute());
                        },
                        child: state.maybeWhen(
                          loading: () => LoadingAnimationWidget.progressiveDots(
                            color: Colors.white,
                            size: 15.w,
                          ),
                          orElse: () => Text(tr.iamUser),
                        ),
                      );
                    },
                  ),
                  vSpace(2),
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        failure: (err) {
                          BotToast.showText(text: err.errMsg);
                        },
                        success: (_) {
                          if (mounted) {}
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          bloc.selectedType = 'vendor';
                          bloc.add(const AuthEvent.chooseUserType());
                          appRoute.navigate(const LoginLoadingRoute());
                        },
                        child: state.maybeWhen(
                          loading: () => LoadingAnimationWidget.progressiveDots(
                            color: Colors.white,
                            size: 15.w,
                          ),
                          orElse: () => Text(tr.iamVendor),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          // const Spacer(),
          Image.asset(Assets.assetsImagesLogo3),
        ],
      ),
    );
  }
}

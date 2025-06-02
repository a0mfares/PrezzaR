import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:prezza/config/theme.dart';
import 'package:prezza/core/helper/tools.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/core/service/routes.dart';
import 'package:prezza/features/cars/presentation/bloc/car_bloc.dart';
import 'package:prezza/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:prezza/features/category/presentation/bloc/category_bloc.dart';
import 'package:prezza/features/favorites/presentation/bloc/fav_bloc.dart';
import 'package:prezza/features/landing/presentation/bloc/landing_bloc.dart';
import 'package:prezza/features/location/presentation/bloc/location_bloc.dart';
import 'package:prezza/features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import 'package:prezza/features/notification/presentation/bloc/notify_bloc.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:prezza/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/features/search/presentation/bloc/search_bloc.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';
import 'package:prezza/generated/l10n.dart';
import 'package:sizer/sizer.dart';

import 'core/service/service_locator.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/bloc/show_validation_cubit.dart';

final appRoute = AppRouter();

class PrezzaPage extends StatefulWidget {
  const PrezzaPage({super.key});
  static void restartApp(String code) {
    currentCTX.findAncestorStateOfType<_PrezzaPageState>()?.restartApp(code);
  }

  @override
  State<PrezzaPage> createState() => _PrezzaPageState();
}

class _PrezzaPageState extends State<PrezzaPage> {
  Key _key = UniqueKey();

  void restartApp(String code) {
    HiveStorage.set(kLocale, code);
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<PaymentBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<LocationBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<VendorBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<NotifyBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<ShowValidationCubit>(
          create: (context) => ShowValidationCubit(),
        ),
        BlocProvider<OrderBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<LandingBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<CarBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<FavBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => sl(),
        ),
        BlocProvider<NewsfeedBloc>(
          create: (context) => sl(),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            key: _key,
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            builder: BotToastInit(),
            routerConfig: appRoute.config(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: Locale(currentLocal),
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}

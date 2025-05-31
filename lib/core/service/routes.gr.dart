// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i52;
import 'package:flutter/material.dart' as _i53;
import 'package:prezza/features/auth/presentation/pages/choose_user_type_page.dart'
    as _i9;
import 'package:prezza/features/auth/presentation/pages/forgot_pass_page.dart'
    as _i13;
import 'package:prezza/features/auth/presentation/pages/login_loading_page.dart'
    as _i18;
import 'package:prezza/features/auth/presentation/pages/login_page.dart'
    as _i19;
import 'package:prezza/features/auth/presentation/pages/onboarding_page.dart'
    as _i23;
import 'package:prezza/features/auth/presentation/pages/otp_verification_page.dart'
    as _i27;
import 'package:prezza/features/auth/presentation/pages/reset_pass_page.dart'
    as _i38;
import 'package:prezza/features/auth/presentation/pages/singup_page.dart'
    as _i41;
import 'package:prezza/features/auth/presentation/pages/welcome_page.dart'
    as _i51;
import 'package:prezza/features/cars/presentation/pages/add_cars_page.dart'
    as _i1;
import 'package:prezza/features/cars/presentation/pages/cars_page.dart' as _i5;
import 'package:prezza/features/cart/presentation/pages/cart_details_page.dart'
    as _i6;
import 'package:prezza/features/cart/presentation/pages/cart_page.dart' as _i7;
import 'package:prezza/features/favorites/presentation/pages/favorites_page.dart'
    as _i11;
import 'package:prezza/features/home/presentation/pages/user_layout_page.dart'
    as _i44;
import 'package:prezza/features/home/presentation/pages/vendor_home_page.dart'
    as _i48;
import 'package:prezza/features/home/presentation/pages/vendor_layout_page.dart'
    as _i49;
import 'package:prezza/features/landing/presentation/pages/feedback_page.dart'
    as _i12;
import 'package:prezza/features/landing/presentation/pages/help_page.dart'
    as _i14;
import 'package:prezza/features/location/presentation/pages/location_add_page.dart'
    as _i16;
import 'package:prezza/features/location/presentation/pages/location_page.dart'
    as _i17;
import 'package:prezza/features/newsfeed/presentation/pages/create_post_page.dart'
    as _i10;
import 'package:prezza/features/newsfeed/presentation/pages/mention_item_page.dart'
    as _i20;
import 'package:prezza/features/newsfeed/presentation/pages/profile_social_page.dart'
    as _i36;
import 'package:prezza/features/newsfeed/presentation/pages/social_page.dart'
    as _i42;
import 'package:prezza/features/newsfeed/presentation/pages/tag_vendor_page.dart'
    as _i43;
import 'package:prezza/features/newsfeed/presentation/pages/users_search_page.dart'
    as _i46;
import 'package:prezza/features/notification/presentation/pages/notification_page.dart'
    as _i21;
import 'package:prezza/features/notification/presentation/pages/notification_vendor_page.dart'
    as _i22;
import 'package:prezza/features/order/presentation/pages/checkout_page.dart'
    as _i8;
import 'package:prezza/features/order/presentation/pages/order_details_page.dart'
    as _i24;
import 'package:prezza/features/order/presentation/pages/order_details_vendor_page.dart'
    as _i25;
import 'package:prezza/features/order/presentation/pages/order_page.dart'
    as _i26;
import 'package:prezza/features/order/presentation/widgets/reason_page.dart'
    as _i37;
import 'package:prezza/features/payment/presentation/pages/card_details_page.dart.dart'
    as _i4;
import 'package:prezza/features/payment/presentation/pages/payment_card_page.dart'
    as _i29;
import 'package:prezza/features/products/presentation/pages/product_add_page.dart'
    as _i32;
import 'package:prezza/features/products/presentation/pages/product_details_page.dart'
    as _i33;
import 'package:prezza/features/products/presentation/pages/product_page.dart'
    as _i35;
import 'package:prezza/features/products/presentation/pages/product_vendor_details_page.dart'
    as _i34;
import 'package:prezza/features/profile/presentation/pages/busines_profile_page.dart'
    as _i3;
import 'package:prezza/features/profile/presentation/pages/invite_friend_page.dart'
    as _i15;
import 'package:prezza/features/profile/presentation/pages/pass_change_page.dart'
    as _i28;
import 'package:prezza/features/profile/presentation/pages/personal_info_page.dart'
    as _i30;
import 'package:prezza/features/profile/presentation/pages/prezza_settings_page.dart'
    as _i31;
import 'package:prezza/features/profile/presentation/pages/user_profile_page.dart'
    as _i45;
import 'package:prezza/features/profile/presentation/pages/vendor_profile_page.dart'
    as _i50;
import 'package:prezza/features/review/presentation/pages/review_page.dart'
    as _i39;
import 'package:prezza/features/search/presentation/pages/search_page.dart'
    as _i40;
import 'package:prezza/features/vendor/presentation/pages/all_vendor_page.dart'
    as _i2;
import 'package:prezza/features/vendor/presentation/pages/vendor_details_page.dart'
    as _i47;

/// generated route for
/// [_i1.AddCarsPage]
class AddCarsRoute extends _i52.PageRouteInfo<AddCarsRouteArgs> {
  AddCarsRoute({
    _i53.Key? key,
    bool editMode = false,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          AddCarsRoute.name,
          args: AddCarsRouteArgs(
            key: key,
            editMode: editMode,
          ),
          initialChildren: children,
        );

  static const String name = 'AddCarsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AddCarsRouteArgs>(orElse: () => const AddCarsRouteArgs());
      return _i1.AddCarsPage(
        key: args.key,
        editMode: args.editMode,
      );
    },
  );
}

class AddCarsRouteArgs {
  const AddCarsRouteArgs({
    this.key,
    this.editMode = false,
  });

  final _i53.Key? key;

  final bool editMode;

  @override
  String toString() {
    return 'AddCarsRouteArgs{key: $key, editMode: $editMode}';
  }
}

/// generated route for
/// [_i2.AllVendorPage]
class AllVendorRoute extends _i52.PageRouteInfo<AllVendorRouteArgs> {
  AllVendorRoute({
    _i53.Key? key,
    required String id,
    required String type,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          AllVendorRoute.name,
          args: AllVendorRouteArgs(
            key: key,
            id: id,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'AllVendorRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllVendorRouteArgs>();
      return _i2.AllVendorPage(
        key: args.key,
        id: args.id,
        type: args.type,
      );
    },
  );
}

class AllVendorRouteArgs {
  const AllVendorRouteArgs({
    this.key,
    required this.id,
    required this.type,
  });

  final _i53.Key? key;

  final String id;

  final String type;

  @override
  String toString() {
    return 'AllVendorRouteArgs{key: $key, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i3.BusinesProfilePage]
class BusinesProfileRoute extends _i52.PageRouteInfo<void> {
  const BusinesProfileRoute({List<_i52.PageRouteInfo>? children})
      : super(
          BusinesProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'BusinesProfileRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i3.BusinesProfilePage();
    },
  );
}

/// generated route for
/// [_i4.CardDetailsPage]
class CardDetailsRoute extends _i52.PageRouteInfo<void> {
  const CardDetailsRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CardDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i4.CardDetailsPage();
    },
  );
}

/// generated route for
/// [_i5.CarsPage]
class CarsRoute extends _i52.PageRouteInfo<void> {
  const CarsRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CarsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CarsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i5.CarsPage();
    },
  );
}

/// generated route for
/// [_i6.CartDetailsPage]
class CartDetailsRoute extends _i52.PageRouteInfo<void> {
  const CartDetailsRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CartDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i6.CartDetailsPage();
    },
  );
}

/// generated route for
/// [_i7.CartPage]
class CartRoute extends _i52.PageRouteInfo<void> {
  const CartRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i7.CartPage();
    },
  );
}

/// generated route for
/// [_i8.CheckoutPage]
class CheckoutRoute extends _i52.PageRouteInfo<void> {
  const CheckoutRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i8.CheckoutPage();
    },
  );
}

/// generated route for
/// [_i9.ChooseUserTypePage]
class ChooseUserTypeRoute extends _i52.PageRouteInfo<void> {
  const ChooseUserTypeRoute({List<_i52.PageRouteInfo>? children})
      : super(
          ChooseUserTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseUserTypeRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i9.ChooseUserTypePage();
    },
  );
}

/// generated route for
/// [_i10.CreatePostPage]
class CreatePostRoute extends _i52.PageRouteInfo<void> {
  const CreatePostRoute({List<_i52.PageRouteInfo>? children})
      : super(
          CreatePostRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePostRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i10.CreatePostPage();
    },
  );
}

/// generated route for
/// [_i11.FavoritesPage]
class FavoritesRoute extends _i52.PageRouteInfo<void> {
  const FavoritesRoute({List<_i52.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i11.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i12.FeedbackPage]
class FeedbackRoute extends _i52.PageRouteInfo<void> {
  const FeedbackRoute({List<_i52.PageRouteInfo>? children})
      : super(
          FeedbackRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedbackRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i12.FeedbackPage();
    },
  );
}

/// generated route for
/// [_i13.ForgotPassPage]
class ForgotPassRoute extends _i52.PageRouteInfo<void> {
  const ForgotPassRoute({List<_i52.PageRouteInfo>? children})
      : super(
          ForgotPassRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPassRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i13.ForgotPassPage();
    },
  );
}

/// generated route for
/// [_i14.HelpPage]
class HelpRoute extends _i52.PageRouteInfo<void> {
  const HelpRoute({List<_i52.PageRouteInfo>? children})
      : super(
          HelpRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i14.HelpPage();
    },
  );
}

/// generated route for
/// [_i15.InviteFriendPage]
class InviteFriendRoute extends _i52.PageRouteInfo<void> {
  const InviteFriendRoute({List<_i52.PageRouteInfo>? children})
      : super(
          InviteFriendRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteFriendRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i15.InviteFriendPage();
    },
  );
}

/// generated route for
/// [_i16.LocationAddPage]
class LocationAddRoute extends _i52.PageRouteInfo<LocationAddRouteArgs> {
  LocationAddRoute({
    _i53.Key? key,
    bool editMod = false,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          LocationAddRoute.name,
          args: LocationAddRouteArgs(
            key: key,
            editMod: editMod,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationAddRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LocationAddRouteArgs>(
          orElse: () => const LocationAddRouteArgs());
      return _i16.LocationAddPage(
        key: args.key,
        editMod: args.editMod,
      );
    },
  );
}

class LocationAddRouteArgs {
  const LocationAddRouteArgs({
    this.key,
    this.editMod = false,
  });

  final _i53.Key? key;

  final bool editMod;

  @override
  String toString() {
    return 'LocationAddRouteArgs{key: $key, editMod: $editMod}';
  }
}

/// generated route for
/// [_i17.LocationPage]
class LocationRoute extends _i52.PageRouteInfo<LocationRouteArgs> {
  LocationRoute({
    _i53.Key? key,
    required String title,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          LocationRoute.name,
          args: LocationRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LocationRouteArgs>();
      return _i17.LocationPage(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class LocationRouteArgs {
  const LocationRouteArgs({
    this.key,
    required this.title,
  });

  final _i53.Key? key;

  final String title;

  @override
  String toString() {
    return 'LocationRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i18.LoginLoadingPage]
class LoginLoadingRoute extends _i52.PageRouteInfo<void> {
  const LoginLoadingRoute({List<_i52.PageRouteInfo>? children})
      : super(
          LoginLoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginLoadingRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i18.LoginLoadingPage();
    },
  );
}

/// generated route for
/// [_i19.LoginPage]
class LoginRoute extends _i52.PageRouteInfo<void> {
  const LoginRoute({List<_i52.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i19.LoginPage();
    },
  );
}

/// generated route for
/// [_i20.MentionItemPage]
class MentionItemRoute extends _i52.PageRouteInfo<void> {
  const MentionItemRoute({List<_i52.PageRouteInfo>? children})
      : super(
          MentionItemRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentionItemRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i20.MentionItemPage();
    },
  );
}

/// generated route for
/// [_i21.NotificationPage]
class NotificationRoute extends _i52.PageRouteInfo<void> {
  const NotificationRoute({List<_i52.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i21.NotificationPage();
    },
  );
}

/// generated route for
/// [_i22.NotificationVendorPage]
class NotificationVendorRoute extends _i52.PageRouteInfo<void> {
  const NotificationVendorRoute({List<_i52.PageRouteInfo>? children})
      : super(
          NotificationVendorRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationVendorRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i22.NotificationVendorPage();
    },
  );
}

/// generated route for
/// [_i23.OnboardingPage]
class OnboardingRoute extends _i52.PageRouteInfo<void> {
  const OnboardingRoute({List<_i52.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i23.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i24.OrderDetailsPage]
class OrderDetailsRoute extends _i52.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i53.Key? key,
    required String orderId,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            key: key,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailsRouteArgs>();
      return _i24.OrderDetailsPage(
        key: args.key,
        orderId: args.orderId,
      );
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    required this.orderId,
  });

  final _i53.Key? key;

  final String orderId;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [_i25.OrderDetailsVendorPage]
class OrderDetailsVendorRoute
    extends _i52.PageRouteInfo<OrderDetailsVendorRouteArgs> {
  OrderDetailsVendorRoute({
    _i53.Key? key,
    required String id,
    required String type,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          OrderDetailsVendorRoute.name,
          args: OrderDetailsVendorRouteArgs(
            key: key,
            id: id,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsVendorRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailsVendorRouteArgs>();
      return _i25.OrderDetailsVendorPage(
        key: args.key,
        id: args.id,
        type: args.type,
      );
    },
  );
}

class OrderDetailsVendorRouteArgs {
  const OrderDetailsVendorRouteArgs({
    this.key,
    required this.id,
    required this.type,
  });

  final _i53.Key? key;

  final String id;

  final String type;

  @override
  String toString() {
    return 'OrderDetailsVendorRouteArgs{key: $key, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i26.OrderPage]
class OrderRoute extends _i52.PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    _i53.Key? key,
    bool isVendor = false,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          OrderRoute.name,
          args: OrderRouteArgs(
            key: key,
            isVendor: isVendor,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<OrderRouteArgs>(orElse: () => const OrderRouteArgs());
      return _i26.OrderPage(
        key: args.key,
        isVendor: args.isVendor,
      );
    },
  );
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    this.isVendor = false,
  });

  final _i53.Key? key;

  final bool isVendor;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, isVendor: $isVendor}';
  }
}

/// generated route for
/// [_i27.OtpVerificationPage]
class OtpVerificationRoute
    extends _i52.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({
    _i53.Key? key,
    required _i53.VoidCallback onSubmit,
    required _i53.VoidCallback onResend,
    required _i53.VoidCallback onSuccess,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          OtpVerificationRoute.name,
          args: OtpVerificationRouteArgs(
            key: key,
            onSubmit: onSubmit,
            onResend: onResend,
            onSuccess: onSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpVerificationRouteArgs>();
      return _i27.OtpVerificationPage(
        key: args.key,
        onSubmit: args.onSubmit,
        onResend: args.onResend,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({
    this.key,
    required this.onSubmit,
    required this.onResend,
    required this.onSuccess,
  });

  final _i53.Key? key;

  final _i53.VoidCallback onSubmit;

  final _i53.VoidCallback onResend;

  final _i53.VoidCallback onSuccess;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key, onSubmit: $onSubmit, onResend: $onResend, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i28.PassChangePage]
class PassChangeRoute extends _i52.PageRouteInfo<void> {
  const PassChangeRoute({List<_i52.PageRouteInfo>? children})
      : super(
          PassChangeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PassChangeRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i28.PassChangePage();
    },
  );
}

/// generated route for
/// [_i29.PaymentCardPage]
class PaymentCardRoute extends _i52.PageRouteInfo<PaymentCardRouteArgs> {
  PaymentCardRoute({
    _i53.Key? key,
    required String title,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          PaymentCardRoute.name,
          args: PaymentCardRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentCardRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCardRouteArgs>();
      return _i29.PaymentCardPage(
        key: args.key,
        title: args.title,
      );
    },
  );
}

class PaymentCardRouteArgs {
  const PaymentCardRouteArgs({
    this.key,
    required this.title,
  });

  final _i53.Key? key;

  final String title;

  @override
  String toString() {
    return 'PaymentCardRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i30.PersonalInfoPage]
class PersonalInfoRoute extends _i52.PageRouteInfo<void> {
  const PersonalInfoRoute({List<_i52.PageRouteInfo>? children})
      : super(
          PersonalInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInfoRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i30.PersonalInfoPage();
    },
  );
}

/// generated route for
/// [_i31.PrezzaSettingsPage]
class PrezzaSettingsRoute extends _i52.PageRouteInfo<void> {
  const PrezzaSettingsRoute({List<_i52.PageRouteInfo>? children})
      : super(
          PrezzaSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrezzaSettingsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i31.PrezzaSettingsPage();
    },
  );
}

/// generated route for
/// [_i32.ProductAddPage]
class ProductAddRoute extends _i52.PageRouteInfo<ProductAddRouteArgs> {
  ProductAddRoute({
    _i53.Key? key,
    bool isEditMod = false,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ProductAddRoute.name,
          args: ProductAddRouteArgs(
            key: key,
            isEditMod: isEditMod,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductAddRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductAddRouteArgs>(
          orElse: () => const ProductAddRouteArgs());
      return _i32.ProductAddPage(
        key: args.key,
        isEditMod: args.isEditMod,
      );
    },
  );
}

class ProductAddRouteArgs {
  const ProductAddRouteArgs({
    this.key,
    this.isEditMod = false,
  });

  final _i53.Key? key;

  final bool isEditMod;

  @override
  String toString() {
    return 'ProductAddRouteArgs{key: $key, isEditMod: $isEditMod}';
  }
}

/// generated route for
/// [_i33.ProductDetailsPage]
class ProductDetailsRoute extends _i52.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i53.Key? key,
    required String id,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductDetailsRouteArgs>();
      return _i33.ProductDetailsPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i53.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i34.ProductVendorDetailsPage]
class ProductVendorDetailsRoute
    extends _i52.PageRouteInfo<ProductVendorDetailsRouteArgs> {
  ProductVendorDetailsRoute({
    _i53.Key? key,
    required String id,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ProductVendorDetailsRoute.name,
          args: ProductVendorDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductVendorDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductVendorDetailsRouteArgs>();
      return _i34.ProductVendorDetailsPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class ProductVendorDetailsRouteArgs {
  const ProductVendorDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i53.Key? key;

  final String id;

  @override
  String toString() {
    return 'ProductVendorDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i35.ProductsPage]
class ProductsRoute extends _i52.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    _i53.Key? key,
    _i53.VoidCallback? onStartPage,
    _i53.VoidCallback? onDisposePage,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            key: key,
            onStartPage: onStartPage,
            onDisposePage: onDisposePage,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductsRouteArgs>(
          orElse: () => const ProductsRouteArgs());
      return _i35.ProductsPage(
        key: args.key,
        onStartPage: args.onStartPage,
        onDisposePage: args.onDisposePage,
      );
    },
  );
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    this.onStartPage,
    this.onDisposePage,
  });

  final _i53.Key? key;

  final _i53.VoidCallback? onStartPage;

  final _i53.VoidCallback? onDisposePage;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, onStartPage: $onStartPage, onDisposePage: $onDisposePage}';
  }
}

/// generated route for
/// [_i36.ProfileSocialPage]
class ProfileSocialRoute extends _i52.PageRouteInfo<ProfileSocialRouteArgs> {
  ProfileSocialRoute({
    _i53.Key? key,
    required String userId,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ProfileSocialRoute.name,
          args: ProfileSocialRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileSocialRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileSocialRouteArgs>();
      return _i36.ProfileSocialPage(
        key: args.key,
        userId: args.userId,
      );
    },
  );
}

class ProfileSocialRouteArgs {
  const ProfileSocialRouteArgs({
    this.key,
    required this.userId,
  });

  final _i53.Key? key;

  final String userId;

  @override
  String toString() {
    return 'ProfileSocialRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i37.ReasonPage]
class ReasonRoute extends _i52.PageRouteInfo<ReasonRouteArgs> {
  ReasonRoute({
    _i53.Key? key,
    required String icon,
    required String title,
    required String subTitle,
    bool isRejected = false,
    _i53.VoidCallback? onReject,
    required _i53.VoidCallback onSend,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          ReasonRoute.name,
          args: ReasonRouteArgs(
            key: key,
            icon: icon,
            title: title,
            subTitle: subTitle,
            isRejected: isRejected,
            onReject: onReject,
            onSend: onSend,
          ),
          initialChildren: children,
        );

  static const String name = 'ReasonRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReasonRouteArgs>();
      return _i37.ReasonPage(
        key: args.key,
        icon: args.icon,
        title: args.title,
        subTitle: args.subTitle,
        isRejected: args.isRejected,
        onReject: args.onReject,
        onSend: args.onSend,
      );
    },
  );
}

class ReasonRouteArgs {
  const ReasonRouteArgs({
    this.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.isRejected = false,
    this.onReject,
    required this.onSend,
  });

  final _i53.Key? key;

  final String icon;

  final String title;

  final String subTitle;

  final bool isRejected;

  final _i53.VoidCallback? onReject;

  final _i53.VoidCallback onSend;

  @override
  String toString() {
    return 'ReasonRouteArgs{key: $key, icon: $icon, title: $title, subTitle: $subTitle, isRejected: $isRejected, onReject: $onReject, onSend: $onSend}';
  }
}

/// generated route for
/// [_i38.ResetPassPage]
class ResetPassRoute extends _i52.PageRouteInfo<void> {
  const ResetPassRoute({List<_i52.PageRouteInfo>? children})
      : super(
          ResetPassRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i38.ResetPassPage();
    },
  );
}

/// generated route for
/// [_i39.ReviewPage]
class ReviewRoute extends _i52.PageRouteInfo<void> {
  const ReviewRoute({List<_i52.PageRouteInfo>? children})
      : super(
          ReviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReviewRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i39.ReviewPage();
    },
  );
}

/// generated route for
/// [_i40.SearchPage]
class SearchRoute extends _i52.PageRouteInfo<void> {
  const SearchRoute({List<_i52.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i40.SearchPage();
    },
  );
}

/// generated route for
/// [_i41.SignUpPage]
class SignUpRoute extends _i52.PageRouteInfo<void> {
  const SignUpRoute({List<_i52.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i41.SignUpPage();
    },
  );
}

/// generated route for
/// [_i42.SocialPage]
class SocialRoute extends _i52.PageRouteInfo<void> {
  const SocialRoute({List<_i52.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i42.SocialPage();
    },
  );
}

/// generated route for
/// [_i43.TagVendorPage]
class TagVendorRoute extends _i52.PageRouteInfo<void> {
  const TagVendorRoute({List<_i52.PageRouteInfo>? children})
      : super(
          TagVendorRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagVendorRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i43.TagVendorPage();
    },
  );
}

/// generated route for
/// [_i44.UserLayoutHomePage]
class UserLayoutHomeRoute extends _i52.PageRouteInfo<UserLayoutHomeRouteArgs> {
  UserLayoutHomeRoute({
    _i53.Key? key,
    int? index,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          UserLayoutHomeRoute.name,
          args: UserLayoutHomeRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'UserLayoutHomeRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserLayoutHomeRouteArgs>(
          orElse: () => const UserLayoutHomeRouteArgs());
      return _i44.UserLayoutHomePage(
        key: args.key,
        index: args.index,
      );
    },
  );
}

class UserLayoutHomeRouteArgs {
  const UserLayoutHomeRouteArgs({
    this.key,
    this.index,
  });

  final _i53.Key? key;

  final int? index;

  @override
  String toString() {
    return 'UserLayoutHomeRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i45.UserProfilePage]
class UserProfileRoute extends _i52.PageRouteInfo<void> {
  const UserProfileRoute({List<_i52.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i45.UserProfilePage();
    },
  );
}

/// generated route for
/// [_i46.UsersSearchPage]
class UsersSearchRoute extends _i52.PageRouteInfo<void> {
  const UsersSearchRoute({List<_i52.PageRouteInfo>? children})
      : super(
          UsersSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersSearchRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i46.UsersSearchPage();
    },
  );
}

/// generated route for
/// [_i47.VendorDetailsPage]
class VendorDetailsRoute extends _i52.PageRouteInfo<VendorDetailsRouteArgs> {
  VendorDetailsRoute({
    _i53.Key? key,
    required String id,
    required String type,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          VendorDetailsRoute.name,
          args: VendorDetailsRouteArgs(
            key: key,
            id: id,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'VendorDetailsRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendorDetailsRouteArgs>();
      return _i47.VendorDetailsPage(
        key: args.key,
        id: args.id,
        type: args.type,
      );
    },
  );
}

class VendorDetailsRouteArgs {
  const VendorDetailsRouteArgs({
    this.key,
    required this.id,
    required this.type,
  });

  final _i53.Key? key;

  final String id;

  final String type;

  @override
  String toString() {
    return 'VendorDetailsRouteArgs{key: $key, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i48.VendorHomePage]
class VendorHomeRoute extends _i52.PageRouteInfo<void> {
  const VendorHomeRoute({List<_i52.PageRouteInfo>? children})
      : super(
          VendorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorHomeRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i48.VendorHomePage();
    },
  );
}

/// generated route for
/// [_i49.VendorLayoutPage]
class VendorLayoutRoute extends _i52.PageRouteInfo<VendorLayoutRouteArgs> {
  VendorLayoutRoute({
    _i53.Key? key,
    int? index,
    List<_i52.PageRouteInfo>? children,
  }) : super(
          VendorLayoutRoute.name,
          args: VendorLayoutRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'VendorLayoutRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendorLayoutRouteArgs>(
          orElse: () => const VendorLayoutRouteArgs());
      return _i49.VendorLayoutPage(
        key: args.key,
        index: args.index,
      );
    },
  );
}

class VendorLayoutRouteArgs {
  const VendorLayoutRouteArgs({
    this.key,
    this.index,
  });

  final _i53.Key? key;

  final int? index;

  @override
  String toString() {
    return 'VendorLayoutRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i50.VendorProfilePage]
class VendorProfileRoute extends _i52.PageRouteInfo<void> {
  const VendorProfileRoute({List<_i52.PageRouteInfo>? children})
      : super(
          VendorProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'VendorProfileRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i50.VendorProfilePage();
    },
  );
}

/// generated route for
/// [_i51.WelcomePage]
class WelcomeRoute extends _i52.PageRouteInfo<void> {
  const WelcomeRoute({List<_i52.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i52.PageInfo page = _i52.PageInfo(
    name,
    builder: (data) {
      return const _i51.WelcomePage();
    },
  );
}

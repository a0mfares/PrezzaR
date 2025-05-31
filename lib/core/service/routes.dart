import 'package:auto_route/auto_route.dart';
import 'package:prezza/core/service/routes.gr.dart';

import '../helper/tools.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          // initial: ,
        ),
        AutoRoute(
          page: SignUpRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: ProfileSocialRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: UsersSearchRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: SearchRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: PassChangeRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: LoginLoadingRoute.page,
          // guards: [PrezzaGuard()],
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
          // guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: CreatePostRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: TagVendorRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: MentionItemRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: SocialRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: LocationRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: AddCarsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: CarsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: FeedbackRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: FavoritesRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: CartDetailsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: VendorDetailsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: CartRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: HelpRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: AllVendorRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: PersonalInfoRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: InviteFriendRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: NotificationRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: OrderRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: OrderDetailsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: LocationAddRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: PrezzaSettingsRoute.page,
          // guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: CheckoutRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: UserProfileRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: BusinesProfileRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: UserLayoutHomeRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: PaymentCardRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: CardDetailsRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: OrderDetailsVendorRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: ReviewRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: ProductAddRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: ReasonRoute.page,
          guards: [PrezzaGuard()],
          // initial: true,
        ),
        AutoRoute(
          page: ResetPassRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: ForgotPassRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: OtpVerificationRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: ChooseUserTypeRoute.page,

          // guards: [
          //   AuthGuard(),
          // ],
        ),
      ];

  // @override
  // // TODO: implement guards
  // List<AutoRouteGuard> get guards => [
  //       AutoRouteGuard.redirect(
  //         (resolver) {
  //           if (HiveStorage.get(kUser) == null) {
  //             // resolver.redirect(const UserHomeRoute());
  //             return null;
  //           }
  //           return UserHomeRoute();
  //           // resolver.redirect(const LogirnRoute());
  //         },
  //       )
  //     ];
}

class PrezzaGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!ifUserAuthenticated()) {
      resolver.redirect(const LoginRoute());
    } else {
      resolver.next();
    }
  }
}

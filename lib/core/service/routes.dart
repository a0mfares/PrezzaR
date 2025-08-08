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
          //
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
          //
        ),
        AutoRoute(
          page: CreatePostRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: TagVendorRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: MentionItemRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: SocialRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: LocationRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: AddCarsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: CarsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: FeedbackRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: FavoritesRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: OtpVerificationRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: CartDetailsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: VendorDetailsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: CartRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: HelpRoute.page,
          // initial: true,
        ),
        AutoRoute(
          page: AllVendorRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: PersonalInfoRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: InviteFriendRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: NotificationRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: OrderRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: OrderDetailsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: LocationAddRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: PrezzaSettingsRoute.page,
          //
          // initial: true,
        ),
        AutoRoute(
          page: CheckoutRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: UserProfileRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: BusinesProfileRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: UserLayoutHomeRoute.page,
        ),
        AutoRoute(
          page: PaymentCardRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: CardDetailsRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: OrderDetailsVendorRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: ReviewRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: ProductAddRoute.page,

          // initial: true,
        ),
        AutoRoute(
          page: ReasonRoute.page,

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
}

class PrezzaGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    var isAuthenticated = ifUserAuthenticated();

    if (!isAuthenticated) {
      await Future.delayed(const Duration(milliseconds: 100));
      isAuthenticated = ifUserAuthenticated();
    }

    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.replace(LoginRoute());
      resolver.next(false);
    }
  }
}

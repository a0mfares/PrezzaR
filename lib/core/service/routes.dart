import 'package:auto_route/auto_route.dart';
import 'package:prezza/core/service/routes.gr.dart';

import '../helper/tools.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: ProfileSocialRoute.page,
          guards: [PrezzaGuard()],

        ),
        AutoRoute(
          page: UsersSearchRoute.page,
          guards: [PrezzaGuard()],

        ),
        AutoRoute(
          page: SearchRoute.page,
        ),
        AutoRoute(
          page: PassChangeRoute.page,
        ),
        AutoRoute(
          page: LoginLoadingRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: CreatePostRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: TagVendorRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: MentionItemRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: SocialRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: LocationRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: AddCarsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: CarsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: FeedbackRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: FavoritesRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: CartDetailsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: VendorDetailsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: CartRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: HelpRoute.page,
        ),
        AutoRoute(
          page: AllVendorRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: PersonalInfoRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: InviteFriendRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: NotificationRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: OrderRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: OrderDetailsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: LocationAddRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: PrezzaSettingsRoute.page,
        ),
        AutoRoute(
          page: CheckoutRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: UserProfileRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: BusinesProfileRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: UserLayoutHomeRoute.page,
        ),
        AutoRoute(
          page: PaymentCardRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: CardDetailsRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: VendorLayoutRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: OrderDetailsVendorRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: ReviewRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: ProductAddRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: ReasonRoute.page,
          guards: [PrezzaGuard()],
        ),
        AutoRoute(
          page: ResetPassRoute.page,
        ),
        AutoRoute(
          page: ForgotPassRoute.page,
        ),
        AutoRoute(
          page: OtpVerificationRoute.page,
        ),
        AutoRoute(
          page: ChooseUserTypeRoute.page,
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
      resolver.redirect(
        LoginRoute(),
      
      );
    }
  }
}
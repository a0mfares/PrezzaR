import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:prezza/core/service/network_config.dart';
import 'package:prezza/features/auth/data/datasources/auth_service.dart';
import 'package:prezza/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:prezza/features/auth/domain/repositories/auth_repo.dart';
import 'package:prezza/features/auth/domain/usecases/auth_usecases.dart';
import 'package:prezza/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:prezza/features/cars/data/datasources/car_api_service.dart';
import 'package:prezza/features/cars/data/datasources/car_service.dart';
import 'package:prezza/features/cars/data/repositories/car_repo_impl.dart';
import 'package:prezza/features/cars/domain/repositories/car_repo.dart';
import 'package:prezza/features/cars/domain/usecases/car_usecase.dart';
import 'package:prezza/features/cars/presentation/bloc/car_bloc.dart';
import 'package:prezza/features/cart/data/repositories/cart_repo_impl.dart';
import 'package:prezza/features/category/data/datasources/category_service.dart';
import 'package:prezza/features/category/data/repositories/category_repo_impl.dart';
import 'package:prezza/features/category/domain/repositories/category_repo.dart';
import 'package:prezza/features/category/domain/usecases/category_usecase.dart';
import 'package:prezza/features/category/presentation/bloc/category_bloc.dart';
import 'package:prezza/features/landing/data/datasources/landing_service.dart';
import 'package:prezza/features/landing/data/repositories/landing_repo_impl.dart';
import 'package:prezza/features/landing/domain/repositories/landing_repo.dart';
import 'package:prezza/features/landing/domain/usecases/landing_usecase.dart';
import 'package:prezza/features/landing/presentation/bloc/landing_bloc.dart';
import 'package:prezza/features/location/data/datasources/location_service.dart';
import 'package:prezza/features/location/data/datasources/map_service.dart';
import 'package:prezza/features/location/data/repositories/location_repo_impl.dart';
import 'package:prezza/features/location/domain/repositories/location_repo.dart';
import 'package:prezza/features/location/domain/usecases/location_usecase.dart';
import 'package:prezza/features/location/presentation/bloc/location_bloc.dart';
import 'package:prezza/features/notification/data/datasources/notify_service.dart';
import 'package:prezza/features/notification/data/repositories/notify_repo_impl.dart';
import 'package:prezza/features/notification/domain/repositories/notify_repo.dart';
import 'package:prezza/features/notification/domain/usecases/notify_usecase.dart';
import 'package:prezza/features/order/data/datasources/order_service.dart';
import 'package:prezza/features/order/data/repositories/order_repo_impl.dart';
import 'package:prezza/features/order/domain/repositories/order_repo.dart';
import 'package:prezza/features/order/domain/usecases/order_usecase.dart';
import 'package:prezza/features/order/presentation/bloc/order_bloc.dart';
import 'package:prezza/features/payment/data/datasources/payment_service.dart';
import 'package:prezza/features/payment/data/repositories/payment_repo_impl.dart';
import 'package:prezza/features/payment/domain/repositories/payment_repo.dart';
import 'package:prezza/features/payment/domain/usecases/payment_usecase.dart';
import 'package:prezza/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:prezza/features/products/data/datasources/product_service.dart';
import 'package:prezza/features/products/data/repositories/product_repo_impl.dart';
import 'package:prezza/features/products/domain/repositories/product_repo.dart';
import 'package:prezza/features/products/domain/usecases/product_usecase.dart';
import 'package:prezza/features/products/presentation/bloc/product_bloc.dart';
import 'package:prezza/features/profile/data/datasources/profile_service.dart';
import 'package:prezza/features/profile/data/repositories/profile_repo_impl.dart';
import 'package:prezza/features/profile/domain/repositories/profile_repo.dart';
import 'package:prezza/features/profile/domain/usecases/profile_usecase.dart';
import 'package:prezza/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:prezza/features/review/data/datasources/review_service.dart';
import 'package:prezza/features/review/data/repositories/review_repo_impl.dart';
import 'package:prezza/features/review/domain/repositories/review_repo.dart';
import 'package:prezza/features/review/domain/usecases/review_usecase.dart';
import 'package:prezza/features/review/presentation/bloc/review_bloc.dart';
import 'package:prezza/features/vendor/data/datasources/vendor_service.dart';
import 'package:prezza/features/vendor/data/repositories/vendor_repo_impl.dart';
import 'package:prezza/features/vendor/domain/repositories/vendor_repo.dart';
import 'package:prezza/features/vendor/domain/usecases/vendor_usecase.dart';
import 'package:prezza/features/vendor/presentation/bloc/vendor_bloc.dart';

import '../../features/cart/data/datasources/cart_service.dart';
import '../../features/cart/domain/repositories/cart_repo.dart';
import '../../features/cart/domain/usecases/cart_usecase.dart';
import '../../features/cart/presentation/bloc/cart_bloc.dart';
import '../../features/favorites/data/datasources/favorite_service.dart';
import '../../features/favorites/data/repositories/fav_repo_impl.dart';
import '../../features/favorites/domain/repositories/fav_repo.dart';
import '../../features/favorites/domain/usecases/fav_usecase.dart';
import '../../features/favorites/presentation/bloc/fav_bloc.dart';
import '../../features/newsfeed/data/datasources/newsfeed_service.dart';
import '../../features/newsfeed/data/repositories/newsfeed_repo_impl.dart';
import '../../features/newsfeed/domain/repositories/newsfeed_repo.dart';
import '../../features/newsfeed/domain/usecases/newsfeed_usecase.dart';
import '../../features/newsfeed/presentation/bloc/newsfeed_bloc.dart';
import '../../features/notification/presentation/bloc/notify_bloc.dart';
import '../../features/search/data/datasources/search_service.dart';
import '../../features/search/data/repositories/search_repo_impl.dart';
import '../../features/search/domain/repositories/search_repo.dart';
import '../../features/search/domain/usecases/search_usecase.dart';
import '../../features/search/presentation/bloc/search_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void initializeServiceLocator() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 20),
      ),
    );
    dio.interceptors.add(NetworkConfig().getInterceptor());

    sl.registerSingleton(dio);
    //? ⁡⁣⁢⁢auth feature⁡
    sl.registerSingleton<AuthService>(AuthService(sl()));
    sl.registerSingleton<AuthRepo>(AuthRepoImpl(sl()));
    sl.registerSingleton<SigninUsecase>(SigninUsecase(sl()));
    sl.registerSingleton<SignUpUsecase>(SignUpUsecase(sl()));
    sl.registerSingleton<ConfirmSignUpUsecase>(ConfirmSignUpUsecase(sl()));
    sl.registerSingleton<ResendOtpUsecase>(ResendOtpUsecase(sl()));
    sl.registerSingleton<ForgotPassUsecase>(ForgotPassUsecase(sl()));
    sl.registerSingleton<GetTokenPassUsecase>(GetTokenPassUsecase(sl()));
    sl.registerSingleton<CreateProfileUsecase>(CreateProfileUsecase(sl()));
    sl.registerSingleton<RefereshTokenUsecase>(RefereshTokenUsecase(sl()));
    sl.registerSingleton<ResetPasswordUsecase>(ResetPasswordUsecase(sl()));
    sl.registerSingleton<ChooseUserTypeUsecase>(ChooseUserTypeUsecase(sl()));
    sl.registerSingleton<GetUserInfoUsecase>(GetUserInfoUsecase(sl()));
    sl.registerSingleton<DeleteAcountUseCase>(DeleteAcountUseCase(sl()));

    sl.registerCachedFactory<AuthBloc>(() =>
        AuthBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(),sl()));

    //? ⁡⁣⁢⁢end auth feature⁡

    //& categories
    sl.registerSingleton<CategoryServices>(CategoryServices(sl()));
    sl.registerSingleton<CategoryRepo>(CategoryRepoImpl(sl()));
    sl.registerSingleton<GetCategoriesUsecase>(GetCategoriesUsecase(sl()));
    sl.registerSingleton<GetSponsorsUsecase>(GetSponsorsUsecase(sl()));
    sl.registerFactory(() => CategoryBloc(sl(), sl()));
    //& categories

    //! profile
    sl.registerSingleton<ProfileService>(ProfileService(sl()));
    sl.registerSingleton<ProfileRepo>(ProfileRepoImpl(sl()));
    sl.registerSingleton<AddBusinessDetailsUsecase>(
        AddBusinessDetailsUsecase(sl()));
    sl.registerSingleton<GetUserProfileUsecase>(GetUserProfileUsecase(sl()));
    sl.registerSingleton<UpdateUserInfoUsecase>(UpdateUserInfoUsecase(sl()));
    sl.registerSingleton<UpdatePassUsecase>(UpdatePassUsecase(sl()));
    sl.registerSingleton<GetBusinessDetailUsecase>(
        GetBusinessDetailUsecase(sl()));
    sl.registerFactory(() => ProfileBloc(sl(), sl(), sl(), sl(), sl()));
    //! profile

    //~ payment
    sl.registerSingleton<PaymentService>(PaymentService(sl()));
    sl.registerSingleton<PaymentRepo>(PaymentRepoImpl(sl()));
    sl.registerSingleton<GetVendorCardsUsecase>(GetVendorCardsUsecase(sl()));
    sl.registerSingleton<AddVendorCardUsecase>(AddVendorCardUsecase(sl()));
    sl.registerSingleton<DeleteVendorCardUsecase>(
        DeleteVendorCardUsecase(sl()));

    sl.registerSingleton<AddCardCustomerUsecase>(AddCardCustomerUsecase(sl()));
    sl.registerSingleton<GetAccessTokenUsecase>(GetAccessTokenUsecase(sl()));
    sl.registerSingleton<DeleteCardCustomerUsecase>(
        DeleteCardCustomerUsecase(sl()));
    sl.registerSingleton<GetCardCustomerUsecase>(GetCardCustomerUsecase(sl()));
    sl.registerFactory(
        () => PaymentBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //~ payment

    //! location
    sl.registerSingleton<LocationService>(LocationService(sl()));
    sl.registerSingleton<MapService>(MapService(sl()));
    sl.registerSingleton<LocationRepo>(LocationRepoImpl(sl(), sl()));
    sl.registerSingleton<GetBranchesUsecase>(GetBranchesUsecase(sl()));
    sl.registerSingleton<AddBrancheUsecase>(AddBrancheUsecase(sl()));
    sl.registerSingleton<DeleteBrancheUsecase>(DeleteBrancheUsecase(sl()));
    sl.registerSingleton<UpdateBrancheUsecase>(UpdateBrancheUsecase(sl()));
    sl.registerSingleton<AddAddressUsecase>(AddAddressUsecase(sl()));
    sl.registerSingleton<UpdateAddressUsecase>(UpdateAddressUsecase(sl()));
    sl.registerSingleton<GetAddressesUsecase>(GetAddressesUsecase(sl()));
    sl.registerSingleton<DeleteAddressUsecase>(DeleteAddressUsecase(sl()));
    sl.registerSingleton<GetArrivelTimeUsecase>(GetArrivelTimeUsecase(sl()));
    sl.registerFactory(
        () => LocationBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //! location

    //* vendor
    sl.registerSingleton<VendorService>(VendorService(sl()));
    sl.registerSingleton<VendorRepo>(VendorRepoImpl(sl()));
    sl.registerSingleton<GetVendorBalanceUsecase>(
        GetVendorBalanceUsecase(sl()));
    sl.registerSingleton<GetReviewAUsecase>(GetReviewAUsecase(sl()));
    sl.registerSingleton<GetOrderStatusUsecase>(GetOrderStatusUsecase(sl()));
    sl.registerSingleton<GetVendorBranchesUsecase>(
        GetVendorBranchesUsecase(sl()));
    sl.registerSingleton<GetMostOrderedUsecase>(GetMostOrderedUsecase(sl()));
    sl.registerSingleton<GetVendorItemDetailsBookingUsecase>(
        GetVendorItemDetailsBookingUsecase(sl()));
    sl.registerSingleton<GetVendorByFilterUsecase>(
        GetVendorByFilterUsecase(sl()));
    sl.registerSingleton<GetVendorByCategoryOrServiceUsecase>(
        GetVendorByCategoryOrServiceUsecase(sl()));
    sl.registerSingleton<GetVendorItemDetailsUsecase>(
        GetVendorItemDetailsUsecase(sl()));
    sl.registerSingleton<GetNearbyPlacesUsecase>(GetNearbyPlacesUsecase(sl()));
    sl.registerFactory(() =>
        VendorBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //* vendor
    //& notify
    sl.registerSingleton<NotifyService>(NotifyService(sl()));
    sl.registerSingleton<NotifyRepo>(NotifyRepoImpl(sl()));
    sl.registerSingleton<GetAllNotifyUsecase>(GetAllNotifyUsecase(sl()));
    sl.registerSingleton<MarkAllNotificationUsecase>(
        MarkAllNotificationUsecase(sl()));
    sl.registerSingleton<MarkNotificationUsecase>(
        MarkNotificationUsecase(sl()));
    sl.registerFactory(() => NotifyBloc(sl(), sl(), sl()));
    //& notify

    //& product
    sl.registerSingleton<ProductService>(ProductService(sl()));
    sl.registerSingleton<ProductRepo>(ProductRepoImpl(sl()));
    sl.registerSingleton<CreateProductInstanceUsecase>(
        CreateProductInstanceUsecase(sl()));
    sl.registerSingleton<AddProductDetailsUsecase>(
        AddProductDetailsUsecase(sl()));
    sl.registerSingleton<AddProductCategoryUsecase>(
        AddProductCategoryUsecase(sl()));
    sl.registerSingleton<AddProductExtrasUsecase>(
        AddProductExtrasUsecase(sl()));
    sl.registerSingleton<AddProductSideItemUsecase>(
        AddProductSideItemUsecase(sl()));
    sl.registerSingleton<AddProductSizeUsecase>(AddProductSizeUsecase(sl()));
    sl.registerSingleton<DeleteProductUsecase>(DeleteProductUsecase(sl()));
    sl.registerSingleton<GetProductByVendorIdUsecase>(
        GetProductByVendorIdUsecase(sl()));
    sl.registerSingleton<GetProductByIdUsecase>(GetProductByIdUsecase(sl()));
    sl.registerSingleton<GetOftenProductsUsecase>(
        GetOftenProductsUsecase(sl()));
    sl.registerSingleton<GetProductCategories>(GetProductCategories(sl()));
    sl.registerSingleton<SearchProductUsecase>(SearchProductUsecase(sl()));
    sl.registerSingleton<GetVendorProductsUsecase>(
        GetVendorProductsUsecase(sl()));
    sl.registerFactory(() => ProductBloc(sl(), sl(), sl(), sl(), sl(), sl(),
        sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //& product

    //* order
    sl.registerSingleton<OrderService>(OrderService(sl()));
    sl.registerSingleton<OrderRepo>(OrderRepoImpl(sl()));
    sl.registerSingleton<GetVendorOrdersUsecase>(GetVendorOrdersUsecase(sl()));
    sl.registerSingleton<GetOrderDetailsUsecase>(GetOrderDetailsUsecase(sl()));
    sl.registerSingleton<GetOrderPickupDeliveryUsecase>(
        GetOrderPickupDeliveryUsecase(sl()));
    sl.registerSingleton<AcceptOrderUsecase>(AcceptOrderUsecase(sl()));
    sl.registerSingleton<RejectOrderUsecase>(RejectOrderUsecase(sl()));
    sl.registerSingleton<DoneOrderUsecase>(DoneOrderUsecase(sl()));
    sl.registerSingleton<CancelOrderUsecase>(CancelOrderUsecase(sl()));
    sl.registerSingleton<CreateOrderInstaceUsecase>(
        CreateOrderInstaceUsecase(sl()));
    sl.registerSingleton<AddOrderDetailsUsecase>(AddOrderDetailsUsecase(sl()));
    sl.registerSingleton<GetUserOrdersUsecase>(GetUserOrdersUsecase(sl()));
    sl.registerFactory(() => OrderBloc(
        sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //* order

    //$ landing
    sl.registerSingleton<LandingService>(LandingService(sl()));
    sl.registerSingleton<LandingRepo>(LandingRepoImpl(sl()));
    sl.registerSingleton<AddAppReviewUsecase>(AddAppReviewUsecase(sl()));
    sl.registerSingleton<GetAppReviewUsecase>(GetAppReviewUsecase(sl()));
    sl.registerSingleton<GetCommonIssuesUsecase>(GetCommonIssuesUsecase(sl()));
    sl.registerSingleton<GetFAQUsecase>(GetFAQUsecase(sl()));
    sl.registerSingleton<GetDownloadPlatformsUsecase>(
        GetDownloadPlatformsUsecase(sl()));
    sl.registerSingleton<GetSocialPlatformsUsecase>(
        GetSocialPlatformsUsecase(sl()));
    sl.registerFactory(() => LandingBloc(sl(), sl(), sl(), sl(), sl(), sl()));
    //% landing

    //! cars
    sl.registerSingleton<CarService>(CarService(sl()));
    sl.registerSingleton<CarApiService>(CarApiService(sl()));
    sl.registerSingleton<CarRepo>(CarRepoImpl(sl(), sl()));
    sl.registerSingleton<AddCarUsecase>(AddCarUsecase(sl()));
    sl.registerSingleton<GetCarsUsecase>(GetCarsUsecase(sl()));
    sl.registerSingleton<DeleteCarUsecase>(DeleteCarUsecase(sl()));
    sl.registerSingleton<UpdateCarUsecase>(UpdateCarUsecase(sl()));
    sl.registerSingleton<GetMakesUsecase>(GetMakesUsecase(sl()));
    sl.registerSingleton<GetModelsUsecase>(GetModelsUsecase(sl()));
    sl.registerSingleton<GetTypesUsecase>(GetTypesUsecase(sl()));
    sl.registerFactory(() => CarBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //! cars

    //? search
    sl.registerSingleton<SearchService>(SearchService(sl()));
    sl.registerSingleton<SearchRepo>(SearchRepoImpl(sl()));
    sl.registerSingleton<SearchUsingVendorNameUsecase>(
        SearchUsingVendorNameUsecase(sl()));
    sl.registerFactory(() => SearchBloc(sl()));
    //? end search

    //* fav
    sl.registerSingleton<FavService>(FavService(sl()));
    sl.registerSingleton<FavRepo>(FavRepoImpl(sl()));
    sl.registerSingleton<AddFavVendorUsecase>(AddFavVendorUsecase(sl()));
    sl.registerSingleton<DeleteFavVendorUsecase>(DeleteFavVendorUsecase(sl()));
    sl.registerSingleton<GetFavVendorUsecase>(GetFavVendorUsecase(sl()));
    sl.registerFactory(() => FavBloc(sl(), sl(), sl()));
    //* end fav

    //! cart
    sl.registerSingleton<CartService>(CartService(sl()));
    sl.registerSingleton<CartRepo>(CartRepoImpl(sl()));
    sl.registerSingleton<GetCartUsecase>(GetCartUsecase(sl()));
    sl.registerSingleton<GetCartDetailsUsecase>(GetCartDetailsUsecase(sl()));
    sl.registerSingleton<GetOftenOrderedWithUsecase>(
        GetOftenOrderedWithUsecase(sl()));
    sl.registerSingleton<ClearCartUsecase>(ClearCartUsecase(sl()));
    sl.registerSingleton<GetCartPreparingTimeUsecase>(
        GetCartPreparingTimeUsecase(sl()));
    sl.registerSingleton<AddItemToCartUsecase>(AddItemToCartUsecase(sl()));
    sl.registerSingleton<RemoveItemFromCartUsecase>(
        RemoveItemFromCartUsecase(sl()));
    sl.registerSingleton<UpdateItemQunUsecase>(UpdateItemQunUsecase(sl()));
    sl.registerSingleton<AddOrUpdateCouponUsecase>(
        AddOrUpdateCouponUsecase(sl()));
    sl.registerFactory(
        () => CartBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl(), sl()));
    //! end cart

    //* newsfeed
    sl.registerSingleton<NewsfeedService>(NewsfeedService(sl()));
    sl.registerSingleton<NewsfeedRepo>(NewsfeedRepoImpl(sl()));
    sl.registerSingleton<AddCommentReplyUsecase>(AddCommentReplyUsecase(sl()));
    sl.registerSingleton<AddCommentUsecase>(AddCommentUsecase(sl()));
    sl.registerSingleton<AddLikeOnCommentUsecase>(
        AddLikeOnCommentUsecase(sl()));
    sl.registerSingleton<AddLikePostUsecase>(AddLikePostUsecase(sl()));
    sl.registerSingleton<AddStoryUsecase>(AddStoryUsecase(sl()));
    sl.registerSingleton<AddTagPostUsecase>(AddTagPostUsecase(sl()));
    sl.registerSingleton<CreatePostUsecase>(CreatePostUsecase(sl()));
    sl.registerSingleton<DeleteCommentUsecase>(DeleteCommentUsecase(sl()));
    sl.registerSingleton<DeleteCommentReplyUsecase>(
        DeleteCommentReplyUsecase(sl()));
    sl.registerSingleton<DeleteStoryUsecase>(DeleteStoryUsecase(sl()));
    sl.registerSingleton<EditCommentUsecase>(EditCommentUsecase(sl()));
    sl.registerSingleton<EditPostUsecase>(EditPostUsecase(sl()));
    sl.registerSingleton<FollowUserUsecase>(FollowUserUsecase(sl()));
    sl.registerSingleton<GetCommentsUsecase>(GetCommentsUsecase(sl()));
    sl.registerSingleton<GetLikesForPostUsecase>(GetLikesForPostUsecase(sl()));
    sl.registerSingleton<GetPostsUsecase>(GetPostsUsecase(sl()));
    sl.registerSingleton<GetPostsBlogUsecase>(GetPostsBlogUsecase(sl()));
    sl.registerSingleton<GetSavedPostsUsecase>(GetSavedPostsUsecase(sl()));
    sl.registerSingleton<GetStoriesUsecase>(GetStoriesUsecase(sl()));
    sl.registerSingleton<GetRepliesUsecase>(GetRepliesUsecase(sl()));
    sl.registerSingleton<GetUserFollowerUsecase>(GetUserFollowerUsecase(sl()));
    sl.registerSingleton<GetUserFollowingUsecase>(
        GetUserFollowingUsecase(sl()));
    sl.registerSingleton<GetUserInfoSocialUsecase>(
        GetUserInfoSocialUsecase(sl()));
    sl.registerSingleton<SavePostUsecase>(SavePostUsecase(sl()));
    sl.registerSingleton<UnFollowUserUsecase>(UnFollowUserUsecase(sl()));
    sl.registerSingleton<UnLikeCommentUsecase>(UnLikeCommentUsecase(sl()));
    sl.registerSingleton<UnLikePostUsecase>(UnLikePostUsecase(sl()));
    sl.registerSingleton<GetUsersUsecase>(GetUsersUsecase(sl()));
    sl.registerSingleton<GetTagProductUsecase>(GetTagProductUsecase(sl()));
    sl.registerSingleton<GetTagVendorUsecase>(GetTagVendorUsecase(sl()));
    sl.registerFactory(() => NewsfeedBloc(
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
          sl(),
        ));
    //* end newsfeed

    //! review
    sl.registerSingleton(ReviewService(sl()));
    sl.registerSingleton<ReviewRepo>(ReviewRepoImpl(sl()));
    sl.registerSingleton<GetProductReviewsUsecase>(
        GetProductReviewsUsecase(sl()));
    sl.registerSingleton<AddProductReviewUsecase>(
        AddProductReviewUsecase(sl()));
    sl.registerFactory(() => ReviewBloc(sl(), sl()));
    //! end review
  }
}

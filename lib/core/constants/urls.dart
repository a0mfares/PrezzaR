class Urls {
  //?AUTH FEATURE
  static const String baseUrl = 'https://backend.prezzaapp.com/api';
  static const String baseUrlMap = 'https://maps.googleapis.com';
  static const String baseUrlCars = 'https://carapi.app/api';

  static const String arrivelTime = '/maps/api/directions/json?';
  static const String makes = '/makes';
  static const String models = '/models';
  static const String years = '/years';
  static const String getAccessToken = '/card-payment/get-token/';
  static const String bodies = '/bodies';
  static const String loginCarApi = '/Customer_Dashboard/car_app_token';
  //& auth phone
  static const String signupPhone = '/PhoneRegistration/register/';
  static const String confirmPhone = '/PhoneRegistration/confirm_phone/';
  static const String loginUsingPhone = '/PhoneRegistration/login/';
  static const String forgotPassPhone = '/PhoneRegistration/forget_password/';
  static const String getRestPassToken =
      '/PhoneRegistration/get_reset_password_token/';
  static const String resendTokenPhone = '/PhoneRegistration/resend_otp/';
  static const String completeUserPhone =
      '/PhoneRegistration/complete_user_data/';

  //* auth email
  static const String signupEmail = '/Users/Auth/SignUp/';
  static const String signinEmail = '/Users/Auth/Login/';
  static const String resendOtp = '/Users/Auth/resend-otp/';
  static const String confirmOtp = '/Users/Auth/confirm-email/';
  static const String chooseUserType = '/Users/Auth/choose-user-type/';
  static const String refreshToken = '/Users/Auth/refresh-Token/';
  static const String resetPass = '/Users/password/reset_password/';
  static const String confirmOtPass =
      '/Users/password/get_reset_password_token/';
  static const String forgotPass = '/Users/password/forgot_password/';
  static const String updatePass = '/Users/password/update_password/';
  static const String userInfo = '/Users/userinfo/';
  //?END AUTH FEATURE

  //! product
  static const String createProduct = '/Products/new_product/create_product/';
  static const String productSearch = '/Products/product_search/';
  static const String tagVendor = '/Home/search_using_name/';
  static const String getProducts =
      '/Vendor_Dashboard/products/get_vendor_products/';
  static const String getProductById =
      '/Vendor_Dashboard/products/get_specific_product_details/';
  static const String addProductDetails =
      '/Products/new_product/add_product_details/';
  static const String getCategoriesFBC =
      '/Products/new_product/get_categories_for_bussiness_category/';
  static const String getCategoriesVendorDetails =
      '/Home/bussinesses/get_bussiness_products_categories';
  static const String addProductCategory =
      '/Products/new_product/add_product_categories/';
  static const String addProductSize =
      '/Products/new_product/add_product_size/';
  static const String addProductSideItems =
      '/Products/new_product/add_product_side_items/';
  static const String addProductExtra =
      '/Products/new_product/add_product_extras/';
  static const String deleteProduct = '/Products/new_product/delete_product/';
  static const String deletProduct = '/Products/new_product/delete_product/';
  static const String oftenProducts =
      '/Products/products/get_often_ordered_with';

  //! product

  // * cart
  static const String getUserCart = '/Cart/user_carts/';
  static const String cart = '/Cart/cart/';
  static const String getPrepareTime = '/Cart/get_prepare_time/';
  static const String getOftenOrderdWith = '/Cart/get_ofen_orderd_with/';
  static const String addItemToCart = '/Cart/items/add_item_to_cart/';
  static const String updateItemQun = '/Cart/items/update_item_quantity/';
  static const String removeItemFromCart = '/Cart/items/remove_item_from_cart/';
  static const String addOrUpdateCopon = '/Cart/coupon/add_coupon_to_cart/';
  // static const String temp = '';
  // static const String temp = '';
  // static const String temp = '';
  // static const String temp = '';
  // static const String temp = '';

  // * cart

  // ! newsfeed
  static const String createPost = '/social_platform/blogs/create_blog/';
  static const String users = '/Users/search_users_using_name/';
  static const String tagPost = '/social_platform/blogs/add_tags_to_post/';
  static const String getUserInfoSocial =
      '/social_platform/profile/get_user_profile/';
  static const String getUserFeedPosts =
      '/social_platform/blogs/get_user_feed_posts/';
  static const String getUserSavedPosts =
      '/social_platform/blogs/get_user_saved_posts/';
  static const String followers = '/social_platform/profile/follower/';
  static const String following = '/social_platform/profile/following/';
  static const String getNewsFeedBlogs =
      '/social_platform/blogs/news_feed/get_news_feed_blogs/';
  static const String newsFeedStories =
      '/social_platform/blogs/news_feed/stories/';
  static const String commentLikes = '/social_platform/blogs/comment_likes/';
  static const String commentReplys = '/social_platform/blogs/comment_replys/';
  static const String comments = '/social_platform/blogs/comments/';
  static const String postLikes = '/social_platform/blogs/post_likes/';
  static const String savePosts = '/social_platform/blogs/save_post/';
  // static const String savePosts = '/social_platform/profile/get_user_profile/';
  static const String updatePost =
      '/social_platform/blogs/update_post_content/';
  // ! end newsfeed

  //^ notification
  static const String notifySocket = 'ws://$baseUrl/ws/notifications/';
  static const String getAllNotification =
      '/Notifications/get_all_notifications/';
  static const String markNotification =
      '/Notifications/mark_notification_as_read/';
  static const String markAllNotification =
      '/Notifications/mark_all_notifications_as_read/';
  // static const String notifySocket = '';
  //^ notification

  //*  profile
  static const String deliveryAddress =
      '/Customer_Dashboard/delivery_addresses/';
  static const String favoritesVendors =
      '/Favourites_vendors/favourites_vendors/';
  static const String userCars = '/Customer_Dashboard/user_cars/';
  static const String bussinessDetails = '/Vendors/bussiness_details/';
  static const String vendorBusinessBrances =
      '/Vendors/vendor_business_branches/';
  static const String categories = '/Vendors/business/categories/';
  static const String categoryBooking =
      '/Booking/GetBookingBussinessCategories/';
  //* end profile
  // static const String notifySocket = '';

  //! payment
  static const String bankCard = '/Vendors/bank_card/';
  static const String bankCardVendor = '/Vendors/update_get_bank_card/';
  static const String paymentCards = '/Customer_Dashboard/payment_cards/';
  //! end payment

  //~ landing
  static const String appReview = '/landing_page/app_reviews/';
  static const String getCommonIssues = '/landing_page/common_issues/';
  static const String faq = '/landing_page/faq/';
  static const String downloadPlatforms = '/landing_page/download_platforms/';
  static const String socialPlatforms = '/landing_page/social_platforms/';
  //~ end landing

  // location
  // end location

  // profile
  // end profile

  // & order
  static const String getPayCardsOrder = '/User_Orders/payment_cards/';
  static const String getAddressOrder = '/User_Orders/user_addresses/';
  static const String getOrderByStatus = '/User_Orders/get_orders_by_status/';
  static const String reOrder = '/Cart/cart/';
  static const String trackOrder = '/User_Orders/track_order/';
  static const String removeEndedOrder = '/User_Orders/remove_ended_order/';
  static const String getOrderDatabByStatus =
      '/Vendor_Dashboard/vendor_orders/get_orders_data_by_status';
  static const String getOrderProducts =
      '/Vendor_Dashboard/vendor_orders/get_order_products/';
  static const String getDeliveryOrPickupOrderDetails =
      '/Vendor_Dashboard/vendor_orders/get_delivery_or_pickup_order_details/';
  static const String acceptOrder =
      '/Vendor_Dashboard/vendor_orders/accept_order/';
  static const String rejectOrder =
      '/Vendor_Dashboard/vendor_orders/reject_order/';
  static const String updateOrderToShipped =
      '/Vendor_Dashboard/vendor_orders/update_order_to_shipped/';
  static const String cancelOrder = '/User_Orders/cancel_order/';
  static const String vendorReviews = '/Vendor_Dashboard/vendor_reviews';
  static const String createOrder = '/User_Orders/checkout/create_order/';
  static const String addOrderDetails =
      '/User_Orders/checkout/add_order_details/';
  static const String getOrdersByStatus = '/User_Orders/get_orders_by_status/';
  // static const String temp = '';
  // static const String temp = '';
  // static const String temp = '';
  // static const String temp = '';

  // & end order

  //! vendor

  static const String reviewsAnalysis =
      '/Vendor_Dashboard/home_screen/reviews_analysis/';
  static const String vendorBalance =
      '/Vendor_Dashboard/home_screen/vendor_balance/';
  static const String getOrderStatusCount =
      '/Vendor_Dashboard/home_screen/orders_analysis/';
  static const String getMostOrderedProducts =
      '/Vendor_Dashboard/home_screen/most_ordered_products/';
  //! end vendor

  // favorite
  static const String addFavvendor =
      '/Home/all_bussinesses_page/add_bussiness_to_fav/';
  static const String addFavProduct = '/Home/bussinesses/add_product_to_fav';
  static const String reviews = '/Home/bussinesses/product_reviews/';
  // static const String addFavProduct = '/Home/bussinesses/add_product_to_fav';
  static const String getFavVendor =
      '/Home/all_bussinesses_page/get_fav_businesses/';
  static const String deleteVendor =
      '/Home/all_bussinesses_page/delete_fav_businesses/';
  // end favorite

  //! home
  static const String sponsors = '/Home/get_sponsors/';
  static const String nearbyPlaces = '/Home/NearbyPlaces/';
  static const String nearbyPlacesBooking = '/Booking/NearbyPlaces/';
  static const String getVendorByFilterBooking = '/Booking/filter/';
  static const String getVendorBranches =
      '/Home/bussinesses/get_bussiness_branches/';
  static const String getAllVendorsByCategoryBooking =
      '/Booking/get_all_businesses/';
  static const String getVendorByIdBooking =
      '/Booking/get_bussinesses_details/';
  static const String searchUsingName = '/Home/search_using_name';
  static const String filter = '/Home/all_bussinesses_page/filter/';
  static const String getProductDetailsById =
      '/Vendor_Dashboard/products/get_specific_product_details/';
  static const String getProductByVendorId =
      '/Home/bussinesses/get_bussiness_products';
  static const String getProductByVendorIdFilter =
      '/Home/bussinesses/filter_bussiness_products/';
  static const String allVendorsByCategoryAndSerivce =
      '/Home/all_bussinesses_page/get_all_businesses/';
  static const String getVendorDetails =
      '/Home/bussinesses/get_bussinesses_details/';
  //! end home
}

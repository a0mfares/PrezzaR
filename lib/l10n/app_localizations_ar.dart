// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get iamVendor => 'أنا بائع';

  @override
  String get iamUser => 'أنا مستخدم';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPass => 'تأكيد كلمة المرور';

  @override
  String get forgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get or => 'أو';

  @override
  String get continueWithGoogle => 'تسجيل الدخول باستخدام Google';

  @override
  String get continueWithPhone => 'تسجيل الدخول باستخدام الهاتف';

  @override
  String get continueWithEmail => 'تسجيل الدخول باستخدام البريد الإلكتروني';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get signup => 'إنشاء حساب';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'الاسم الأخير';

  @override
  String get phone => 'رقم الهاتف';

  @override
  String get passwordValidaton => 'يجب أن تكون كلمات المرور على الأقل 8 أحرف:';

  @override
  String get upLetter => 'حرف كبير واحد (A-Z)';

  @override
  String get loLetter => 'حرف صغير واحد (a-z)';

  @override
  String get oneNumber => 'رقم واحد (0-9)';

  @override
  String get onSpecial => 'حرف خاص واحد';

  @override
  String get iwantRecive => 'أريد تلقي أحدث العروض والتحديثات';

  @override
  String get createAccount => 'إنشاء حساب';

  @override
  String get byCreating => 'بإنشاء حساب فإنك توافق على';

  @override
  String get terms => 'شروط الاستخدام';

  @override
  String get privacy => 'سياسة الخصوصية';

  @override
  String get and => ' و ';

  @override
  String get setupAccount => 'إعداد حسابك';

  @override
  String get resendCode => 'إعادة إرسال الكود خلال: ';

  @override
  String get confirm => 'تأكيد';

  @override
  String get plsEnterEmail => 'يرجى إدخال البريد الإلكتروني';

  @override
  String get plsEnterValidEmail => 'يرجى إدخال بريد إلكتروني صالح';

  @override
  String get plsEnterPass => 'يرجى إدخال كلمة المرور';

  @override
  String get plsEnterValidPass => 'يرجى إدخال كلمة مرور صالحة';

  @override
  String get yourPassNotMatch => 'كلمات المرور غير متطابقة';

  @override
  String get plsEnterFName => 'يرجى إدخال الاسم الأول';

  @override
  String get plsEnterLName => 'يرجى إدخال الاسم الأخير';

  @override
  String get plsEnterPhone => 'يرجى إدخال رقم الهاتف';

  @override
  String get plsEnterValidPhone => 'يرجى إدخال رقم هاتف صالح';

  @override
  String get plsActivateEmail => 'يرجى تفعيل بريدك الإلكتروني';

  @override
  String get verifyEmail => 'تأكيد البريد الإلكتروني';

  @override
  String get continueWithPhoneInst => 'استخدام رقم الهاتف بدلاً من ذلك';

  @override
  String get continueWithEmailInst => 'استخدام البريد الإلكتروني بدلاً من ذلك';

  @override
  String get enterEmailOrPhone =>
      'أدخل البريد الإلكتروني أو رقم الهاتف المرتبط بحسابك';

  @override
  String get changePass => 'تغيير كلمة المرور';

  @override
  String hiMsg(String userName) {
    return 'مرحباً $userName،';
  }

  @override
  String get goodAfterNon => 'مساء الخير!';

  @override
  String get emailOrPass => 'البريد الإلكتروني أو كلمة المرور غير صحيحة';

  @override
  String get emailNotFound => 'البريد الإلكتروني غير موجود';

  @override
  String get urIn => 'أنت في';

  @override
  String get searchCoffe => 'ابحث عن المقاهي، المطاعم، وغيرها';

  @override
  String get shareExp => 'شارك تجربتك';

  @override
  String get sponser => 'الرعاة';

  @override
  String get popularPlaces => 'الأماكن الشهيرة بالقرب منك';

  @override
  String get companyDetails => 'تفاصيل الشركة';

  @override
  String get tellUsAbout =>
      'أخبرنا عن عملك (سيشاهد العملاء هذه المعلومات على تطبيق بريزا للبحث والتواصل معك)';

  @override
  String get urBrandLogo => 'شعار علامتك التجارية';

  @override
  String get brandName => 'اسم العلامة التجارية';

  @override
  String get businessType => 'نوع النشاط التجاري';

  @override
  String get businessDescription => 'وصف النشاط التجاري';

  @override
  String get branches => 'الفروع';

  @override
  String get role => 'دورك';

  @override
  String get locations => 'مواقعك';

  @override
  String get describeBrand => 'وصف العلامة التجارية';

  @override
  String get roleInCompany => 'أدخل دورك في الشركة';

  @override
  String get operatingHours => 'ساعات العمل';

  @override
  String get servicesProvided => 'الخدمات المقدمة';

  @override
  String get deliveryOnly => 'التوصيل فقط';

  @override
  String get pickupOnly => 'الاستلام فقط';

  @override
  String get deliveryAndPickup => 'التوصيل والاستلام';

  @override
  String get addLocation => 'إضافة موقع جديد';

  @override
  String get address => 'العنوان';

  @override
  String get landmark => 'معلم قريب';

  @override
  String get addressTitle => 'عنوان الموقع';

  @override
  String get currentLocation => 'إضافة موقعك الحالي';

  @override
  String get processingRequest => 'جارٍ معالجة طلبك';

  @override
  String get thanksPatience => 'شكراً على صبرك';

  @override
  String get takePhoto => 'التقاط صورة';

  @override
  String get fromGallery => 'من المعرض';

  @override
  String get personalInfo => 'المعلومات الشخصية';

  @override
  String get businessInfo => 'معلومات العمل';

  @override
  String get settings => 'الإعدادات';

  @override
  String get feedback => 'التقييم';

  @override
  String get help => 'المساعدة';

  @override
  String get about => 'عن التطبيق';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get myAccount => 'حسابي';

  @override
  String get promotions => 'العروض';

  @override
  String get appUpdates => 'تحديثات التطبيق';

  @override
  String get languagePreference => 'تفضيل اللغة';

  @override
  String get themePreference => 'تفضيل السمة';

  @override
  String get overallRating => 'تقييم التطبيق العام';

  @override
  String get customerOpinions => 'آراء العملاء عنا';

  @override
  String get leaveFeedback => 'اترك تقييمك';

  @override
  String get commonIssues => 'المشاكل الشائعة';

  @override
  String get describeIssue => 'وصف مشكلتك';

  @override
  String get furtherHelp => 'تحتاج إلى مزيد من المساعدة؟';

  @override
  String get rateUs => 'قيّمنا';

  @override
  String get sendFeedback => 'اترك تقييمك';

  @override
  String get send => 'إرسال';

  @override
  String get orders => 'الطلبات';

  @override
  String get runningOrders => 'الطلبات الجارية';

  @override
  String get pendingOrders => 'الطلبات المعلقة';

  @override
  String get orderDetails => 'تفاصيل الطلب';

  @override
  String get done => 'تم';

  @override
  String orderId(String id) {
    return 'الرقم التعريفي: $id';
  }

  @override
  String get totalRevenue => 'إجمالي الإيرادات';

  @override
  String get daily => 'يومي';

  @override
  String get monthly => 'شهري';

  @override
  String get yearly => 'سنوي';

  @override
  String get reviews => 'التقييمات';

  @override
  String get seeAllReviews => 'عرض جميع التقييمات';

  @override
  String get mostOrderedThisWeek => 'الأكثر طلباً هذا الأسبوع';

  @override
  String get foodList => 'قائمة الطعام';

  @override
  String total(String price) {
    return 'الإجمالي: $price';
  }

  @override
  String get reject => 'رفض';

  @override
  String get accept => 'قبول';

  @override
  String get arrivesIn => 'سيصل خلال:';

  @override
  String get specialRequest => 'طلب خاص';

  @override
  String get size => 'الحجم';

  @override
  String get extras => 'الإضافات';

  @override
  String get sideItems => 'الأطباق الجانبية';

  @override
  String get orderAccepted => 'تم قبول الطلب';

  @override
  String get tellClient => 'هل ترغب في إخبار العميل بشيء؟';

  @override
  String get writeHere => 'اكتب هنا';

  @override
  String get cancel => 'إلغاء';

  @override
  String get orderRejected => 'تم رفض الطلب';

  @override
  String get clientReason => 'أخبر العميل بسبب الرفض';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get newItems => 'عناصر جديدة';

  @override
  String get itemName => 'اسم العنصر';

  @override
  String get uploadPhoto => 'رفع صورة';

  @override
  String get price => 'السعر';

  @override
  String get chooseCategory => 'اختر من الفئات';

  @override
  String get sizes => 'الأحجام';

  @override
  String get preparingTime => 'وقت التحضير';

  @override
  String get description => 'الوصف';

  @override
  String get apply => 'تطبيق';

  @override
  String get itemAdded => 'تم إضافة العنصر';

  @override
  String get ok => 'موافق';

  @override
  String get chooseDrink => 'اختر مشروبك الغازي';

  @override
  String chooseYourSideItem(String question) {
    return 'اختر $question الخاص بك: (مطلوب)';
  }

  @override
  String get addItem => 'إضافة عنصر';

  @override
  String get itemDetails => 'تفاصيل العنصر';

  @override
  String get addSize => 'إضافة حجم';

  @override
  String get question => 'سؤال';

  @override
  String get addOption => 'إضافة خيار';

  @override
  String get extraCharge => 'رسوم إضافية';

  @override
  String get nameCategory => 'سمِّ الفئة الجديدة';

  @override
  String get addCategory => 'إضافة فئة';

  @override
  String get newPhoneNumber => 'أدخل رقمك الجديد';

  @override
  String get smsOtp => 'سنرسل لك رمز OTP برسالة قصيرة';

  @override
  String get editPhoneNumber => 'تعديل رقم الهاتف';

  @override
  String get editEmailAddress => 'تعديل البريد الإلكتروني';

  @override
  String get newEmail => 'أدخل بريدك الإلكتروني الجديد';

  @override
  String get emailOtp => 'سنرسل لك رمز OTP بالبريد الإلكتروني';

  @override
  String get deliveryAddresses => 'عناوين التوصيل';

  @override
  String get addNewAddress => 'إضافة عنوان جديد';

  @override
  String get yourCars => 'سياراتك';

  @override
  String get addNewCar => 'إضافة سيارة جديدة';

  @override
  String get vehicleBrand => 'ماركة السيارة';

  @override
  String get vehicleModel => 'طراز السيارة';

  @override
  String get vehicleColor => 'لون السيارة';

  @override
  String get vehicleType => 'نوع السيارة';

  @override
  String get licensePlate => 'رقم اللوحة';

  @override
  String get add => 'إضافة';

  @override
  String get paymentMethods => 'طرق الدفع';

  @override
  String get addPaymentMethod => 'إضافة وسيلة دفع';

  @override
  String get cardHolderName => 'اسم حامل البطاقة';

  @override
  String get enterYourName => 'أدخل اسمك';

  @override
  String get cardNumber => 'رقم البطاقة';

  @override
  String get expiryDate => 'تاريخ الانتهاء';

  @override
  String get cvv => 'الرمز الأمني';

  @override
  String get allNotifications => 'الكل';

  @override
  String get newsFeed => 'آخر الأخبار';

  @override
  String get follow => 'متابعة';

  @override
  String get unfollow => 'إلغاء المتابعة';

  @override
  String get makeOrder => 'تقديم طلب';

  @override
  String get bookingSuccessful => 'تم الحجز بنجاح';

  @override
  String get bookingCanceled => 'تم إلغاء الحجز';

  @override
  String get dropOrder => 'إلغاء الطلب';

  @override
  String get inviteFriends => 'دعوة الأصدقاء';

  @override
  String inviteEarnPoints(String points) {
    return 'ادعُ أصدقائك واكسب $points نقطة';
  }

  @override
  String get invitationLink => 'أرسل رابط الدعوة أو الكود الخاص بك';

  @override
  String get freePoints => 'استمتع بـ 3000 نقطة مجانية';

  @override
  String get shareCode => 'شارك الكود الخاص بي';

  @override
  String get home => 'الرئيسية';

  @override
  String get booking => 'الحجز';

  @override
  String get filterSearch => 'تصفية البحث';

  @override
  String get distance => 'المسافة';

  @override
  String get estimatedTime => 'الوقت المتوقع';

  @override
  String rating(int count) {
    return '$count نتيجة';
  }

  @override
  String get cuisines => 'المطابخ';

  @override
  String get sortBy => 'فرز حسب';

  @override
  String get sortAZ => 'أ-ي';

  @override
  String get sortDistance => 'المسافة من المركز';

  @override
  String get sortHighToLow => 'التقييم (من الأعلى إلى الأقل)';

  @override
  String get sortLowToHigh => 'التقييم (من الأقل إلى الأعلى)';

  @override
  String get sort => 'فرز';

  @override
  String get allRestaurants => 'جميع المطاعم';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get pickup => 'استلام';

  @override
  String get delivery => 'توصيل';

  @override
  String get favorites => 'المفضلة';

  @override
  String deliveringTo(String address) {
    return 'التوصيل إلى $address';
  }

  @override
  String expectedPreparingTime(String value) {
    return 'الوقت المتوقع للتحضير: $value';
  }

  @override
  String get oftenOrderedWith => 'غالبًا ما يُطلب مع';

  @override
  String get specialRequestCart => 'أي طلب خاص';

  @override
  String get addToCart => 'إضافة إلى السلة';

  @override
  String priceWithCurrency(String price, String currency) {
    return '$price $currency';
  }

  @override
  String get cartEmpty => 'سلتك فارغة';

  @override
  String get trending => 'اطلع على الأكثر رواجاً';

  @override
  String get discoverProducts => 'استكشف المنتجات';

  @override
  String get clearCart => 'إفراغ السلة';

  @override
  String get cart => 'السلة';

  @override
  String get addDiscount => 'احصل على خصم';

  @override
  String get promoCode => 'أدخل كود الخصم';

  @override
  String get breakdown => 'تفصيل';

  @override
  String get addItems => 'إضافة عناصر';

  @override
  String get placeOrder => 'تأكيد الطلب';

  @override
  String get checkOut => 'الدفع';

  @override
  String get payWith => 'الدفع باستخدام';

  @override
  String get proceed => 'إتمام العملية';

  @override
  String get scheduleOrder => 'جدولة الطلب';

  @override
  String get trackOrder => 'تتبع الطلب';

  @override
  String get ongoing => 'جارية';

  @override
  String get history => 'السجل';

  @override
  String get reorder => 'إعادة الطلب';

  @override
  String get remove => 'إزالة';

  @override
  String get orderPlaced => 'تم تقديم طلبك';

  @override
  String orderPreparing(String storeName) {
    return '$storeName يقوم بتحضير طلبك';
  }

  @override
  String get orderOutForDelivery => 'طلبك في الطريق للتوصيل';

  @override
  String get gpsError => 'لا يوجد اتصال بـ GPS';

  @override
  String get gpsSettings => 'يرجى التحقق من إعدادات الموقع';

  @override
  String get goToGpsSettings => 'اذهب إلى إعدادات GPS';

  @override
  String get noCreditCards => 'لا توجد بطاقات ائتمان';

  @override
  String get addCreditCardPrompt => 'يرجى إضافة بطاقة ائتمان إلى حسابك';

  @override
  String get addCreditCard => 'إضافة بطاقة ائتمان';

  @override
  String get noNotifications => 'لا توجد إشعارات جديدة';

  @override
  String get createPost => 'إنشاء منشور';

  @override
  String get next => 'التالي';

  @override
  String get shareExperience => 'شارك تجربتك';

  @override
  String get addPhotos => 'إضافة صور';

  @override
  String get tagVendor => 'وضع علامة على البائع';

  @override
  String get mentionItem => 'اذكر العنصر';

  @override
  String get suggestions => 'اقتراحات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get followers => 'المتابعون';

  @override
  String get following => 'تتابع';

  @override
  String get feed => 'الخلاصة';

  @override
  String get saved => 'المحفوظات';

  @override
  String get save => 'حفظ';

  @override
  String get removeFollower => 'إزالة متابع';

  @override
  String get likes => 'الإعجابات';

  @override
  String get comments => 'التعليقات';

  @override
  String get urKnownName => 'اسمك المعروف';

  @override
  String get from => 'من';

  @override
  String get to => 'إلى';

  @override
  String get branchLocation => 'مواقع\nالفروع';

  @override
  String get more => 'المزيد';

  @override
  String get yourReferralCode => 'رمز الدعوه الخاص بكس';

  @override
  String get enjoy => 'استمتع';

  @override
  String get myLikeAdd => 'ربما ترغب في الإضافة';

  @override
  String get orderUpdate => 'تحديثات الطلبات';

  @override
  String get orderUpdateSubTitle =>
      'إشعارات عند وضع الطلب، أثناء التجهيز، وعند التسليم.';

  @override
  String get promotionsSubTitle =>
      'إشعارات عن الخصومات، العروض الخاصة، والعروض الموسمية.';

  @override
  String get appUpdatesSubTitle =>
      'إشعارات تتعلق بالتغييرات المهمة في التطبيق، الميزات الجديدة، أو التحديثات.';

  @override
  String get applePay => 'الدفع با ابل';

  @override
  String get cash => 'نقدًا';

  @override
  String get credit => 'بطاقة ائتمان';

  @override
  String get chooseCar => 'اختر السيارة';

  @override
  String youCanCanel(String time) {
    return 'يمكنك إلغاؤه خلال $time دقيقة كحد أقصى';
  }

  @override
  String get youCantCancel => 'لا يمكن إلغاء الطلب لأنه يتم تحضيره الآن';

  @override
  String get categories => 'الفئات';

  @override
  String get clickShowItems => 'اضغط هنا لعرض العناصر';

  @override
  String get clickAgain => 'اضغط مرة أخرى لإضافة عنصر جديد';

  @override
  String get clientsCanBook => 'يمكن للعملاء حجز مواعيد معي';

  @override
  String get brandNamePrompt => 'يرجى إدخال اسم العلامة التجارية';

  @override
  String get branchesCountPrompt => 'يرجى إدخال عدد الفروع';

  @override
  String get businessTypePrompt => 'يرجى اختيار نوع العمل';

  @override
  String get rolePrompt => 'يرجى إدخال دورك';

  @override
  String get descriptionPrompt => 'يرجى إدخال الوصف';

  @override
  String get openHoursPrompt => 'يرجى اختيار ساعات العمل';

  @override
  String get closeHoursPrompt => 'يرجى اختيار ساعات الإغلاق';

  @override
  String get providingPrompt => 'يرجى اختيار الخدمات المقدمة';

  @override
  String get bankName => 'اسم البنك';

  @override
  String get sideItemName => 'اسم العنصر الجانبي';

  @override
  String get extraname => 'اسم الإضافة';

  @override
  String get notSet => 'لم يتم تعين';

  @override
  String get deleteProduct => 'حذف المنتج';

  @override
  String get areUSure => 'هل انت متأكد من حذف هذا النتج';

  @override
  String get deletedProduct => 'تم حذف المنتج';

  @override
  String get productDeletedSuccess => 'تم حذف المنتج بنجاح';

  @override
  String get requiredField => 'حقل مطلوب';

  @override
  String get waitingWeAre => 'من فضلك انتظر، نحن نصنع السحر.';

  @override
  String get viewCard => 'عرض بطاقتك';

  @override
  String get plsAuth => 'يرجى التوثيق لعرض بطاقتك';

  @override
  String get useBiometrics =>
      'هل ترغب في استخدام بيانات التعريف البيومترية لعرض البطاقة؟';

  @override
  String get locationErrorPerm =>
      'لقد تم رفض أذونات الموقع بشكل دائم، ولا يمكننا طلب الأذونات.';

  @override
  String get areUSureDeleteLocation => 'هل أنت متأكد من حذف هذا الموقع؟';

  @override
  String get deleteLocation => 'حذف الموقع';

  @override
  String get areUSureDeleteBranche => 'هل أنت متأكد من حذف هذا الفرع؟';

  @override
  String get deleteBranche => 'حذف الفرع';

  @override
  String get areUSureDeleteCar => 'هل أنت متأكد من حذف هذه السيارة؟';

  @override
  String get deleteCar => 'حذف السيارة';

  @override
  String get enterValideDate => 'ادخل تاريخ صالح';

  @override
  String get enterValideCard => 'ادخل بيانات بطاقة صالحه';

  @override
  String get areUSureDeleteCard => 'هل أنت متأكد من حذف هذه البطاقة';

  @override
  String get deleteCard => 'حذف البطاقة';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get enterValideData => 'ادخل بيانات صالحه ';

  @override
  String get noFav => 'لا يوجد لديك مفضلة';

  @override
  String get required => 'مطلوب';

  @override
  String get selectOrderType => 'اختر نوع الطلب';

  @override
  String get phoneRequired => 'رقم الهاتف مطلوب';

  @override
  String get chooseDeliveryLoction => 'اختر موقع التوصيل';

  @override
  String get paymentRequired => 'الدفع مطلوب';

  @override
  String get addressRequired => 'العنوان مطلوب';

  @override
  String km(String distance) {
    return '$distance كم';
  }

  @override
  String get wholeWeak => 'خدمة 24/7';

  @override
  String get openNow => 'مفتوح الآن';

  @override
  String get plsCompleteSetup => 'يرجى إكمال ملف التسجيل';

  @override
  String get complete => 'إكمال';

  @override
  String get allSideItemRequired => 'جميع العناصر الجانبيه مطلوبه';

  @override
  String get pleaseSelectSize => 'رجائ حدد الحجم اولا';

  @override
  String get users => 'المستخدمين';

  @override
  String get noSavedPosts => 'لا يوجد منشورات الان!';

  @override
  String get noPosts => 'ليس لديك اي منشورات حاليا!';

  @override
  String get postSaved => 'تم الحفظ';

  @override
  String get noSponsers => 'لا تتوفر اعلانات';

  @override
  String get replys => 'الردود';

  @override
  String get replyComment => 'الرد علي تعليق';

  @override
  String get addComment => 'اضف تعليق';

  @override
  String get deleteComment => 'حذف التعليق';

  @override
  String get deleteReply => 'حذف الرد';

  @override
  String get noComment => 'لا يوجد تعليقات';

  @override
  String get skip => 'تخطي';

  @override
  String get letsStarted => 'لنبدأ';

  @override
  String get welcome => 'مرحبًا';

  @override
  String get welcomeTitle => 'نحن سعداء بوجودك هنا';

  @override
  String get orderAhead => 'اطلب مسبقًا';

  @override
  String get orderAheadTitle => 'اطلب أي شيء الآن واستلمه متى شئت!';

  @override
  String get bookTable => 'احجز طاولتك';

  @override
  String get bookTableTitle => 'احجز مكانك واستعد للأيام المزدحمة';

  @override
  String get allFav => 'جميع أماكنك المفضلة';

  @override
  String get allFavTitle => 'من الأسر المنتجة، المطاعم، المقاهي، وحتى الفنادق!';

  @override
  String get successUpdate => 'تم التحديث بنجاح';

  @override
  String get oldPass => 'كلمة المرور القديمة';

  @override
  String get areSureLogout => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get areSureExitProduct =>
      'هل أنت متأكد أنك تريد الخروج؟\nسيتم مسح البيانات الحالية ولن يتم حفظها.';

  @override
  String get caughtUp => 'لقد اطلعت على كل شيء!';

  @override
  String get plsSelectImg => 'يرجى اختيار صورة';

  @override
  String get youCanScroll =>
      'يمكنك التمرير لأعلى أو لأسفل\nلاستكشاف المزيد من العناصر الجانبية ويمكنك الضغط لعرض العناصر';

  @override
  String get plsSelectCategory => 'يرجى اختيار الفئة';

  @override
  String get incorectPass => 'كلمة المرور غير صحيحة';

  @override
  String get noPlaces => 'لا توجد أماكن';

  @override
  String get selectLocationNear => 'حدد الموقع لرؤية الأماكن القريبة';

  @override
  String get tabHereToChangeLocation =>
      'اضغط هنا لتغيير موقعك، إذا لم تتم إضافة الموقع فلن تظهر الأماكن القريبة.';

  @override
  String get seeMore => 'عرض المزيد';

  @override
  String get noResautrants => 'لا يوجد مطاعم';

  @override
  String get ratingTitle => 'التقييم';

  @override
  String get passwordIsRequired => 'كلمة المرور مطلوبة';

  @override
  String get anySpecialRequest => 'أي طلبات خاصة ؟';

  @override
  String get plsActivatePhone => 'يرجى تفعيل رقم هاتفك';

  @override
  String get verifyPhone => 'تأكيد رقم الهاتف';

  @override
  String get searchITem => 'البحث عن العناصر';

  @override
  String get addPhoneNum => 'إضافة رقم هاتف';

  @override
  String get failedTransaction => 'حدث خأ اثناء اكمال العملية';

  @override
  String get arrivalTimeError => 'وقت الوصول يجب ان يكون اكثر من ثلاث دقائق';

  @override
  String get retry => 'إعادة المحاولة';
}

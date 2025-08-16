import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @iamVendor.
  ///
  /// In en, this message translates to:
  /// **'I am Vendor'**
  String get iamVendor;

  /// No description provided for @iamUser.
  ///
  /// In en, this message translates to:
  /// **'I am User'**
  String get iamUser;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirmPass.
  ///
  /// In en, this message translates to:
  /// **'confirm pass'**
  String get confirmPass;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithPhone.
  ///
  /// In en, this message translates to:
  /// **'Continue with phone'**
  String get continueWithPhone;

  /// No description provided for @continueWithEmail.
  ///
  /// In en, this message translates to:
  /// **'Continue with E-Mail'**
  String get continueWithEmail;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAccount;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @passwordValidaton.
  ///
  /// In en, this message translates to:
  /// **'Passwords must be at least 8 characters:'**
  String get passwordValidaton;

  /// No description provided for @upLetter.
  ///
  /// In en, this message translates to:
  /// **'1 uppercase letter (A-Z)'**
  String get upLetter;

  /// No description provided for @loLetter.
  ///
  /// In en, this message translates to:
  /// **'1 lowercase letter (a-z)'**
  String get loLetter;

  /// No description provided for @oneNumber.
  ///
  /// In en, this message translates to:
  /// **'1 number (0-9)'**
  String get oneNumber;

  /// No description provided for @onSpecial.
  ///
  /// In en, this message translates to:
  /// **'1 special character'**
  String get onSpecial;

  /// No description provided for @iwantRecive.
  ///
  /// In en, this message translates to:
  /// **'I want to receive the latest offers and updates '**
  String get iwantRecive;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @byCreating.
  ///
  /// In en, this message translates to:
  /// **'By creating an account you Aggree to the'**
  String get byCreating;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get terms;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get and;

  /// No description provided for @setupAccount.
  ///
  /// In en, this message translates to:
  /// **'Set up your account'**
  String get setupAccount;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code in: '**
  String get resendCode;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @plsEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'please enter your email'**
  String get plsEnterEmail;

  /// No description provided for @plsEnterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'please enter valid email'**
  String get plsEnterValidEmail;

  /// No description provided for @plsEnterPass.
  ///
  /// In en, this message translates to:
  /// **'please enter your password'**
  String get plsEnterPass;

  /// No description provided for @plsEnterValidPass.
  ///
  /// In en, this message translates to:
  /// **'please enter valid password'**
  String get plsEnterValidPass;

  /// No description provided for @yourPassNotMatch.
  ///
  /// In en, this message translates to:
  /// **'your password not match'**
  String get yourPassNotMatch;

  /// No description provided for @plsEnterFName.
  ///
  /// In en, this message translates to:
  /// **'please enter first name'**
  String get plsEnterFName;

  /// No description provided for @plsEnterLName.
  ///
  /// In en, this message translates to:
  /// **'please enter last name'**
  String get plsEnterLName;

  /// No description provided for @plsEnterPhone.
  ///
  /// In en, this message translates to:
  /// **'please enter you phone'**
  String get plsEnterPhone;

  /// No description provided for @plsEnterValidPhone.
  ///
  /// In en, this message translates to:
  /// **'please enter valid phone'**
  String get plsEnterValidPhone;

  /// No description provided for @plsActivateEmail.
  ///
  /// In en, this message translates to:
  /// **'please activate your email'**
  String get plsActivateEmail;

  /// No description provided for @verifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify Email'**
  String get verifyEmail;

  /// No description provided for @continueWithPhoneInst.
  ///
  /// In en, this message translates to:
  /// **'Continue with phone number instead'**
  String get continueWithPhoneInst;

  /// No description provided for @continueWithEmailInst.
  ///
  /// In en, this message translates to:
  /// **'Continue with email address instead'**
  String get continueWithEmailInst;

  /// No description provided for @enterEmailOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address or phone\n number associated with your\n account'**
  String get enterEmailOrPhone;

  /// No description provided for @changePass.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePass;

  /// No description provided for @hiMsg.
  ///
  /// In en, this message translates to:
  /// **'Hey {userName},'**
  String hiMsg(String userName);

  /// No description provided for @goodAfterNon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon!'**
  String get goodAfterNon;

  /// No description provided for @emailOrPass.
  ///
  /// In en, this message translates to:
  /// **'email or pass incorrect'**
  String get emailOrPass;

  /// No description provided for @emailNotFound.
  ///
  /// In en, this message translates to:
  /// **'email not found'**
  String get emailNotFound;

  /// No description provided for @urIn.
  ///
  /// In en, this message translates to:
  /// **'You Are in'**
  String get urIn;

  /// No description provided for @searchCoffe.
  ///
  /// In en, this message translates to:
  /// **'Search Coffee Shops, Restaurants, etc'**
  String get searchCoffe;

  /// No description provided for @shareExp.
  ///
  /// In en, this message translates to:
  /// **'Share Your Experience '**
  String get shareExp;

  /// No description provided for @sponser.
  ///
  /// In en, this message translates to:
  /// **'Sponsors'**
  String get sponser;

  /// No description provided for @popularPlaces.
  ///
  /// In en, this message translates to:
  /// **'Popular Places Nearby'**
  String get popularPlaces;

  /// No description provided for @companyDetails.
  ///
  /// In en, this message translates to:
  /// **'Company Details'**
  String get companyDetails;

  /// No description provided for @tellUsAbout.
  ///
  /// In en, this message translates to:
  /// **'Tell us about your business ( your customers will see this information on Prezza app to search and contact you )'**
  String get tellUsAbout;

  /// No description provided for @urBrandLogo.
  ///
  /// In en, this message translates to:
  /// **'Your brand logo'**
  String get urBrandLogo;

  /// No description provided for @brandName.
  ///
  /// In en, this message translates to:
  /// **'Brand Name'**
  String get brandName;

  /// No description provided for @businessType.
  ///
  /// In en, this message translates to:
  /// **'BusinessType'**
  String get businessType;

  /// No description provided for @businessDescription.
  ///
  /// In en, this message translates to:
  /// **'Your Business type'**
  String get businessDescription;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'Branches'**
  String get branches;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Your Role'**
  String get role;

  /// No description provided for @locations.
  ///
  /// In en, this message translates to:
  /// **'Your locations'**
  String get locations;

  /// No description provided for @describeBrand.
  ///
  /// In en, this message translates to:
  /// **'Descripe your brand'**
  String get describeBrand;

  /// No description provided for @roleInCompany.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Role in the company'**
  String get roleInCompany;

  /// No description provided for @operatingHours.
  ///
  /// In en, this message translates to:
  /// **'Operatin hours'**
  String get operatingHours;

  /// No description provided for @servicesProvided.
  ///
  /// In en, this message translates to:
  /// **'I am providing'**
  String get servicesProvided;

  /// No description provided for @deliveryOnly.
  ///
  /// In en, this message translates to:
  /// **'Delivery Only'**
  String get deliveryOnly;

  /// No description provided for @pickupOnly.
  ///
  /// In en, this message translates to:
  /// **'Pickup Only'**
  String get pickupOnly;

  /// No description provided for @deliveryAndPickup.
  ///
  /// In en, this message translates to:
  /// **'Delivery & Pickup'**
  String get deliveryAndPickup;

  /// No description provided for @addLocation.
  ///
  /// In en, this message translates to:
  /// **'Add new lcoation'**
  String get addLocation;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @landmark.
  ///
  /// In en, this message translates to:
  /// **'landmark'**
  String get landmark;

  /// No description provided for @addressTitle.
  ///
  /// In en, this message translates to:
  /// **'Address Title'**
  String get addressTitle;

  /// No description provided for @currentLocation.
  ///
  /// In en, this message translates to:
  /// **'Add Your Current Location'**
  String get currentLocation;

  /// No description provided for @processingRequest.
  ///
  /// In en, this message translates to:
  /// **'We Are Processing your request'**
  String get processingRequest;

  /// No description provided for @thanksPatience.
  ///
  /// In en, this message translates to:
  /// **'Thanks for your patience'**
  String get thanksPatience;

  /// No description provided for @takePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get takePhoto;

  /// No description provided for @fromGallery.
  ///
  /// In en, this message translates to:
  /// **'From Gallery'**
  String get fromGallery;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personalInfo;

  /// No description provided for @businessInfo.
  ///
  /// In en, this message translates to:
  /// **'Business Info'**
  String get businessInfo;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @myAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get myAccount;

  /// No description provided for @promotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get promotions;

  /// No description provided for @appUpdates.
  ///
  /// In en, this message translates to:
  /// **'App Updates'**
  String get appUpdates;

  /// No description provided for @languagePreference.
  ///
  /// In en, this message translates to:
  /// **'Language Preference'**
  String get languagePreference;

  /// No description provided for @themePreference.
  ///
  /// In en, this message translates to:
  /// **'Theme Preference'**
  String get themePreference;

  /// No description provided for @overallRating.
  ///
  /// In en, this message translates to:
  /// **'Overall App Rating'**
  String get overallRating;

  /// No description provided for @customerOpinions.
  ///
  /// In en, this message translates to:
  /// **'What our customers think of us'**
  String get customerOpinions;

  /// No description provided for @leaveFeedback.
  ///
  /// In en, this message translates to:
  /// **'Leave Your Feedback'**
  String get leaveFeedback;

  /// No description provided for @commonIssues.
  ///
  /// In en, this message translates to:
  /// **'Common Issues'**
  String get commonIssues;

  /// No description provided for @describeIssue.
  ///
  /// In en, this message translates to:
  /// **'Descripe your issue'**
  String get describeIssue;

  /// No description provided for @furtherHelp.
  ///
  /// In en, this message translates to:
  /// **'Need Further Help?'**
  String get furtherHelp;

  /// No description provided for @rateUs.
  ///
  /// In en, this message translates to:
  /// **'Rate us'**
  String get rateUs;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'Leave Us feedback'**
  String get sendFeedback;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @runningOrders.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get runningOrders;

  /// No description provided for @pendingOrders.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pendingOrders;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get orderDetails;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @orderId.
  ///
  /// In en, this message translates to:
  /// **'ID:{id}'**
  String orderId(String id);

  /// No description provided for @totalRevenue.
  ///
  /// In en, this message translates to:
  /// **'Total Revenue'**
  String get totalRevenue;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get yearly;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reivews'**
  String get reviews;

  /// No description provided for @seeAllReviews.
  ///
  /// In en, this message translates to:
  /// **'See All Reviews'**
  String get seeAllReviews;

  /// No description provided for @mostOrderedThisWeek.
  ///
  /// In en, this message translates to:
  /// **'Most Ordered This Week'**
  String get mostOrderedThisWeek;

  /// No description provided for @foodList.
  ///
  /// In en, this message translates to:
  /// **'Food List'**
  String get foodList;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total: {price}'**
  String total(String price);

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @arrivesIn.
  ///
  /// In en, this message translates to:
  /// **'Arrives In:'**
  String get arrivesIn;

  /// No description provided for @specialRequest.
  ///
  /// In en, this message translates to:
  /// **'Special Request'**
  String get specialRequest;

  /// No description provided for @size.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// No description provided for @extras.
  ///
  /// In en, this message translates to:
  /// **'Extras'**
  String get extras;

  /// No description provided for @sideItems.
  ///
  /// In en, this message translates to:
  /// **'Side Items'**
  String get sideItems;

  /// No description provided for @orderAccepted.
  ///
  /// In en, this message translates to:
  /// **'You Acceepted the order'**
  String get orderAccepted;

  /// No description provided for @tellClient.
  ///
  /// In en, this message translates to:
  /// **'Would you like to tell your client any thing'**
  String get tellClient;

  /// No description provided for @writeHere.
  ///
  /// In en, this message translates to:
  /// **'Write here'**
  String get writeHere;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @orderRejected.
  ///
  /// In en, this message translates to:
  /// **'You rejected the order'**
  String get orderRejected;

  /// No description provided for @clientReason.
  ///
  /// In en, this message translates to:
  /// **'tell you client the reason'**
  String get clientReason;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @newItems.
  ///
  /// In en, this message translates to:
  /// **'New Items'**
  String get newItems;

  /// No description provided for @itemName.
  ///
  /// In en, this message translates to:
  /// **'Item Name'**
  String get itemName;

  /// No description provided for @uploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload Photo'**
  String get uploadPhoto;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @chooseCategory.
  ///
  /// In en, this message translates to:
  /// **'Choose From Categories'**
  String get chooseCategory;

  /// No description provided for @sizes.
  ///
  /// In en, this message translates to:
  /// **'Sizes'**
  String get sizes;

  /// No description provided for @preparingTime.
  ///
  /// In en, this message translates to:
  /// **'Preparing time'**
  String get preparingTime;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Discription'**
  String get description;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @itemAdded.
  ///
  /// In en, this message translates to:
  /// **'Item added'**
  String get itemAdded;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @chooseDrink.
  ///
  /// In en, this message translates to:
  /// **'Choose your soft drink'**
  String get chooseDrink;

  /// No description provided for @chooseYourSideItem.
  ///
  /// In en, this message translates to:
  /// **'Choose your {question}: (Required)'**
  String chooseYourSideItem(String question);

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get addItem;

  /// No description provided for @itemDetails.
  ///
  /// In en, this message translates to:
  /// **'Item Details'**
  String get itemDetails;

  /// No description provided for @addSize.
  ///
  /// In en, this message translates to:
  /// **'Add size'**
  String get addSize;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @addOption.
  ///
  /// In en, this message translates to:
  /// **'Add option'**
  String get addOption;

  /// No description provided for @extraCharge.
  ///
  /// In en, this message translates to:
  /// **'Extra Charge'**
  String get extraCharge;

  /// No description provided for @nameCategory.
  ///
  /// In en, this message translates to:
  /// **'Name your new Category'**
  String get nameCategory;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// No description provided for @newPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your new number'**
  String get newPhoneNumber;

  /// No description provided for @smsOtp.
  ///
  /// In en, this message translates to:
  /// **'We will sendd you an SMS with OTP code'**
  String get smsOtp;

  /// No description provided for @editPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Edit Phone\nNumber'**
  String get editPhoneNumber;

  /// No description provided for @editEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Edit Email\nAddress'**
  String get editEmailAddress;

  /// No description provided for @newEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your new mail'**
  String get newEmail;

  /// No description provided for @emailOtp.
  ///
  /// In en, this message translates to:
  /// **'we will sne you an email with OTP code'**
  String get emailOtp;

  /// No description provided for @deliveryAddresses.
  ///
  /// In en, this message translates to:
  /// **'Delivery\nAddresses'**
  String get deliveryAddresses;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @yourCars.
  ///
  /// In en, this message translates to:
  /// **'Your Cars'**
  String get yourCars;

  /// No description provided for @addNewCar.
  ///
  /// In en, this message translates to:
  /// **'Add New Car'**
  String get addNewCar;

  /// No description provided for @vehicleBrand.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Brand'**
  String get vehicleBrand;

  /// No description provided for @vehicleModel.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Model'**
  String get vehicleModel;

  /// No description provided for @vehicleColor.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Color'**
  String get vehicleColor;

  /// No description provided for @vehicleType.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Type'**
  String get vehicleType;

  /// No description provided for @licensePlate.
  ///
  /// In en, this message translates to:
  /// **'License plate'**
  String get licensePlate;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @paymentMethods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get paymentMethods;

  /// No description provided for @addPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Add Payment Method'**
  String get addPaymentMethod;

  /// No description provided for @cardHolderName.
  ///
  /// In en, this message translates to:
  /// **'Card Holder Name'**
  String get cardHolderName;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Name'**
  String get enterYourName;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @allNotifications.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allNotifications;

  /// No description provided for @newsFeed.
  ///
  /// In en, this message translates to:
  /// **'News Feed'**
  String get newsFeed;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @unfollow.
  ///
  /// In en, this message translates to:
  /// **'UnFollow'**
  String get unfollow;

  /// No description provided for @makeOrder.
  ///
  /// In en, this message translates to:
  /// **'Make Order'**
  String get makeOrder;

  /// No description provided for @bookingSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Booking Done successfully'**
  String get bookingSuccessful;

  /// No description provided for @bookingCanceled.
  ///
  /// In en, this message translates to:
  /// **'Booking Canceled'**
  String get bookingCanceled;

  /// No description provided for @dropOrder.
  ///
  /// In en, this message translates to:
  /// **'Drop Order'**
  String get dropOrder;

  /// No description provided for @inviteFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends'**
  String get inviteFriends;

  /// No description provided for @inviteEarnPoints.
  ///
  /// In en, this message translates to:
  /// **'Invite your firends and earn {points} pts'**
  String inviteEarnPoints(String points);

  /// No description provided for @invitationLink.
  ///
  /// In en, this message translates to:
  /// **'Send your friends your personal invitation link or code'**
  String get invitationLink;

  /// No description provided for @freePoints.
  ///
  /// In en, this message translates to:
  /// **'Enjoy your free 3,000 pts'**
  String get freePoints;

  /// No description provided for @shareCode.
  ///
  /// In en, this message translates to:
  /// **'Share My Code'**
  String get shareCode;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// No description provided for @filterSearch.
  ///
  /// In en, this message translates to:
  /// **'Filter your search'**
  String get filterSearch;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @estimatedTime.
  ///
  /// In en, this message translates to:
  /// **'Estimated Time'**
  String get estimatedTime;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'{count} Results'**
  String rating(int count);

  /// No description provided for @cuisines.
  ///
  /// In en, this message translates to:
  /// **'Cuisines'**
  String get cuisines;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortBy;

  /// No description provided for @sortAZ.
  ///
  /// In en, this message translates to:
  /// **'A-Z'**
  String get sortAZ;

  /// No description provided for @sortDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance From Center'**
  String get sortDistance;

  /// No description provided for @sortHighToLow.
  ///
  /// In en, this message translates to:
  /// **'Rating (High To Low)'**
  String get sortHighToLow;

  /// No description provided for @sortLowToHigh.
  ///
  /// In en, this message translates to:
  /// **'Rating (Low To High)'**
  String get sortLowToHigh;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @allRestaurants.
  ///
  /// In en, this message translates to:
  /// **'All resaurants'**
  String get allRestaurants;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @pickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get pickup;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @deliveringTo.
  ///
  /// In en, this message translates to:
  /// **'Delivering to\n{address}'**
  String deliveringTo(String address);

  /// No description provided for @expectedPreparingTime.
  ///
  /// In en, this message translates to:
  /// **'Expected preparing time: {value}'**
  String expectedPreparingTime(String value);

  /// No description provided for @oftenOrderedWith.
  ///
  /// In en, this message translates to:
  /// **'Often ordered with'**
  String get oftenOrderedWith;

  /// No description provided for @specialRequestCart.
  ///
  /// In en, this message translates to:
  /// **'Any Special Request'**
  String get specialRequestCart;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add To Cart'**
  String get addToCart;

  /// No description provided for @priceWithCurrency.
  ///
  /// In en, this message translates to:
  /// **'{price} {currency}'**
  String priceWithCurrency(String price, String currency);

  /// No description provided for @cartEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get cartEmpty;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Check out What\'s trending'**
  String get trending;

  /// No description provided for @discoverProducts.
  ///
  /// In en, this message translates to:
  /// **'Discover Products'**
  String get discoverProducts;

  /// No description provided for @clearCart.
  ///
  /// In en, this message translates to:
  /// **'Clear Cart'**
  String get clearCart;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @addDiscount.
  ///
  /// In en, this message translates to:
  /// **'Get Discount'**
  String get addDiscount;

  /// No description provided for @promoCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Promo Code'**
  String get promoCode;

  /// No description provided for @breakdown.
  ///
  /// In en, this message translates to:
  /// **'Breakdown'**
  String get breakdown;

  /// No description provided for @addItems.
  ///
  /// In en, this message translates to:
  /// **'Add Items'**
  String get addItems;

  /// No description provided for @placeOrder.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get placeOrder;

  /// No description provided for @checkOut.
  ///
  /// In en, this message translates to:
  /// **'Check Out'**
  String get checkOut;

  /// No description provided for @payWith.
  ///
  /// In en, this message translates to:
  /// **'Pay with'**
  String get payWith;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Procceed'**
  String get proceed;

  /// No description provided for @scheduleOrder.
  ///
  /// In en, this message translates to:
  /// **'Schedule Your Order'**
  String get scheduleOrder;

  /// No description provided for @trackOrder.
  ///
  /// In en, this message translates to:
  /// **'Track Order'**
  String get trackOrder;

  /// No description provided for @ongoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get ongoing;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @reorder.
  ///
  /// In en, this message translates to:
  /// **'Re-Order'**
  String get reorder;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @orderPlaced.
  ///
  /// In en, this message translates to:
  /// **'Your order has been placed'**
  String get orderPlaced;

  /// No description provided for @orderPreparing.
  ///
  /// In en, this message translates to:
  /// **'[{storeName}] is preparing your order'**
  String orderPreparing(String storeName);

  /// No description provided for @orderOutForDelivery.
  ///
  /// In en, this message translates to:
  /// **'Your order is out for delivery'**
  String get orderOutForDelivery;

  /// No description provided for @gpsError.
  ///
  /// In en, this message translates to:
  /// **'No GPS connection'**
  String get gpsError;

  /// No description provided for @gpsSettings.
  ///
  /// In en, this message translates to:
  /// **'please check for location'**
  String get gpsSettings;

  /// No description provided for @goToGpsSettings.
  ///
  /// In en, this message translates to:
  /// **'Go to GPS settings'**
  String get goToGpsSettings;

  /// No description provided for @noCreditCards.
  ///
  /// In en, this message translates to:
  /// **'no Credit cards'**
  String get noCreditCards;

  /// No description provided for @addCreditCardPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please add credit card to your account'**
  String get addCreditCardPrompt;

  /// No description provided for @addCreditCard.
  ///
  /// In en, this message translates to:
  /// **'Add a Credit Card'**
  String get addCreditCard;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'You dont\'t have new notification yet'**
  String get noNotifications;

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create Post'**
  String get createPost;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @shareExperience.
  ///
  /// In en, this message translates to:
  /// **'Share your experience'**
  String get shareExperience;

  /// No description provided for @addPhotos.
  ///
  /// In en, this message translates to:
  /// **'Add photos'**
  String get addPhotos;

  /// No description provided for @tagVendor.
  ///
  /// In en, this message translates to:
  /// **'Tag Vendor'**
  String get tagVendor;

  /// No description provided for @mentionItem.
  ///
  /// In en, this message translates to:
  /// **'Mention Item'**
  String get mentionItem;

  /// No description provided for @suggestions.
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get suggestions;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @removeFollower.
  ///
  /// In en, this message translates to:
  /// **'Remove Follower'**
  String get removeFollower;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get likes;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @urKnownName.
  ///
  /// In en, this message translates to:
  /// **'Your known name '**
  String get urKnownName;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'TO'**
  String get to;

  /// No description provided for @branchLocation.
  ///
  /// In en, this message translates to:
  /// **'Branches\nLocation'**
  String get branchLocation;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @yourReferralCode.
  ///
  /// In en, this message translates to:
  /// **'Your Referral Code'**
  String get yourReferralCode;

  /// No description provided for @enjoy.
  ///
  /// In en, this message translates to:
  /// **'Enjoy !'**
  String get enjoy;

  /// No description provided for @myLikeAdd.
  ///
  /// In en, this message translates to:
  /// **'May you like to add'**
  String get myLikeAdd;

  /// No description provided for @orderUpdate.
  ///
  /// In en, this message translates to:
  /// **'Order Update'**
  String get orderUpdate;

  /// No description provided for @orderUpdateSubTitle.
  ///
  /// In en, this message translates to:
  /// **'notifications for when the order is placed, in progress, and delivered.'**
  String get orderUpdateSubTitle;

  /// No description provided for @promotionsSubTitle.
  ///
  /// In en, this message translates to:
  /// **'notifications for discounts, special deals, and seasonal offers.'**
  String get promotionsSubTitle;

  /// No description provided for @appUpdatesSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications regarding important app changes, new features, or updates.'**
  String get appUpdatesSubTitle;

  /// No description provided for @applePay.
  ///
  /// In en, this message translates to:
  /// **'Apple pay'**
  String get applePay;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get credit;

  /// No description provided for @chooseCar.
  ///
  /// In en, this message translates to:
  /// **'choose your car'**
  String get chooseCar;

  /// No description provided for @youCanCanel.
  ///
  /// In en, this message translates to:
  /// **'You can cancel it within {time} mins max'**
  String youCanCanel(String time);

  /// No description provided for @youCantCancel.
  ///
  /// In en, this message translates to:
  /// **'Order Cannot be cancelled it is being prepared now'**
  String get youCantCancel;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @clickShowItems.
  ///
  /// In en, this message translates to:
  /// **'Tap here to show your items'**
  String get clickShowItems;

  /// No description provided for @clickAgain.
  ///
  /// In en, this message translates to:
  /// **'Tap Again to Add New Item'**
  String get clickAgain;

  /// No description provided for @clientsCanBook.
  ///
  /// In en, this message translates to:
  /// **'Clients can book appointments with me'**
  String get clientsCanBook;

  /// No description provided for @brandNamePrompt.
  ///
  /// In en, this message translates to:
  /// **'Please enter brand name'**
  String get brandNamePrompt;

  /// No description provided for @branchesCountPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please enter count of branches'**
  String get branchesCountPrompt;

  /// No description provided for @businessTypePrompt.
  ///
  /// In en, this message translates to:
  /// **'Please select business type'**
  String get businessTypePrompt;

  /// No description provided for @rolePrompt.
  ///
  /// In en, this message translates to:
  /// **'Please enter your role'**
  String get rolePrompt;

  /// No description provided for @descriptionPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please enter description'**
  String get descriptionPrompt;

  /// No description provided for @openHoursPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please select open hours'**
  String get openHoursPrompt;

  /// No description provided for @closeHoursPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please select close hours'**
  String get closeHoursPrompt;

  /// No description provided for @providingPrompt.
  ///
  /// In en, this message translates to:
  /// **'Please select providing'**
  String get providingPrompt;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @sideItemName.
  ///
  /// In en, this message translates to:
  /// **'Side item name'**
  String get sideItemName;

  /// No description provided for @extraname.
  ///
  /// In en, this message translates to:
  /// **'extra name'**
  String get extraname;

  /// No description provided for @notSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get notSet;

  /// No description provided for @deleteProduct.
  ///
  /// In en, this message translates to:
  /// **'Delete Product'**
  String get deleteProduct;

  /// No description provided for @areUSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure delete this product'**
  String get areUSure;

  /// No description provided for @deletedProduct.
  ///
  /// In en, this message translates to:
  /// **'Deleted Product'**
  String get deletedProduct;

  /// No description provided for @productDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Product deleted successfully'**
  String get productDeletedSuccess;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @waitingWeAre.
  ///
  /// In en, this message translates to:
  /// **'Please wait, we are making magic'**
  String get waitingWeAre;

  /// No description provided for @viewCard.
  ///
  /// In en, this message translates to:
  /// **'View Your Card'**
  String get viewCard;

  /// No description provided for @plsAuth.
  ///
  /// In en, this message translates to:
  /// **'Please Auth to view you card'**
  String get plsAuth;

  /// No description provided for @useBiometrics.
  ///
  /// In en, this message translates to:
  /// **'Use biometrics to show card?'**
  String get useBiometrics;

  /// No description provided for @locationErrorPerm.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied, we cannot request permissions.'**
  String get locationErrorPerm;

  /// No description provided for @areUSureDeleteLocation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure delete this location'**
  String get areUSureDeleteLocation;

  /// No description provided for @deleteLocation.
  ///
  /// In en, this message translates to:
  /// **'Delete location'**
  String get deleteLocation;

  /// No description provided for @areUSureDeleteBranche.
  ///
  /// In en, this message translates to:
  /// **'Are you sure delete this branche'**
  String get areUSureDeleteBranche;

  /// No description provided for @deleteBranche.
  ///
  /// In en, this message translates to:
  /// **'Delete branche'**
  String get deleteBranche;

  /// No description provided for @areUSureDeleteCar.
  ///
  /// In en, this message translates to:
  /// **'Are you sure delete this car'**
  String get areUSureDeleteCar;

  /// No description provided for @deleteCar.
  ///
  /// In en, this message translates to:
  /// **'Delete car'**
  String get deleteCar;

  /// No description provided for @enterValideDate.
  ///
  /// In en, this message translates to:
  /// **'Enter valide date'**
  String get enterValideDate;

  /// No description provided for @enterValideCard.
  ///
  /// In en, this message translates to:
  /// **'Enter valide card details'**
  String get enterValideCard;

  /// No description provided for @areUSureDeleteCard.
  ///
  /// In en, this message translates to:
  /// **'Are you sure delete this card'**
  String get areUSureDeleteCard;

  /// No description provided for @deleteCard.
  ///
  /// In en, this message translates to:
  /// **'Delete card'**
  String get deleteCard;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @enterValideData.
  ///
  /// In en, this message translates to:
  /// **'Enter Valide Data'**
  String get enterValideData;

  /// No description provided for @noFav.
  ///
  /// In en, this message translates to:
  /// **'No Favourites Yet'**
  String get noFav;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @selectOrderType.
  ///
  /// In en, this message translates to:
  /// **'Select order type'**
  String get selectOrderType;

  /// No description provided for @phoneRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneRequired;

  /// No description provided for @chooseDeliveryLoction.
  ///
  /// In en, this message translates to:
  /// **'Choose delivery location'**
  String get chooseDeliveryLoction;

  /// No description provided for @paymentRequired.
  ///
  /// In en, this message translates to:
  /// **'Payment method is required'**
  String get paymentRequired;

  /// No description provided for @addressRequired.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get addressRequired;

  /// No description provided for @km.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String km(String distance);

  /// No description provided for @wholeWeak.
  ///
  /// In en, this message translates to:
  /// **'24/7 Service'**
  String get wholeWeak;

  /// No description provided for @openNow.
  ///
  /// In en, this message translates to:
  /// **'Open now'**
  String get openNow;

  /// No description provided for @plsCompleteSetup.
  ///
  /// In en, this message translates to:
  /// **'please complete signup profile'**
  String get plsCompleteSetup;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @allSideItemRequired.
  ///
  /// In en, this message translates to:
  /// **'All side items required'**
  String get allSideItemRequired;

  /// No description provided for @pleaseSelectSize.
  ///
  /// In en, this message translates to:
  /// **'please select size first'**
  String get pleaseSelectSize;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @noSavedPosts.
  ///
  /// In en, this message translates to:
  /// **'No Saved Posts yet!'**
  String get noSavedPosts;

  /// No description provided for @noPosts.
  ///
  /// In en, this message translates to:
  /// **'You don\'t havae any posts yet!'**
  String get noPosts;

  /// No description provided for @postSaved.
  ///
  /// In en, this message translates to:
  /// **'Post Saved'**
  String get postSaved;

  /// No description provided for @noSponsers.
  ///
  /// In en, this message translates to:
  /// **'No Sponsers avaialable'**
  String get noSponsers;

  /// No description provided for @replys.
  ///
  /// In en, this message translates to:
  /// **'Replys'**
  String get replys;

  /// No description provided for @replyComment.
  ///
  /// In en, this message translates to:
  /// **'Reply comment'**
  String get replyComment;

  /// No description provided for @addComment.
  ///
  /// In en, this message translates to:
  /// **'Add comment'**
  String get addComment;

  /// No description provided for @deleteComment.
  ///
  /// In en, this message translates to:
  /// **'Delete comment'**
  String get deleteComment;

  /// No description provided for @deleteReply.
  ///
  /// In en, this message translates to:
  /// **'Delete Reply'**
  String get deleteReply;

  /// No description provided for @noComment.
  ///
  /// In en, this message translates to:
  /// **'No comments'**
  String get noComment;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @letsStarted.
  ///
  /// In en, this message translates to:
  /// **'Let`s Get Started'**
  String get letsStarted;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'we’re glad that that you are here'**
  String get welcomeTitle;

  /// No description provided for @orderAhead.
  ///
  /// In en, this message translates to:
  /// **'Order Ahead'**
  String get orderAhead;

  /// No description provided for @orderAheadTitle.
  ///
  /// In en, this message translates to:
  /// **'Order Any thing now and pick it up whenever you want !'**
  String get orderAheadTitle;

  /// No description provided for @bookTable.
  ///
  /// In en, this message translates to:
  /// **'Book your Table'**
  String get bookTable;

  /// No description provided for @bookTableTitle.
  ///
  /// In en, this message translates to:
  /// **'Book your place and be ready for busy days'**
  String get bookTableTitle;

  /// No description provided for @allFav.
  ///
  /// In en, this message translates to:
  /// **'All Your Favorite Places'**
  String get allFav;

  /// No description provided for @allFavTitle.
  ///
  /// In en, this message translates to:
  /// **'From Productive Families, Restaurants, Coffee Shops and even Hotels !'**
  String get allFavTitle;

  /// No description provided for @successUpdate.
  ///
  /// In en, this message translates to:
  /// **'Success update'**
  String get successUpdate;

  /// No description provided for @oldPass.
  ///
  /// In en, this message translates to:
  /// **'Old password'**
  String get oldPass;

  /// No description provided for @areSureLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure logout?'**
  String get areSureLogout;

  /// No description provided for @areSureExitProduct.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit?\n The current data will be erased and will not be saved.'**
  String get areSureExitProduct;

  /// No description provided for @caughtUp.
  ///
  /// In en, this message translates to:
  /// **'You`re all caught up!'**
  String get caughtUp;

  /// No description provided for @plsSelectImg.
  ///
  /// In en, this message translates to:
  /// **'Please Select Image'**
  String get plsSelectImg;

  /// No description provided for @youCanScroll.
  ///
  /// In en, this message translates to:
  /// **'You can scroll up or down\nto explore more side items and you can press to show items'**
  String get youCanScroll;

  /// No description provided for @plsSelectCategory.
  ///
  /// In en, this message translates to:
  /// **'Please select category'**
  String get plsSelectCategory;

  /// No description provided for @incorectPass.
  ///
  /// In en, this message translates to:
  /// **'Inccorect password'**
  String get incorectPass;

  /// No description provided for @noPlaces.
  ///
  /// In en, this message translates to:
  /// **'No Places'**
  String get noPlaces;

  /// No description provided for @selectLocationNear.
  ///
  /// In en, this message translates to:
  /// **'Select location to see nearby places'**
  String get selectLocationNear;

  /// No description provided for @tabHereToChangeLocation.
  ///
  /// In en, this message translates to:
  /// **'Tab here to change your location if location not added the nearby places not shown.'**
  String get tabHereToChangeLocation;

  /// No description provided for @seeMore.
  ///
  /// In en, this message translates to:
  /// **'See More'**
  String get seeMore;

  /// No description provided for @noResautrants.
  ///
  /// In en, this message translates to:
  /// **'No Resaurants'**
  String get noResautrants;

  /// No description provided for @ratingTitle.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get ratingTitle;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required to update personal info'**
  String get passwordIsRequired;

  /// No description provided for @anySpecialRequest.
  ///
  /// In en, this message translates to:
  /// **'Any Special Request?'**
  String get anySpecialRequest;

  /// No description provided for @plsActivatePhone.
  ///
  /// In en, this message translates to:
  /// **'please activate you phone'**
  String get plsActivatePhone;

  /// No description provided for @verifyPhone.
  ///
  /// In en, this message translates to:
  /// **'very phone'**
  String get verifyPhone;

  /// No description provided for @searchITem.
  ///
  /// In en, this message translates to:
  /// **'Search Items'**
  String get searchITem;

  /// No description provided for @addPhoneNum.
  ///
  /// In en, this message translates to:
  /// **'Add Phone Number'**
  String get addPhoneNum;

  /// No description provided for @failedTransaction.
  ///
  /// In en, this message translates to:
  /// **'failed to complete transaction'**
  String get failedTransaction;

  /// No description provided for @arrivalTimeError.
  ///
  /// In en, this message translates to:
  /// **'Arrival time must be more than 3 minutes from now'**
  String get arrivalTimeError;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

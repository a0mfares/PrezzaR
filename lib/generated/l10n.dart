// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `I am Vendor`
  String get iamVendor {
    return Intl.message(
      'I am Vendor',
      name: 'iamVendor',
      desc: '',
      args: [],
    );
  }

  /// `I am User`
  String get iamUser {
    return Intl.message(
      'I am User',
      name: 'iamUser',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `confirm pass`
  String get confirmPass {
    return Intl.message(
      'confirm pass',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with phone`
  String get continueWithPhone {
    return Intl.message(
      'Continue with phone',
      name: 'continueWithPhone',
      desc: '',
      args: [],
    );
  }

  /// `Continue with E-Mail`
  String get continueWithEmail {
    return Intl.message(
      'Continue with E-Mail',
      name: 'continueWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must be at least 8 characters:`
  String get passwordValidaton {
    return Intl.message(
      'Passwords must be at least 8 characters:',
      name: 'passwordValidaton',
      desc: '',
      args: [],
    );
  }

  /// `1 uppercase letter (A-Z)`
  String get upLetter {
    return Intl.message(
      '1 uppercase letter (A-Z)',
      name: 'upLetter',
      desc: '',
      args: [],
    );
  }

  /// `1 lowercase letter (a-z)`
  String get loLetter {
    return Intl.message(
      '1 lowercase letter (a-z)',
      name: 'loLetter',
      desc: '',
      args: [],
    );
  }

  /// `1 number (0-9)`
  String get oneNumber {
    return Intl.message(
      '1 number (0-9)',
      name: 'oneNumber',
      desc: '',
      args: [],
    );
  }

  /// `1 special character`
  String get onSpecial {
    return Intl.message(
      '1 special character',
      name: 'onSpecial',
      desc: '',
      args: [],
    );
  }

  /// `I want to receive the latest offers and updates `
  String get iwantRecive {
    return Intl.message(
      'I want to receive the latest offers and updates ',
      name: 'iwantRecive',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account you Aggree to the`
  String get byCreating {
    return Intl.message(
      'By creating an account you Aggree to the',
      name: 'byCreating',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms {
    return Intl.message(
      'Terms of Use',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(
      ' and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Set up your account`
  String get setupAccount {
    return Intl.message(
      'Set up your account',
      name: 'setupAccount',
      desc: '',
      args: [],
    );
  }

  /// `Resend code in: `
  String get resendCode {
    return Intl.message(
      'Resend code in: ',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `please enter your email`
  String get plsEnterEmail {
    return Intl.message(
      'please enter your email',
      name: 'plsEnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `please enter valid email`
  String get plsEnterValidEmail {
    return Intl.message(
      'please enter valid email',
      name: 'plsEnterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `please enter your password`
  String get plsEnterPass {
    return Intl.message(
      'please enter your password',
      name: 'plsEnterPass',
      desc: '',
      args: [],
    );
  }

  /// `please enter valid password`
  String get plsEnterValidPass {
    return Intl.message(
      'please enter valid password',
      name: 'plsEnterValidPass',
      desc: '',
      args: [],
    );
  }

  /// `your password not match`
  String get yourPassNotMatch {
    return Intl.message(
      'your password not match',
      name: 'yourPassNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `please enter first name`
  String get plsEnterFName {
    return Intl.message(
      'please enter first name',
      name: 'plsEnterFName',
      desc: '',
      args: [],
    );
  }

  /// `please enter last name`
  String get plsEnterLName {
    return Intl.message(
      'please enter last name',
      name: 'plsEnterLName',
      desc: '',
      args: [],
    );
  }

  /// `please enter you phone`
  String get plsEnterPhone {
    return Intl.message(
      'please enter you phone',
      name: 'plsEnterPhone',
      desc: '',
      args: [],
    );
  }

  /// `please enter valid phone`
  String get plsEnterValidPhone {
    return Intl.message(
      'please enter valid phone',
      name: 'plsEnterValidPhone',
      desc: '',
      args: [],
    );
  }

  /// `please activate your email`
  String get plsActivateEmail {
    return Intl.message(
      'please activate your email',
      name: 'plsActivateEmail',
      desc: '',
      args: [],
    );
  }

  /// `Verify Email`
  String get verifyEmail {
    return Intl.message(
      'Verify Email',
      name: 'verifyEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please activate your phone`
  String get plsActivatePhone {
    return Intl.message(
      'Please activate your phone',
      name: 'plsActivatePhone',
      desc: '',
      args: [],
    );
  }

  /// `Verify Phone`
  String get verifyPhone {
    return Intl.message(
      'Verify Phone',
      name: 'verifyPhone',
      desc: '',
      args: [],
    );
  }

  /// `Continue with phone number instead`
  String get continueWithPhoneInst {
    return Intl.message(
      'Continue with phone number instead',
      name: 'continueWithPhoneInst',
      desc: '',
      args: [],
    );
  }

  /// `Continue with email address instead`
  String get continueWithEmailInst {
    return Intl.message(
      'Continue with email address instead',
      name: 'continueWithEmailInst',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address or phone\n number associated with your\n account`
  String get enterEmailOrPhone {
    return Intl.message(
      'Enter your email address or phone\n number associated with your\n account',
      name: 'enterEmailOrPhone',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePass {
    return Intl.message(
      'Change Password',
      name: 'changePass',
      desc: '',
      args: [],
    );
  }

  /// `Hey {userName},`
  String hiMsg(String userName) {
    return Intl.message(
      'Hey $userName,',
      name: 'hiMsg',
      desc: '',
      args: [userName],
    );
  }

  /// `Good Afternoon!`
  String get goodAfterNon {
    return Intl.message(
      'Good Afternoon!',
      name: 'goodAfterNon',
      desc: '',
      args: [],
    );
  }

  /// `email or pass incorrect`
  String get emailOrPass {
    return Intl.message(
      'email or pass incorrect',
      name: 'emailOrPass',
      desc: '',
      args: [],
    );
  }

  /// `email not found`
  String get emailNotFound {
    return Intl.message(
      'email not found',
      name: 'emailNotFound',
      desc: '',
      args: [],
    );
  }

  /// `You Are in`
  String get urIn {
    return Intl.message(
      'You Are in',
      name: 'urIn',
      desc: '',
      args: [],
    );
  }

  /// `Search Coffee Shops, Restaurants, etc`
  String get searchCoffe {
    return Intl.message(
      'Search Coffee Shops, Restaurants, etc',
      name: 'searchCoffe',
      desc: '',
      args: [],
    );
  }

  /// `Share Your Experience `
  String get shareExp {
    return Intl.message(
      'Share Your Experience ',
      name: 'shareExp',
      desc: '',
      args: [],
    );
  }

  /// `Sponsors`
  String get sponser {
    return Intl.message(
      'Sponsors',
      name: 'sponser',
      desc: '',
      args: [],
    );
  }

  /// `Popular Places Nearby`
  String get popularPlaces {
    return Intl.message(
      'Popular Places Nearby',
      name: 'popularPlaces',
      desc: '',
      args: [],
    );
  }

  /// `Company Details`
  String get companyDetails {
    return Intl.message(
      'Company Details',
      name: 'companyDetails',
      desc: '',
      args: [],
    );
  }

  /// `Tell us about your business ( your customers will see this information on Prezza app to search and contact you )`
  String get tellUsAbout {
    return Intl.message(
      'Tell us about your business ( your customers will see this information on Prezza app to search and contact you )',
      name: 'tellUsAbout',
      desc: '',
      args: [],
    );
  }

  /// `Your brand logo`
  String get urBrandLogo {
    return Intl.message(
      'Your brand logo',
      name: 'urBrandLogo',
      desc: '',
      args: [],
    );
  }

  /// `Brand Name`
  String get brandName {
    return Intl.message(
      'Brand Name',
      name: 'brandName',
      desc: '',
      args: [],
    );
  }

  /// `BusinessType`
  String get businessType {
    return Intl.message(
      'BusinessType',
      name: 'businessType',
      desc: '',
      args: [],
    );
  }

  /// `Your Business type`
  String get businessDescription {
    return Intl.message(
      'Your Business type',
      name: 'businessDescription',
      desc: '',
      args: [],
    );
  }

  /// `Branches`
  String get branches {
    return Intl.message(
      'Branches',
      name: 'branches',
      desc: '',
      args: [],
    );
  }

  /// `Your Role`
  String get role {
    return Intl.message(
      'Your Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `Your locations`
  String get locations {
    return Intl.message(
      'Your locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Descripe your brand`
  String get describeBrand {
    return Intl.message(
      'Descripe your brand',
      name: 'describeBrand',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Role in the company`
  String get roleInCompany {
    return Intl.message(
      'Enter Your Role in the company',
      name: 'roleInCompany',
      desc: '',
      args: [],
    );
  }

  /// `Operatin hours`
  String get operatingHours {
    return Intl.message(
      'Operatin hours',
      name: 'operatingHours',
      desc: '',
      args: [],
    );
  }

  /// `I am providing`
  String get servicesProvided {
    return Intl.message(
      'I am providing',
      name: 'servicesProvided',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Only`
  String get deliveryOnly {
    return Intl.message(
      'Delivery Only',
      name: 'deliveryOnly',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Only`
  String get pickupOnly {
    return Intl.message(
      'Pickup Only',
      name: 'pickupOnly',
      desc: '',
      args: [],
    );
  }

  /// `Delivery & Pickup`
  String get deliveryAndPickup {
    return Intl.message(
      'Delivery & Pickup',
      name: 'deliveryAndPickup',
      desc: '',
      args: [],
    );
  }

  /// `Add new lcoation`
  String get addLocation {
    return Intl.message(
      'Add new lcoation',
      name: 'addLocation',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `landmark`
  String get landmark {
    return Intl.message(
      'landmark',
      name: 'landmark',
      desc: '',
      args: [],
    );
  }

  /// `Address Title`
  String get addressTitle {
    return Intl.message(
      'Address Title',
      name: 'addressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add Your Current Location`
  String get currentLocation {
    return Intl.message(
      'Add Your Current Location',
      name: 'currentLocation',
      desc: '',
      args: [],
    );
  }

  /// `We Are Processing your request`
  String get processingRequest {
    return Intl.message(
      'We Are Processing your request',
      name: 'processingRequest',
      desc: '',
      args: [],
    );
  }

  /// `Thanks for your patience`
  String get thanksPatience {
    return Intl.message(
      'Thanks for your patience',
      name: 'thanksPatience',
      desc: '',
      args: [],
    );
  }

  /// `Take Photo`
  String get takePhoto {
    return Intl.message(
      'Take Photo',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `From Gallery`
  String get fromGallery {
    return Intl.message(
      'From Gallery',
      name: 'fromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personalInfo {
    return Intl.message(
      'Personal Info',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Business Info`
  String get businessInfo {
    return Intl.message(
      'Business Info',
      name: 'businessInfo',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get myAccount {
    return Intl.message(
      'My Account',
      name: 'myAccount',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get promotions {
    return Intl.message(
      'Promotions',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `App Updates`
  String get appUpdates {
    return Intl.message(
      'App Updates',
      name: 'appUpdates',
      desc: '',
      args: [],
    );
  }

  /// `Language Preference`
  String get languagePreference {
    return Intl.message(
      'Language Preference',
      name: 'languagePreference',
      desc: '',
      args: [],
    );
  }

  /// `Theme Preference`
  String get themePreference {
    return Intl.message(
      'Theme Preference',
      name: 'themePreference',
      desc: '',
      args: [],
    );
  }

  /// `Overall App Rating`
  String get overallRating {
    return Intl.message(
      'Overall App Rating',
      name: 'overallRating',
      desc: '',
      args: [],
    );
  }

  /// `What our customers think of us`
  String get customerOpinions {
    return Intl.message(
      'What our customers think of us',
      name: 'customerOpinions',
      desc: '',
      args: [],
    );
  }

  /// `Leave Your Feedback`
  String get leaveFeedback {
    return Intl.message(
      'Leave Your Feedback',
      name: 'leaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Common Issues`
  String get commonIssues {
    return Intl.message(
      'Common Issues',
      name: 'commonIssues',
      desc: '',
      args: [],
    );
  }

  /// `Descripe your issue`
  String get describeIssue {
    return Intl.message(
      'Descripe your issue',
      name: 'describeIssue',
      desc: '',
      args: [],
    );
  }

  /// `Need Further Help?`
  String get furtherHelp {
    return Intl.message(
      'Need Further Help?',
      name: 'furtherHelp',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get rateUs {
    return Intl.message(
      'Rate us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Leave Us feedback`
  String get sendFeedback {
    return Intl.message(
      'Leave Us feedback',
      name: 'sendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Running`
  String get runningOrders {
    return Intl.message(
      'Running',
      name: 'runningOrders',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pendingOrders {
    return Intl.message(
      'Pending',
      name: 'pendingOrders',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get orderDetails {
    return Intl.message(
      'Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `ID:{id}`
  String orderId(String id) {
    return Intl.message(
      'ID:$id',
      name: 'orderId',
      desc: '',
      args: [id],
    );
  }

  /// `Total Revenue`
  String get totalRevenue {
    return Intl.message(
      'Total Revenue',
      name: 'totalRevenue',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Yearly`
  String get yearly {
    return Intl.message(
      'Yearly',
      name: 'yearly',
      desc: '',
      args: [],
    );
  }

  /// `Reivews`
  String get reviews {
    return Intl.message(
      'Reivews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `See All Reviews`
  String get seeAllReviews {
    return Intl.message(
      'See All Reviews',
      name: 'seeAllReviews',
      desc: '',
      args: [],
    );
  }

  /// `Most Ordered This Week`
  String get mostOrderedThisWeek {
    return Intl.message(
      'Most Ordered This Week',
      name: 'mostOrderedThisWeek',
      desc: '',
      args: [],
    );
  }

  /// `Food List`
  String get foodList {
    return Intl.message(
      'Food List',
      name: 'foodList',
      desc: '',
      args: [],
    );
  }

  /// `Total: {price}`
  String total(String price) {
    return Intl.message(
      'Total: $price',
      name: 'total',
      desc: '',
      args: [price],
    );
  }

  /// `Reject`
  String get reject {
    return Intl.message(
      'Reject',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Arrives In:`
  String get arrivesIn {
    return Intl.message(
      'Arrives In:',
      name: 'arrivesIn',
      desc: '',
      args: [],
    );
  }

  /// `Special Request`
  String get specialRequest {
    return Intl.message(
      'Special Request',
      name: 'specialRequest',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Extras`
  String get extras {
    return Intl.message(
      'Extras',
      name: 'extras',
      desc: '',
      args: [],
    );
  }

  /// `Side Items`
  String get sideItems {
    return Intl.message(
      'Side Items',
      name: 'sideItems',
      desc: '',
      args: [],
    );
  }

  /// `You Acceepted the order`
  String get orderAccepted {
    return Intl.message(
      'You Acceepted the order',
      name: 'orderAccepted',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to tell your client any thing`
  String get tellClient {
    return Intl.message(
      'Would you like to tell your client any thing',
      name: 'tellClient',
      desc: '',
      args: [],
    );
  }

  /// `Write here`
  String get writeHere {
    return Intl.message(
      'Write here',
      name: 'writeHere',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `You rejected the order`
  String get orderRejected {
    return Intl.message(
      'You rejected the order',
      name: 'orderRejected',
      desc: '',
      args: [],
    );
  }

  /// `tell you client the reason`
  String get clientReason {
    return Intl.message(
      'tell you client the reason',
      name: 'clientReason',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `New Items`
  String get newItems {
    return Intl.message(
      'New Items',
      name: 'newItems',
      desc: '',
      args: [],
    );
  }

  /// `Item Name`
  String get itemName {
    return Intl.message(
      'Item Name',
      name: 'itemName',
      desc: '',
      args: [],
    );
  }

  /// `Upload Photo`
  String get uploadPhoto {
    return Intl.message(
      'Upload Photo',
      name: 'uploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Choose From Categories`
  String get chooseCategory {
    return Intl.message(
      'Choose From Categories',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Sizes`
  String get sizes {
    return Intl.message(
      'Sizes',
      name: 'sizes',
      desc: '',
      args: [],
    );
  }

  /// `Preparing time`
  String get preparingTime {
    return Intl.message(
      'Preparing time',
      name: 'preparingTime',
      desc: '',
      args: [],
    );
  }

  /// `Discription`
  String get description {
    return Intl.message(
      'Discription',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Item added`
  String get itemAdded {
    return Intl.message(
      'Item added',
      name: 'itemAdded',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Choose your soft drink`
  String get chooseDrink {
    return Intl.message(
      'Choose your soft drink',
      name: 'chooseDrink',
      desc: '',
      args: [],
    );
  }

  /// `Choose your {question}: (Required)`
  String chooseYourSideItem(String question) {
    return Intl.message(
      'Choose your $question: (Required)',
      name: 'chooseYourSideItem',
      desc: '',
      args: [question],
    );
  }

  /// `Add Item`
  String get addItem {
    return Intl.message(
      'Add Item',
      name: 'addItem',
      desc: '',
      args: [],
    );
  }

  /// `Item Details`
  String get itemDetails {
    return Intl.message(
      'Item Details',
      name: 'itemDetails',
      desc: '',
      args: [],
    );
  }

  /// `Add size`
  String get addSize {
    return Intl.message(
      'Add size',
      name: 'addSize',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get question {
    return Intl.message(
      'Question',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `Add option`
  String get addOption {
    return Intl.message(
      'Add option',
      name: 'addOption',
      desc: '',
      args: [],
    );
  }

  /// `Extra Charge`
  String get extraCharge {
    return Intl.message(
      'Extra Charge',
      name: 'extraCharge',
      desc: '',
      args: [],
    );
  }

  /// `Name your new Category`
  String get nameCategory {
    return Intl.message(
      'Name your new Category',
      name: 'nameCategory',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get addCategory {
    return Intl.message(
      'Add Category',
      name: 'addCategory',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new number`
  String get newPhoneNumber {
    return Intl.message(
      'Enter your new number',
      name: 'newPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `We will sendd you an SMS with OTP code`
  String get smsOtp {
    return Intl.message(
      'We will sendd you an SMS with OTP code',
      name: 'smsOtp',
      desc: '',
      args: [],
    );
  }

  /// `Edit Phone\nNumber`
  String get editPhoneNumber {
    return Intl.message(
      'Edit Phone\nNumber',
      name: 'editPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Edit Email\nAddress`
  String get editEmailAddress {
    return Intl.message(
      'Edit Email\nAddress',
      name: 'editEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new mail`
  String get newEmail {
    return Intl.message(
      'Enter your new mail',
      name: 'newEmail',
      desc: '',
      args: [],
    );
  }

  /// `we will sne you an email with OTP code`
  String get emailOtp {
    return Intl.message(
      'we will sne you an email with OTP code',
      name: 'emailOtp',
      desc: '',
      args: [],
    );
  }

  /// `Delivery\nAddresses`
  String get deliveryAddresses {
    return Intl.message(
      'Delivery\nAddresses',
      name: 'deliveryAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get addNewAddress {
    return Intl.message(
      'Add New Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Your Cars`
  String get yourCars {
    return Intl.message(
      'Your Cars',
      name: 'yourCars',
      desc: '',
      args: [],
    );
  }

  /// `Add New Car`
  String get addNewCar {
    return Intl.message(
      'Add New Car',
      name: 'addNewCar',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Brand`
  String get vehicleBrand {
    return Intl.message(
      'Vehicle Brand',
      name: 'vehicleBrand',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Model`
  String get vehicleModel {
    return Intl.message(
      'Vehicle Model',
      name: 'vehicleModel',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Color`
  String get vehicleColor {
    return Intl.message(
      'Vehicle Color',
      name: 'vehicleColor',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Type`
  String get vehicleType {
    return Intl.message(
      'Vehicle Type',
      name: 'vehicleType',
      desc: '',
      args: [],
    );
  }

  /// `License plate`
  String get licensePlate {
    return Intl.message(
      'License plate',
      name: 'licensePlate',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get paymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Add Payment Method`
  String get addPaymentMethod {
    return Intl.message(
      'Add Payment Method',
      name: 'addPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder Name`
  String get cardHolderName {
    return Intl.message(
      'Card Holder Name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Name`
  String get enterYourName {
    return Intl.message(
      'Enter Your Name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get allNotifications {
    return Intl.message(
      'All',
      name: 'allNotifications',
      desc: '',
      args: [],
    );
  }

  /// `News Feed`
  String get newsFeed {
    return Intl.message(
      'News Feed',
      name: 'newsFeed',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `UnFollow`
  String get unfollow {
    return Intl.message(
      'UnFollow',
      name: 'unfollow',
      desc: '',
      args: [],
    );
  }

  /// `Make Order`
  String get makeOrder {
    return Intl.message(
      'Make Order',
      name: 'makeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Booking Done successfully`
  String get bookingSuccessful {
    return Intl.message(
      'Booking Done successfully',
      name: 'bookingSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Booking Canceled`
  String get bookingCanceled {
    return Intl.message(
      'Booking Canceled',
      name: 'bookingCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Drop Order`
  String get dropOrder {
    return Intl.message(
      'Drop Order',
      name: 'dropOrder',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get inviteFriends {
    return Intl.message(
      'Invite Friends',
      name: 'inviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `Invite your firends and earn {points} pts`
  String inviteEarnPoints(String points) {
    return Intl.message(
      'Invite your firends and earn $points pts',
      name: 'inviteEarnPoints',
      desc: '',
      args: [points],
    );
  }

  /// `Send your friends your personal invitation link or code`
  String get invitationLink {
    return Intl.message(
      'Send your friends your personal invitation link or code',
      name: 'invitationLink',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy your free 3,000 pts`
  String get freePoints {
    return Intl.message(
      'Enjoy your free 3,000 pts',
      name: 'freePoints',
      desc: '',
      args: [],
    );
  }

  /// `Share My Code`
  String get shareCode {
    return Intl.message(
      'Share My Code',
      name: 'shareCode',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Booking`
  String get booking {
    return Intl.message(
      'Booking',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `Filter your search`
  String get filterSearch {
    return Intl.message(
      'Filter your search',
      name: 'filterSearch',
      desc: '',
      args: [],
    );
  }

  /// `Distance`
  String get distance {
    return Intl.message(
      'Distance',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Time`
  String get estimatedTime {
    return Intl.message(
      'Estimated Time',
      name: 'estimatedTime',
      desc: '',
      args: [],
    );
  }

  /// `{count} Results`
  String rating(int count) {
    return Intl.message(
      '$count Results',
      name: 'rating',
      desc: '',
      args: [count],
    );
  }

  /// `Cuisines`
  String get cuisines {
    return Intl.message(
      'Cuisines',
      name: 'cuisines',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sortBy {
    return Intl.message(
      'Sort by',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `A-Z`
  String get sortAZ {
    return Intl.message(
      'A-Z',
      name: 'sortAZ',
      desc: '',
      args: [],
    );
  }

  /// `Distance From Center`
  String get sortDistance {
    return Intl.message(
      'Distance From Center',
      name: 'sortDistance',
      desc: '',
      args: [],
    );
  }

  /// `Rating (High To Low)`
  String get sortHighToLow {
    return Intl.message(
      'Rating (High To Low)',
      name: 'sortHighToLow',
      desc: '',
      args: [],
    );
  }

  /// `Rating (Low To High)`
  String get sortLowToHigh {
    return Intl.message(
      'Rating (Low To High)',
      name: 'sortLowToHigh',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort {
    return Intl.message(
      'Sort',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `All resaurants`
  String get allRestaurants {
    return Intl.message(
      'All resaurants',
      name: 'allRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Pickup`
  String get pickup {
    return Intl.message(
      'Pickup',
      name: 'pickup',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Delivering to\n{address}`
  String deliveringTo(String address) {
    return Intl.message(
      'Delivering to\n$address',
      name: 'deliveringTo',
      desc: '',
      args: [address],
    );
  }

  /// `Expected preparing time: {value}`
  String expectedPreparingTime(String value) {
    return Intl.message(
      'Expected preparing time: $value',
      name: 'expectedPreparingTime',
      desc: '',
      args: [value],
    );
  }

  /// `Often ordered with`
  String get oftenOrderedWith {
    return Intl.message(
      'Often ordered with',
      name: 'oftenOrderedWith',
      desc: '',
      args: [],
    );
  }

  /// `Any Special Request`
  String get specialRequestCart {
    return Intl.message(
      'Any Special Request',
      name: 'specialRequestCart',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message(
      'Add To Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `{price} {currency}`
  String priceWithCurrency(String price, String currency) {
    return Intl.message(
      '$price $currency',
      name: 'priceWithCurrency',
      desc: '',
      args: [price, currency],
    );
  }

  /// `Your cart is empty`
  String get cartEmpty {
    return Intl.message(
      'Your cart is empty',
      name: 'cartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Check out What's trending`
  String get trending {
    return Intl.message(
      'Check out What\'s trending',
      name: 'trending',
      desc: '',
      args: [],
    );
  }

  /// `Discover Products`
  String get discoverProducts {
    return Intl.message(
      'Discover Products',
      name: 'discoverProducts',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cart`
  String get clearCart {
    return Intl.message(
      'Clear Cart',
      name: 'clearCart',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Get Discount`
  String get addDiscount {
    return Intl.message(
      'Get Discount',
      name: 'addDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Promo Code`
  String get promoCode {
    return Intl.message(
      'Enter Your Promo Code',
      name: 'promoCode',
      desc: '',
      args: [],
    );
  }

  /// `Breakdown`
  String get breakdown {
    return Intl.message(
      'Breakdown',
      name: 'breakdown',
      desc: '',
      args: [],
    );
  }

  /// `Add Items`
  String get addItems {
    return Intl.message(
      'Add Items',
      name: 'addItems',
      desc: '',
      args: [],
    );
  }

  /// `Place Order`
  String get placeOrder {
    return Intl.message(
      'Place Order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Check Out`
  String get checkOut {
    return Intl.message(
      'Check Out',
      name: 'checkOut',
      desc: '',
      args: [],
    );
  }

  /// `Pay with`
  String get payWith {
    return Intl.message(
      'Pay with',
      name: 'payWith',
      desc: '',
      args: [],
    );
  }

  /// `Procceed`
  String get proceed {
    return Intl.message(
      'Procceed',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Schedule Your Order`
  String get scheduleOrder {
    return Intl.message(
      'Schedule Your Order',
      name: 'scheduleOrder',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get trackOrder {
    return Intl.message(
      'Track Order',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Ongoing`
  String get ongoing {
    return Intl.message(
      'Ongoing',
      name: 'ongoing',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Re-Order`
  String get reorder {
    return Intl.message(
      'Re-Order',
      name: 'reorder',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been placed`
  String get orderPlaced {
    return Intl.message(
      'Your order has been placed',
      name: 'orderPlaced',
      desc: '',
      args: [],
    );
  }

  /// `[{storeName}] is preparing your order`
  String orderPreparing(String storeName) {
    return Intl.message(
      '[$storeName] is preparing your order',
      name: 'orderPreparing',
      desc: '',
      args: [storeName],
    );
  }

  /// `Your order is out for delivery`
  String get orderOutForDelivery {
    return Intl.message(
      'Your order is out for delivery',
      name: 'orderOutForDelivery',
      desc: '',
      args: [],
    );
  }

  /// `No GPS connection`
  String get gpsError {
    return Intl.message(
      'No GPS connection',
      name: 'gpsError',
      desc: '',
      args: [],
    );
  }

  /// `please check for location`
  String get gpsSettings {
    return Intl.message(
      'please check for location',
      name: 'gpsSettings',
      desc: '',
      args: [],
    );
  }

  /// `Go to GPS settings`
  String get goToGpsSettings {
    return Intl.message(
      'Go to GPS settings',
      name: 'goToGpsSettings',
      desc: '',
      args: [],
    );
  }

  /// `no Credit cards`
  String get noCreditCards {
    return Intl.message(
      'no Credit cards',
      name: 'noCreditCards',
      desc: '',
      args: [],
    );
  }

  /// `Please add credit card to your account`
  String get addCreditCardPrompt {
    return Intl.message(
      'Please add credit card to your account',
      name: 'addCreditCardPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Add a Credit Card`
  String get addCreditCard {
    return Intl.message(
      'Add a Credit Card',
      name: 'addCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `You dont't have new notification yet`
  String get noNotifications {
    return Intl.message(
      'You dont\'t have new notification yet',
      name: 'noNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Create Post`
  String get createPost {
    return Intl.message(
      'Create Post',
      name: 'createPost',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Share your experience`
  String get shareExperience {
    return Intl.message(
      'Share your experience',
      name: 'shareExperience',
      desc: '',
      args: [],
    );
  }

  /// `Add photos`
  String get addPhotos {
    return Intl.message(
      'Add photos',
      name: 'addPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Tag Vendor`
  String get tagVendor {
    return Intl.message(
      'Tag Vendor',
      name: 'tagVendor',
      desc: '',
      args: [],
    );
  }

  /// `Mention Item`
  String get mentionItem {
    return Intl.message(
      'Mention Item',
      name: 'mentionItem',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get suggestions {
    return Intl.message(
      'Suggestions',
      name: 'suggestions',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get feed {
    return Intl.message(
      'Feed',
      name: 'feed',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Remove Follower`
  String get removeFollower {
    return Intl.message(
      'Remove Follower',
      name: 'removeFollower',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Your known name `
  String get urKnownName {
    return Intl.message(
      'Your known name ',
      name: 'urKnownName',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `TO`
  String get to {
    return Intl.message(
      'TO',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Branches\nLocation`
  String get branchLocation {
    return Intl.message(
      'Branches\nLocation',
      name: 'branchLocation',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Your Referral Code`
  String get yourReferralCode {
    return Intl.message(
      'Your Referral Code',
      name: 'yourReferralCode',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy !`
  String get enjoy {
    return Intl.message(
      'Enjoy !',
      name: 'enjoy',
      desc: '',
      args: [],
    );
  }

  /// `May you like to add`
  String get myLikeAdd {
    return Intl.message(
      'May you like to add',
      name: 'myLikeAdd',
      desc: '',
      args: [],
    );
  }

  /// `Order Update`
  String get orderUpdate {
    return Intl.message(
      'Order Update',
      name: 'orderUpdate',
      desc: '',
      args: [],
    );
  }

  /// `notifications for when the order is placed, in progress, and delivered.`
  String get orderUpdateSubTitle {
    return Intl.message(
      'notifications for when the order is placed, in progress, and delivered.',
      name: 'orderUpdateSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `notifications for discounts, special deals, and seasonal offers.`
  String get promotionsSubTitle {
    return Intl.message(
      'notifications for discounts, special deals, and seasonal offers.',
      name: 'promotionsSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications regarding important app changes, new features, or updates.`
  String get appUpdatesSubTitle {
    return Intl.message(
      'Notifications regarding important app changes, new features, or updates.',
      name: 'appUpdatesSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications about placed, ongoing, and delivered orders.`
  String get orderNotifications {
    return Intl.message(
      'Notifications about placed, ongoing, and delivered orders.',
      name: 'orderNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Notifications about discounts, special offers, and seasonal promotions.`
  String get discountNotifications {
    return Intl.message(
      'Notifications about discounts, special offers, and seasonal promotions.',
      name: 'discountNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Notifications about important app changes or new updates.`
  String get importantNotifications {
    return Intl.message(
      'Notifications about important app changes or new updates.',
      name: 'importantNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Apple pay`
  String get applePay {
    return Intl.message(
      'Apple pay',
      name: 'applePay',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit {
    return Intl.message(
      'Credit Card',
      name: 'credit',
      desc: '',
      args: [],
    );
  }

  /// `choose your car`
  String get chooseCar {
    return Intl.message(
      'choose your car',
      name: 'chooseCar',
      desc: '',
      args: [],
    );
  }

  /// `You can cancel it within {time} mins max`
  String youCanCancel(String time) {
    return Intl.message(
      'You can cancel it within $time mins max',
      name: 'youCanCancel',
      desc: '',
      args: [time],
    );
  }

  /// `Order Cannot be cancelled it is being prepared now`
  String get youCantCancel {
    return Intl.message(
      'Order Cannot be cancelled it is being prepared now',
      name: 'youCantCancel',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Tap here to show your items`
  String get clickShowItems {
    return Intl.message(
      'Tap here to show your items',
      name: 'clickShowItems',
      desc: '',
      args: [],
    );
  }

  /// `Tap Again to Add New Item`
  String get clickAgain {
    return Intl.message(
      'Tap Again to Add New Item',
      name: 'clickAgain',
      desc: '',
      args: [],
    );
  }

  /// `Clients can book appointments with me`
  String get clientsCanBook {
    return Intl.message(
      'Clients can book appointments with me',
      name: 'clientsCanBook',
      desc: '',
      args: [],
    );
  }

  /// `Please enter brand name`
  String get brandNamePrompt {
    return Intl.message(
      'Please enter brand name',
      name: 'brandNamePrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please enter count of branches`
  String get branchesCountPrompt {
    return Intl.message(
      'Please enter count of branches',
      name: 'branchesCountPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please select business type`
  String get businessTypePrompt {
    return Intl.message(
      'Please select business type',
      name: 'businessTypePrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your role`
  String get rolePrompt {
    return Intl.message(
      'Please enter your role',
      name: 'rolePrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please enter description`
  String get descriptionPrompt {
    return Intl.message(
      'Please enter description',
      name: 'descriptionPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please select open hours`
  String get openHoursPrompt {
    return Intl.message(
      'Please select open hours',
      name: 'openHoursPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please select close hours`
  String get closeHoursPrompt {
    return Intl.message(
      'Please select close hours',
      name: 'closeHoursPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Please select providing`
  String get providingPrompt {
    return Intl.message(
      'Please select providing',
      name: 'providingPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bankName {
    return Intl.message(
      'Bank Name',
      name: 'bankName',
      desc: '',
      args: [],
    );
  }

  /// `Side item name`
  String get sideItemName {
    return Intl.message(
      'Side item name',
      name: 'sideItemName',
      desc: '',
      args: [],
    );
  }

  /// `extra name`
  String get extraname {
    return Intl.message(
      'extra name',
      name: 'extraname',
      desc: '',
      args: [],
    );
  }

  /// `Not set`
  String get notSet {
    return Intl.message(
      'Not set',
      name: 'notSet',
      desc: '',
      args: [],
    );
  }

  /// `Delete Product`
  String get deleteProduct {
    return Intl.message(
      'Delete Product',
      name: 'deleteProduct',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure delete this product`
  String get areUSure {
    return Intl.message(
      'Are you sure delete this product',
      name: 'areUSure',
      desc: '',
      args: [],
    );
  }

  /// `Deleted Product`
  String get deletedProduct {
    return Intl.message(
      'Deleted Product',
      name: 'deletedProduct',
      desc: '',
      args: [],
    );
  }

  /// `Product deleted successfully`
  String get productDeletedSuccess {
    return Intl.message(
      'Product deleted successfully',
      name: 'productDeletedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get requiredField {
    return Intl.message(
      'Required field',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Please wait, we are making magic`
  String get waitingWeAre {
    return Intl.message(
      'Please wait, we are making magic',
      name: 'waitingWeAre',
      desc: '',
      args: [],
    );
  }

  /// `View Your Card`
  String get viewCard {
    return Intl.message(
      'View Your Card',
      name: 'viewCard',
      desc: '',
      args: [],
    );
  }

  /// `Please Auth to view you card`
  String get plsAuth {
    return Intl.message(
      'Please Auth to view you card',
      name: 'plsAuth',
      desc: '',
      args: [],
    );
  }

  /// `Use biometrics to show card?`
  String get useBiometrics {
    return Intl.message(
      'Use biometrics to show card?',
      name: 'useBiometrics',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are permanently denied, we cannot request permissions.`
  String get locationErrorPerm {
    return Intl.message(
      'Location permissions are permanently denied, we cannot request permissions.',
      name: 'locationErrorPerm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure delete this location`
  String get areUSureDeleteLocation {
    return Intl.message(
      'Are you sure delete this location',
      name: 'areUSureDeleteLocation',
      desc: '',
      args: [],
    );
  }

  /// `Delete location`
  String get deleteLocation {
    return Intl.message(
      'Delete location',
      name: 'deleteLocation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure delete this branche`
  String get areUSureDeleteBranche {
    return Intl.message(
      'Are you sure delete this branche',
      name: 'areUSureDeleteBranche',
      desc: '',
      args: [],
    );
  }

  /// `Delete branche`
  String get deleteBranche {
    return Intl.message(
      'Delete branche',
      name: 'deleteBranche',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure delete this car`
  String get areUSureDeleteCar {
    return Intl.message(
      'Are you sure delete this car',
      name: 'areUSureDeleteCar',
      desc: '',
      args: [],
    );
  }

  /// `Delete car`
  String get deleteCar {
    return Intl.message(
      'Delete car',
      name: 'deleteCar',
      desc: '',
      args: [],
    );
  }

  /// `Enter valide date`
  String get enterValideDate {
    return Intl.message(
      'Enter valide date',
      name: 'enterValideDate',
      desc: '',
      args: [],
    );
  }

  /// `Enter valide card details`
  String get enterValideCard {
    return Intl.message(
      'Enter valide card details',
      name: 'enterValideCard',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure delete this card`
  String get areUSureDeleteCard {
    return Intl.message(
      'Are you sure delete this card',
      name: 'areUSureDeleteCard',
      desc: '',
      args: [],
    );
  }

  /// `Delete card`
  String get deleteCard {
    return Intl.message(
      'Delete card',
      name: 'deleteCard',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Enter Valide Data`
  String get enterValideData {
    return Intl.message(
      'Enter Valide Data',
      name: 'enterValideData',
      desc: '',
      args: [],
    );
  }

  /// `No Favourites Yet`
  String get noFav {
    return Intl.message(
      'No Favourites Yet',
      name: 'noFav',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Select order type`
  String get selectOrderType {
    return Intl.message(
      'Select order type',
      name: 'selectOrderType',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get phoneRequired {
    return Intl.message(
      'Phone number is required',
      name: 'phoneRequired',
      desc: '',
      args: [],
    );
  }

  /// `Choose delivery location`
  String get chooseDeliveryLoction {
    return Intl.message(
      'Choose delivery location',
      name: 'chooseDeliveryLoction',
      desc: '',
      args: [],
    );
  }

  /// `Payment method is required`
  String get paymentRequired {
    return Intl.message(
      'Payment method is required',
      name: 'paymentRequired',
      desc: '',
      args: [],
    );
  }

  /// `Address is required`
  String get addressRequired {
    return Intl.message(
      'Address is required',
      name: 'addressRequired',
      desc: '',
      args: [],
    );
  }

  /// `{distance} km`
  String km(String distance) {
    return Intl.message(
      '$distance km',
      name: 'km',
      desc: '',
      args: [distance],
    );
  }

  /// `24/7 Service`
  String get wholeWeak {
    return Intl.message(
      '24/7 Service',
      name: 'wholeWeak',
      desc: '',
      args: [],
    );
  }

  /// `Open now`
  String get openNow {
    return Intl.message(
      'Open now',
      name: 'openNow',
      desc: '',
      args: [],
    );
  }

  /// `please complete signup profile`
  String get plsCompleteSetup {
    return Intl.message(
      'please complete signup profile',
      name: 'plsCompleteSetup',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `All side items required`
  String get allSideItemRequired {
    return Intl.message(
      'All side items required',
      name: 'allSideItemRequired',
      desc: '',
      args: [],
    );
  }

  /// `please select size first`
  String get pleaseSelectSize {
    return Intl.message(
      'please select size first',
      name: 'pleaseSelectSize',
      desc: '',
      args: [],
    );
  }

  /// `Users`
  String get users {
    return Intl.message(
      'Users',
      name: 'users',
      desc: '',
      args: [],
    );
  }

  /// `No Saved Posts yet!`
  String get noSavedPosts {
    return Intl.message(
      'No Saved Posts yet!',
      name: 'noSavedPosts',
      desc: '',
      args: [],
    );
  }

  /// `You don't havae any posts yet!`
  String get noPosts {
    return Intl.message(
      'You don\'t havae any posts yet!',
      name: 'noPosts',
      desc: '',
      args: [],
    );
  }

  /// `Post Saved`
  String get postSaved {
    return Intl.message(
      'Post Saved',
      name: 'postSaved',
      desc: '',
      args: [],
    );
  }

  /// `No Sponsers avaialable`
  String get noSponsers {
    return Intl.message(
      'No Sponsers avaialable',
      name: 'noSponsers',
      desc: '',
      args: [],
    );
  }

  /// `Replys`
  String get replys {
    return Intl.message(
      'Replys',
      name: 'replys',
      desc: '',
      args: [],
    );
  }

  /// `Reply comment`
  String get replyComment {
    return Intl.message(
      'Reply comment',
      name: 'replyComment',
      desc: '',
      args: [],
    );
  }

  /// `Add comment`
  String get addComment {
    return Intl.message(
      'Add comment',
      name: 'addComment',
      desc: '',
      args: [],
    );
  }

  /// `Delete comment`
  String get deleteComment {
    return Intl.message(
      'Delete comment',
      name: 'deleteComment',
      desc: '',
      args: [],
    );
  }

  /// `Delete Reply`
  String get deleteReply {
    return Intl.message(
      'Delete Reply',
      name: 'deleteReply',
      desc: '',
      args: [],
    );
  }

  /// `No comments`
  String get noComment {
    return Intl.message(
      'No comments',
      name: 'noComment',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Let's Get Started`
  String get letsStarted {
    return Intl.message(
      'Let`s Get Started',
      name: 'letsStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `we're glad that that you are here`
  String get welcomeTitle {
    return Intl.message(
      'we\'re glad that that you are here',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Order Ahead`
  String get orderAhead {
    return Intl.message(
      'Order Ahead',
      name: 'orderAhead',
      desc: '',
      args: [],
    );
  }

  /// `Order Any thing now and pick it up whenever you want !`
  String get orderAheadTitle {
    return Intl.message(
      'Order Any thing now and pick it up whenever you want !',
      name: 'orderAheadTitle',
      desc: '',
      args: [],
    );
  }

  /// `Book your Table`
  String get bookTable {
    return Intl.message(
      'Book your Table',
      name: 'bookTable',
      desc: '',
      args: [],
    );
  }

  /// `Book your place and be ready for busy days`
  String get bookTableTitle {
    return Intl.message(
      'Book your place and be ready for busy days',
      name: 'bookTableTitle',
      desc: '',
      args: [],
    );
  }

  /// `All Your Favorite Places`
  String get allFav {
    return Intl.message(
      'All Your Favorite Places',
      name: 'allFav',
      desc: '',
      args: [],
    );
  }

  /// `From Productive Families, Restaurants, Coffee Shops and even Hotels !`
  String get allFavTitle {
    return Intl.message(
      'From Productive Families, Restaurants, Coffee Shops and even Hotels !',
      name: 'allFavTitle',
      desc: '',
      args: [],
    );
  }

  /// `Success update`
  String get successUpdate {
    return Intl.message(
      'Success update',
      name: 'successUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Old password`
  String get oldPass {
    return Intl.message(
      'Old password',
      name: 'oldPass',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure logout?`
  String get areSureLogout {
    return Intl.message(
      'Are you sure logout?',
      name: 'areSureLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit?\n The current data will be erased and will not be saved.`
  String get areSureExitProduct {
    return Intl.message(
      'Are you sure you want to exit?\n The current data will be erased and will not be saved.',
      name: 'areSureExitProduct',
      desc: '',
      args: [],
    );
  }

  /// `You're all caught up!`
  String get caughtUp {
    return Intl.message(
      'You`re all caught up!',
      name: 'caughtUp',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Image`
  String get plsSelectImg {
    return Intl.message(
      'Please Select Image',
      name: 'plsSelectImg',
      desc: '',
      args: [],
    );
  }

  /// `You can scroll up or down\nto explore more side items and you can press to show items`
  String get youCanScroll {
    return Intl.message(
      'You can scroll up or down\nto explore more side items and you can press to show items',
      name: 'youCanScroll',
      desc: '',
      args: [],
    );
  }

  /// `Please select category`
  String get plsSelectCategory {
    return Intl.message(
      'Please select category',
      name: 'plsSelectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Inccorect password`
  String get incorectPass {
    return Intl.message(
      'Inccorect password',
      name: 'incorectPass',
      desc: '',
      args: [],
    );
  }

  /// `No Places`
  String get noPlaces {
    return Intl.message(
      'No Places',
      name: 'noPlaces',
      desc: '',
      args: [],
    );
  }

  /// `Select location to see nearby places`
  String get selectLocationNear {
    return Intl.message(
      'Select location to see nearby places',
      name: 'selectLocationNear',
      desc: '',
      args: [],
    );
  }

  /// `Tab here to change your location if location not added the nearby places not shown.`
  String get tabHereToChangeLocation {
    return Intl.message(
      'Tab here to change your location if location not added the nearby places not shown.',
      name: 'tabHereToChangeLocation',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get seeMore {
    return Intl.message(
      'See More',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `No Resaurants`
  String get noResautrants {
    return Intl.message(
      'No Resaurants',
      name: 'noResautrants',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get ratingTitle {
    return Intl.message(
      'Rating',
      name: 'ratingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Password is required to update personal info`
  String get passwordIsRequired {
    return Intl.message(
      'Password is required to update personal info',
      name: 'passwordIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Any Special Request?`
  String get anySpecialRequest {
    return Intl.message(
      'Any Special Request?',
      name: 'anySpecialRequest',
      desc: '',
      args: [],
    );
  }

  /// `Search Items`
  String get searchITem {
    return Intl.message(
      'Search Items',
      name: 'searchITem',
      desc: '',
      args: [],
    );
  }

  /// `Add Phone Number`
  String get addPhoneNum {
    return Intl.message(
      'Add Phone Number',
      name: 'addPhoneNum',
      desc: '',
      args: [],
    );
  }

  /// `failed to complete transaction`
  String get failedTransaction {
    return Intl.message(
      'failed to complete transaction',
      name: 'failedTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Arrival time must be more than 3 minutes from now`
  String get arrivalTimeError {
    return Intl.message(
      'Arrival time must be more than 3 minutes from now',
      name: 'arrivalTimeError',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Number of Seats`
  String get numberOfSeats {
    return Intl.message(
      'Number of Seats',
      name: 'numberOfSeats',
      desc: '',
      args: [],
    );
  }

  /// `Enter number of seats`
  String get enterNumberOfSeats {
    return Intl.message(
      'Enter number of seats',
      name: 'enterNumberOfSeats',
      desc: '',
      args: [],
    );
  }

  /// `Booking Date`
  String get bookingDate {
    return Intl.message(
      'Booking Date',
      name: 'bookingDate',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get selectDate {
    return Intl.message(
      'Select Date',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Number of seats is required`
  String get numberOfSeatsRequired {
    return Intl.message(
      'Number of seats is required',
      name: 'numberOfSeatsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Booking date is required`
  String get bookingDateRequired {
    return Intl.message(
      'Booking date is required',
      name: 'bookingDateRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please select a branch`
  String get selectBranch {
    return Intl.message(
      'Please select a branch',
      name: 'selectBranch',
      desc: '',
      args: [],
    );
  }

  /// `Complete setup`
  String get completeSetup {
    return Intl.message(
      'Complete setup',
      name: 'completeSetup',
      desc: '',
      args: [],
    );
  }

  /// `User ID not found`
  String get userIdNotFound {
    return Intl.message(
      'User ID not found',
      name: 'userIdNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Select Make`
  String get selectMake {
    return Intl.message(
      'Select Make',
      name: 'selectMake',
      desc: '',
      args: [],
    );
  }

  /// `Select Model`
  String get selectModel {
    return Intl.message(
      'Select Model',
      name: 'selectModel',
      desc: '',
      args: [],
    );
  }

  /// `Car added successfully`
  String get carAddedSuccess {
    return Intl.message(
      'Car added successfully',
      name: 'carAddedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Car updated successfully`
  String get carUpdatedSuccess {
    return Intl.message(
      'Car updated successfully',
      name: 'carUpdatedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Car deleted successfully`
  String get carDeletedSuccess {
    return Intl.message(
      'Car deleted successfully',
      name: 'carDeletedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please fill all fields and select an image`
  String get fillAllCarFields {
    return Intl.message(
      'Please fill all fields and select an image',
      name: 'fillAllCarFields',
      desc: '',
      args: [],
    );
  }

  /// `Cart ID is empty`
  String get cartIdEmpty {
    return Intl.message(
      'Cart ID is empty',
      name: 'cartIdEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Missing required parameters`
  String get missingRequiredParams {
    return Intl.message(
      'Missing required parameters',
      name: 'missingRequiredParams',
      desc: '',
      args: [],
    );
  }

  /// `Item UUID is empty`
  String get itemUuidEmpty {
    return Intl.message(
      'Item UUID is empty',
      name: 'itemUuidEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Cart cleared successfully`
  String get cartClearedSuccess {
    return Intl.message(
      'Cart cleared successfully',
      name: 'cartClearedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Item added to cart successfully`
  String get itemAddedSuccess {
    return Intl.message(
      'Item added to cart successfully',
      name: 'itemAddedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Item removed from cart successfully`
  String get itemRemovedSuccess {
    return Intl.message(
      'Item removed from cart successfully',
      name: 'itemRemovedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Item quantity updated successfully`
  String get itemUpdatedSuccess {
    return Intl.message(
      'Item quantity updated successfully',
      name: 'itemUpdatedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Coupon applied successfully`
  String get couponAddedSuccess {
    return Intl.message(
      'Coupon applied successfully',
      name: 'couponAddedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Coupon removed successfully`
  String get couponRemovedSuccess {
    return Intl.message(
      'Coupon removed successfully',
      name: 'couponRemovedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Cart closed successfully`
  String get cartClosedSuccess {
    return Intl.message(
      'Cart closed successfully',
      name: 'cartClosedSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get user cart`
  String get failureGetUserCart {
    return Intl.message(
      'Failed to get user cart',
      name: 'failureGetUserCart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get cart details`
  String get failureGetCartDetails {
    return Intl.message(
      'Failed to get cart details',
      name: 'failureGetCartDetails',
      desc: '',
      args: [],
    );
  }

  /// `Failed to clear cart`
  String get failureClearCart {
    return Intl.message(
      'Failed to clear cart',
      name: 'failureClearCart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get preparing time`
  String get failureGetPreparingTime {
    return Intl.message(
      'Failed to get preparing time',
      name: 'failureGetPreparingTime',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add item to cart`
  String get failureAddItem {
    return Intl.message(
      'Failed to add item to cart',
      name: 'failureAddItem',
      desc: '',
      args: [],
    );
  }

  /// `Failed to remove item from cart`
  String get failureRemoveItem {
    return Intl.message(
      'Failed to remove item from cart',
      name: 'failureRemoveItem',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update item quantity`
  String get failureUpdateItem {
    return Intl.message(
      'Failed to update item quantity',
      name: 'failureUpdateItem',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get often ordered products`
  String get failureGetOftenProductCart {
    return Intl.message(
      'Failed to get often ordered products',
      name: 'failureGetOftenProductCart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to apply coupon`
  String get failureAddCoupon {
    return Intl.message(
      'Failed to apply coupon',
      name: 'failureAddCoupon',
      desc: '',
      args: [],
    );
  }

  /// `Failed to close cart`
  String get failureCloseCart {
    return Intl.message(
      'Failed to close cart',
      name: 'failureCloseCart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get categories`
  String get failureGetCategories {
    return Intl.message(
      'Failed to get categories',
      name: 'failureGetCategories',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get sponsors`
  String get failureGetSponsors {
    return Intl.message(
      'Failed to get sponsors',
      name: 'failureGetSponsors',
      desc: '',
      args: [],
    );
  }

  /// `No sponsors available`
  String get noSponsorsAvailable {
    return Intl.message(
      'No sponsors available',
      name: 'noSponsorsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Error loading categories`
  String get categoryLoadingError {
    return Intl.message(
      'Error loading categories',
      name: 'categoryLoadingError',
      desc: '',
      args: [],
    );
  }

  /// `Error loading sponsors`
  String get sponsorsLoadingError {
    return Intl.message(
      'Error loading sponsors',
      name: 'sponsorsLoadingError',
      desc: '',
      args: [],
    );
  }

  /// `Already in favorites`
  String get alreadyInFavorites {
    return Intl.message(
      'Already in favorites',
      name: 'alreadyInFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Vendor not in favorites`
  String get vendorNotInFavorites {
    return Intl.message(
      'Vendor not in favorites',
      name: 'vendorNotInFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Added to favorites`
  String get addedToFavorites {
    return Intl.message(
      'Added to favorites',
      name: 'addedToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Removed from favorites`
  String get removedFromFavorites {
    return Intl.message(
      'Removed from favorites',
      name: 'removedFromFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load favorites`
  String get failedToLoadFavorites {
    return Intl.message(
      'Failed to load favorites',
      name: 'failedToLoadFavorites',
      desc: '',
      args: [],
    );
  }

  /// `{count} {count, plural, =1{vendor} other{vendors}} in favorites`
  String vendorsInFavorites(int count) {
    return Intl.message(
      '$count ${Intl.plural(count, one: 'vendor', other: 'vendors')} in favorites',
      name: 'vendorsInFavorites',
      desc: '',
      args: [count],
    );
  }

  /// `Error loading favorites`
  String get errorLoadingFavorites {
    return Intl.message(
      'Error loading favorites',
      name: 'errorLoadingFavorites',
      desc: '',
      args: [],
    );
  }

  /// `No favorites found`
  String get noFavoritesFound {
    return Intl.message(
      'No favorites found',
      name: 'noFavoritesFound',
      desc: '',
      args: [],
    );
  }

  /// `Refresh favorites`
  String get refreshFavorites {
    return Intl.message(
      'Refresh favorites',
      name: 'refreshFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load business details`
  String get failedToLoadBusinessDetails {
    return Intl.message(
      'Failed to load business details',
      name: 'failedToLoadBusinessDetails',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get areYouSure {
    return Intl.message(
      'Are you sure?',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get tutorialSkip {
    return Intl.message(
      'SKIP',
      name: 'tutorialSkip',
      desc: '',
      args: [],
    );
  }

  /// `Click here to show your items`
  String get clickToShowItems {
    return Intl.message(
      'Click here to show your items',
      name: 'clickToShowItems',
      desc: '',
      args: [],
    );
  }

  /// `Click again to add a new item`
  String get clickToAddNewItem {
    return Intl.message(
      'Click again to add a new item',
      name: 'clickToAddNewItem',
      desc: '',
      args: [],
    );
  }

  /// `Average Rating`
  String get averageRating {
    return Intl.message(
      'Average Rating',
      name: 'averageRating',
      desc: '',
      args: [],
    );
  }

  /// `Total Reviews`
  String get totalReviews {
    return Intl.message(
      'Total Reviews',
      name: 'totalReviews',
      desc: '',
      args: [],
    );
  }

  /// `Vendor Balance`
  String get vendorBalance {
    return Intl.message(
      'Vendor Balance',
      name: 'vendorBalance',
      desc: '',
      args: [],
    );
  }

  /// `No orders available`
  String get noOrdersAvailable {
    return Intl.message(
      'No orders available',
      name: 'noOrdersAvailable',
      desc: '',
      args: [],
    );
  }

  /// `No products available`
  String get noProductsAvailable {
    return Intl.message(
      'No products available',
      name: 'noProductsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `No notifications available`
  String get noNotificationsAvailable {
    return Intl.message(
      'No notifications available',
      name: 'noNotificationsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Business Details`
  String get businessDetails {
    return Intl.message(
      'Business Details',
      name: 'businessDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get orderStatus {
    return Intl.message(
      'Order Status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Revenue`
  String get revenue {
    return Intl.message(
      'Revenue',
      name: 'revenue',
      desc: '',
      args: [],
    );
  }

  /// `Customer Reviews`
  String get customerReviews {
    return Intl.message(
      'Customer Reviews',
      name: 'customerReviews',
      desc: '',
      args: [],
    );
  }

  /// `Popular Products`
  String get popularProducts {
    return Intl.message(
      'Popular Products',
      name: 'popularProducts',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load reviews`
  String get failedToLoadReviews {
    return Intl.message(
      'Failed to load reviews',
      name: 'failedToLoadReviews',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load common issues`
  String get failedToLoadCommonIssues {
    return Intl.message(
      'Failed to load common issues',
      name: 'failedToLoadCommonIssues',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load FAQ`
  String get failedToLoadFAQ {
    return Intl.message(
      'Failed to load FAQ',
      name: 'failedToLoadFAQ',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load social platforms`
  String get failedToLoadSocialPlatforms {
    return Intl.message(
      'Failed to load social platforms',
      name: 'failedToLoadSocialPlatforms',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load download platforms`
  String get failedToLoadDownloadPlatforms {
    return Intl.message(
      'Failed to load download platforms',
      name: 'failedToLoadDownloadPlatforms',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add review`
  String get failedToAddReview {
    return Intl.message(
      'Failed to add review',
      name: 'failedToAddReview',
      desc: '',
      args: [],
    );
  }

  /// `Review added successfully`
  String get reviewAddedSuccessfully {
    return Intl.message(
      'Review added successfully',
      name: 'reviewAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Search issues`
  String get searchIssues {
    return Intl.message(
      'Search issues',
      name: 'searchIssues',
      desc: '',
      args: [],
    );
  }

  /// `No reviews found`
  String get noReviewsFound {
    return Intl.message(
      'No reviews found',
      name: 'noReviewsFound',
      desc: '',
      args: [],
    );
  }

  /// `No common issues found`
  String get noCommonIssuesFound {
    return Intl.message(
      'No common issues found',
      name: 'noCommonIssuesFound',
      desc: '',
      args: [],
    );
  }

  /// `No FAQ found`
  String get noFAQFound {
    return Intl.message(
      'No FAQ found',
      name: 'noFAQFound',
      desc: '',
      args: [],
    );
  }

  /// `No social platforms found`
  String get noSocialPlatformsFound {
    return Intl.message(
      'No social platforms found',
      name: 'noSocialPlatformsFound',
      desc: '',
      args: [],
    );
  }

  /// `No download platforms found`
  String get noDownloadPlatformsFound {
    return Intl.message(
      'No download platforms found',
      name: 'noDownloadPlatformsFound',
      desc: '',
      args: [],
    );
  }

  /// `Success added`
  String get successAdded {
    return Intl.message(
      'Success added',
      name: 'successAdded',
      desc: '',
      args: [],
    );
  }

  /// `Success updated`
  String get successUpdated {
    return Intl.message(
      'Success updated',
      name: 'successUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Success deleted`
  String get successDeleted {
    return Intl.message(
      'Success deleted',
      name: 'successDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Location services are disabled`
  String get locationServicesDisabled {
    return Intl.message(
      'Location services are disabled',
      name: 'locationServicesDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are denied`
  String get locationPermissionsDenied {
    return Intl.message(
      'Location permissions are denied',
      name: 'locationPermissionsDenied',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are permanently denied`
  String get locationPermissionsDeniedForever {
    return Intl.message(
      'Location permissions are permanently denied',
      name: 'locationPermissionsDeniedForever',
      desc: '',
      args: [],
    );
  }

  /// `House Number / Flat / Block No.`
  String get houseNumberHint {
    return Intl.message(
      'House Number / Flat / Block No.',
      name: 'houseNumberHint',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Near ABC School`
  String get landmarkHint {
    return Intl.message(
      'e.g. Near ABC School',
      name: 'landmarkHint',
      desc: '',
      args: [],
    );
  }

  /// `Search for a building, street or ...`
  String get searchForLocation {
    return Intl.message(
      'Search for a building, street or ...',
      name: 'searchForLocation',
      desc: '',
      args: [],
    );
  }

  /// `No locations found`
  String get noLocationsFound {
    return Intl.message(
      'No locations found',
      name: 'noLocationsFound',
      desc: '',
      args: [],
    );
  }

  /// `Select Location`
  String get selectLocation {
    return Intl.message(
      'Select Location',
      name: 'selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Authentication Required`
  String get authRequired {
    return Intl.message(
      'Authentication Required',
      name: 'authRequired',
      desc: '',
      args: [],
    );
  }

  /// `Use biometric authentication`
  String get biometricAuth {
    return Intl.message(
      'Use biometric authentication',
      name: 'biometricAuth',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordAuth {
    return Intl.message(
      'Enter your password',
      name: 'passwordAuth',
      desc: '',
      args: [],
    );
  }

  /// `Location Picker`
  String get locationPicker {
    return Intl.message(
      'Location Picker',
      name: 'locationPicker',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Location`
  String get confirmLocation {
    return Intl.message(
      'Confirm Location',
      name: 'confirmLocation',
      desc: '',
      args: [],
    );
  }

  /// `Location updated successfully`
  String get locationUpdated {
    return Intl.message(
      'Location updated successfully',
      name: 'locationUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Location added successfully`
  String get locationAdded {
    return Intl.message(
      'Location added successfully',
      name: 'locationAdded',
      desc: '',
      args: [],
    );
  }

  /// `Location deleted successfully`
  String get locationDeleted {
    return Intl.message(
      'Location deleted successfully',
      name: 'locationDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Location error`
  String get locationError {
    return Intl.message(
      'Location error',
      name: 'locationError',
      desc: '',
      args: [],
    );
  }

  /// `No locations added yet`
  String get emptyLocationList {
    return Intl.message(
      'No locations added yet',
      name: 'emptyLocationList',
      desc: '',
      args: [],
    );
  }

  /// `Add New Location`
  String get addLocationButton {
    return Intl.message(
      'Add New Location',
      name: 'addLocationButton',
      desc: '',
      args: [],
    );
  }

  /// `Edit Location`
  String get editLocation {
    return Intl.message(
      'Edit Location',
      name: 'editLocation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this location?`
  String get confirmDeleteLocation {
    return Intl.message(
      'Are you sure you want to delete this location?',
      name: 'confirmDeleteLocation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this branch?`
  String get confirmDeleteBranch {
    return Intl.message(
      'Are you sure you want to delete this branch?',
      name: 'confirmDeleteBranch',
      desc: '',
      args: [],
    );
  }

  /// `Branch deleted successfully`
  String get branchDeleted {
    return Intl.message(
      'Branch deleted successfully',
      name: 'branchDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Branch updated successfully`
  String get branchUpdated {
    return Intl.message(
      'Branch updated successfully',
      name: 'branchUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Branch added successfully`
  String get branchAdded {
    return Intl.message(
      'Branch added successfully',
      name: 'branchAdded',
      desc: '',
      args: [],
    );
  }

  /// `Location permission is required to use this feature`
  String get locationPermissionRequired {
    return Intl.message(
      'Location permission is required to use this feature',
      name: 'locationPermissionRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enable location services to continue`
  String get enableLocationServices {
    return Intl.message(
      'Please enable location services to continue',
      name: 'enableLocationServices',
      desc: '',
      args: [],
    );
  }

  /// `Location access is required for this feature to work properly`
  String get locationAccessRequired {
    return Intl.message(
      'Location access is required for this feature to work properly',
      name: 'locationAccessRequired',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load posts`
  String get failedToLoadPosts {
    return Intl.message(
      'Failed to load posts',
      name: 'failedToLoadPosts',
      desc: '',
      args: [],
    );
  }

  /// `Failed to create post`
  String get failedToCreatePost {
    return Intl.message(
      'Failed to create post',
      name: 'failedToCreatePost',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load user posts`
  String get failedToLoadUserPosts {
    return Intl.message(
      'Failed to load user posts',
      name: 'failedToLoadUserPosts',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load saved posts`
  String get failedToLoadSavedPosts {
    return Intl.message(
      'Failed to load saved posts',
      name: 'failedToLoadSavedPosts',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load profile`
  String get failedToLoadProfile {
    return Intl.message(
      'Failed to load profile',
      name: 'failedToLoadProfile',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load comments`
  String get failedToLoadComments {
    return Intl.message(
      'Failed to load comments',
      name: 'failedToLoadComments',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load replies`
  String get failedToLoadReplies {
    return Intl.message(
      'Failed to load replies',
      name: 'failedToLoadReplies',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load likes`
  String get failedToLoadLikes {
    return Intl.message(
      'Failed to load likes',
      name: 'failedToLoadLikes',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load users`
  String get failedToLoadUsers {
    return Intl.message(
      'Failed to load users',
      name: 'failedToLoadUsers',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load vendors`
  String get failedToLoadVendors {
    return Intl.message(
      'Failed to load vendors',
      name: 'failedToLoadVendors',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load products`
  String get failedToLoadProducts {
    return Intl.message(
      'Failed to load products',
      name: 'failedToLoadProducts',
      desc: '',
      args: [],
    );
  }

  /// `Failed to follow user`
  String get failedToFollowUser {
    return Intl.message(
      'Failed to follow user',
      name: 'failedToFollowUser',
      desc: '',
      args: [],
    );
  }

  /// `Failed to unfollow user`
  String get failedToUnfollowUser {
    return Intl.message(
      'Failed to unfollow user',
      name: 'failedToUnfollowUser',
      desc: '',
      args: [],
    );
  }

  /// `Failed to like post`
  String get failedToLikePost {
    return Intl.message(
      'Failed to like post',
      name: 'failedToLikePost',
      desc: '',
      args: [],
    );
  }

  /// `Failed to unlike post`
  String get failedToUnlikePost {
    return Intl.message(
      'Failed to unlike post',
      name: 'failedToUnlikePost',
      desc: '',
      args: [],
    );
  }

  /// `Failed to like comment`
  String get failedToLikeComment {
    return Intl.message(
      'Failed to like comment',
      name: 'failedToLikeComment',
      desc: '',
      args: [],
    );
  }

  /// `Failed to unlike comment`
  String get failedToUnlikeComment {
    return Intl.message(
      'Failed to unlike comment',
      name: 'failedToUnlikeComment',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add comment`
  String get failedToAddComment {
    return Intl.message(
      'Failed to add comment',
      name: 'failedToAddComment',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add reply`
  String get failedToAddReply {
    return Intl.message(
      'Failed to add reply',
      name: 'failedToAddReply',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete comment`
  String get failedToDeleteComment {
    return Intl.message(
      'Failed to delete comment',
      name: 'failedToDeleteComment',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete reply`
  String get failedToDeleteReply {
    return Intl.message(
      'Failed to delete reply',
      name: 'failedToDeleteReply',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save post`
  String get failedToSavePost {
    return Intl.message(
      'Failed to save post',
      name: 'failedToSavePost',
      desc: '',
      args: [],
    );
  }

  /// `Post created successfully`
  String get postCreatedSuccessfully {
    return Intl.message(
      'Post created successfully',
      name: 'postCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Post saved successfully`
  String get postSavedSuccessfully {
    return Intl.message(
      'Post saved successfully',
      name: 'postSavedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Post unsaved successfully`
  String get postUnsavedSuccessfully {
    return Intl.message(
      'Post unsaved successfully',
      name: 'postUnsavedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `User followed successfully`
  String get userFollowedSuccessfully {
    return Intl.message(
      'User followed successfully',
      name: 'userFollowedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `User unfollowed successfully`
  String get userUnfollowedSuccessfully {
    return Intl.message(
      'User unfollowed successfully',
      name: 'userUnfollowedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Comment added successfully`
  String get commentAddedSuccessfully {
    return Intl.message(
      'Comment added successfully',
      name: 'commentAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reply added successfully`
  String get replyAddedSuccessfully {
    return Intl.message(
      'Reply added successfully',
      name: 'replyAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Comment deleted successfully`
  String get commentDeletedSuccessfully {
    return Intl.message(
      'Comment deleted successfully',
      name: 'commentDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reply deleted successfully`
  String get replyDeletedSuccessfully {
    return Intl.message(
      'Reply deleted successfully',
      name: 'replyDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Uploading`
  String get uploading {
    return Intl.message(
      'Uploading',
      name: 'uploading',
      desc: '',
      args: [],
    );
  }

  /// `No users found`
  String get noUsersFound {
    return Intl.message(
      'No users found',
      name: 'noUsersFound',
      desc: '',
      args: [],
    );
  }

  /// `No vendors found`
  String get noVendorsFound {
    return Intl.message(
      'No vendors found',
      name: 'noVendorsFound',
      desc: '',
      args: [],
    );
  }

  /// `No products found`
  String get noProductsFound {
    return Intl.message(
      'No products found',
      name: 'noProductsFound',
      desc: '',
      args: [],
    );
  }

  /// `No comments found`
  String get noCommentsFound {
    return Intl.message(
      'No comments found',
      name: 'noCommentsFound',
      desc: '',
      args: [],
    );
  }

  /// `No replies found`
  String get noRepliesFound {
    return Intl.message(
      'No replies found',
      name: 'noRepliesFound',
      desc: '',
      args: [],
    );
  }

  /// `No likes found`
  String get noLikesFound {
    return Intl.message(
      'No likes found',
      name: 'noLikesFound',
      desc: '',
      args: [],
    );
  }

  /// `Search for users`
  String get searchForUsers {
    return Intl.message(
      'Search for users',
      name: 'searchForUsers',
      desc: '',
      args: [],
    );
  }

  /// `Search for vendors`
  String get searchForVendors {
    return Intl.message(
      'Search for vendors',
      name: 'searchForVendors',
      desc: '',
      args: [],
    );
  }

  /// `Search for products`
  String get searchForProducts {
    return Intl.message(
      'Search for products',
      name: 'searchForProducts',
      desc: '',
      args: [],
    );
  }

  /// `Select Vendor`
  String get selectVendor {
    return Intl.message(
      'Select Vendor',
      name: 'selectVendor',
      desc: '',
      args: [],
    );
  }

  /// `Select Product`
  String get selectProduct {
    return Intl.message(
      'Select Product',
      name: 'selectProduct',
      desc: '',
      args: [],
    );
  }

  /// `Write a comment`
  String get writeComment {
    return Intl.message(
      'Write a comment',
      name: 'writeComment',
      desc: '',
      args: [],
    );
  }

  /// `Write a reply`
  String get writeReply {
    return Intl.message(
      'Write a reply',
      name: 'writeReply',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this comment?`
  String get confirmDeleteComment {
    return Intl.message(
      'Are you sure you want to delete this comment?',
      name: 'confirmDeleteComment',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this reply?`
  String get confirmDeleteReply {
    return Intl.message(
      'Are you sure you want to delete this reply?',
      name: 'confirmDeleteReply',
      desc: '',
      args: [],
    );
  }

  /// `Posts`
  String get posts {
    return Intl.message(
      'Posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `Loading profile...`
  String get loadingProfile {
    return Intl.message(
      'Loading profile...',
      name: 'loadingProfile',
      desc: '',
      args: [],
    );
  }

  /// `Loading posts...`
  String get loadingPosts {
    return Intl.message(
      'Loading posts...',
      name: 'loadingPosts',
      desc: '',
      args: [],
    );
  }

  /// `Loading comments...`
  String get loadingComments {
    return Intl.message(
      'Loading comments...',
      name: 'loadingComments',
      desc: '',
      args: [],
    );
  }

  /// `Loading replies...`
  String get loadingReplies {
    return Intl.message(
      'Loading replies...',
      name: 'loadingReplies',
      desc: '',
      args: [],
    );
  }

  /// `Loading likes...`
  String get loadingLikes {
    return Intl.message(
      'Loading likes...',
      name: 'loadingLikes',
      desc: '',
      args: [],
    );
  }

  /// `Loading users...`
  String get loadingUsers {
    return Intl.message(
      'Loading users...',
      name: 'loadingUsers',
      desc: '',
      args: [],
    );
  }

  /// `Loading vendors...`
  String get loadingVendors {
    return Intl.message(
      'Loading vendors...',
      name: 'loadingVendors',
      desc: '',
      args: [],
    );
  }

  /// `Loading products...`
  String get loadingProducts {
    return Intl.message(
      'Loading products...',
      name: 'loadingProducts',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Upload Progress`
  String get uploadProgress {
    return Intl.message(
      'Upload Progress',
      name: 'uploadProgress',
      desc: '',
      args: [],
    );
  }

  /// `Updating...`
  String get optimisticUpdate {
    return Intl.message(
      'Updating...',
      name: 'optimisticUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Temporary state`
  String get temporaryState {
    return Intl.message(
      'Temporary state',
      name: 'temporaryState',
      desc: '',
      args: [],
    );
  }

  /// `Post deleted`
  String get postDeleted {
    return Intl.message(
      'Post deleted',
      name: 'postDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Edit Post`
  String get editPost {
    return Intl.message(
      'Edit Post',
      name: 'editPost',
      desc: '',
      args: [],
    );
  }

  /// `Delete Post`
  String get deletePost {
    return Intl.message(
      'Delete Post',
      name: 'deletePost',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this post? This action cannot be undone.`
  String get confirmDeletePost {
    return Intl.message(
      'Are you sure you want to delete this post? This action cannot be undone.',
      name: 'confirmDeletePost',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Share Post`
  String get sharePost {
    return Intl.message(
      'Share Post',
      name: 'sharePost',
      desc: '',
      args: [],
    );
  }

  /// `Share functionality would be implemented here`
  String get shareFunctionality {
    return Intl.message(
      'Share functionality would be implemented here',
      name: 'shareFunctionality',
      desc: '',
      args: [],
    );
  }

  /// `Your post`
  String get yourPost {
    return Intl.message(
      'Your post',
      name: 'yourPost',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Comment added`
  String get commentAdded {
    return Intl.message(
      'Comment added',
      name: 'commentAdded',
      desc: '',
      args: [],
    );
  }

  /// `Reply added`
  String get replyAdded {
    return Intl.message(
      'Reply added',
      name: 'replyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Comment deleted`
  String get commentDeleted {
    return Intl.message(
      'Comment deleted',
      name: 'commentDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Reply deleted`
  String get replyDeleted {
    return Intl.message(
      'Reply deleted',
      name: 'replyDeleted',
      desc: '',
      args: [],
    );
  }

  /// `No user posts`
  String get noUserPosts {
    return Intl.message(
      'No user posts',
      name: 'noUserPosts',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get shimmerLoading {
    return Intl.message(
      'Loading...',
      name: 'shimmerLoading',
      desc: '',
      args: [],
    );
  }

  /// `No data available`
  String get noDataAvailable {
    return Intl.message(
      'No data available',
      name: 'noDataAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Error loading data`
  String get errorLoadingData {
    return Intl.message(
      'Error loading data',
      name: 'errorLoadingData',
      desc: '',
      args: [],
    );
  }

  /// `Story`
  String get story {
    return Intl.message(
      'Story',
      name: 'story',
      desc: '',
      args: [],
    );
  }

  /// `Add Story`
  String get addStory {
    return Intl.message(
      'Add Story',
      name: 'addStory',
      desc: '',
      args: [],
    );
  }

  /// `No stories available`
  String get noStoriesAvailable {
    return Intl.message(
      'No stories available',
      name: 'noStoriesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Loading story...`
  String get loadingStory {
    return Intl.message(
      'Loading story...',
      name: 'loadingStory',
      desc: '',
      args: [],
    );
  }

  /// `Story added`
  String get storyAdded {
    return Intl.message(
      'Story added',
      name: 'storyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add story`
  String get failedToAddStory {
    return Intl.message(
      'Failed to add story',
      name: 'failedToAddStory',
      desc: '',
      args: [],
    );
  }

  /// `Story deleted`
  String get storyDeleted {
    return Intl.message(
      'Story deleted',
      name: 'storyDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete story`
  String get failedToDeleteStory {
    return Intl.message(
      'Failed to delete story',
      name: 'failedToDeleteStory',
      desc: '',
      args: [],
    );
  }

  /// `View Story`
  String get viewStory {
    return Intl.message(
      'View Story',
      name: 'viewStory',
      desc: '',
      args: [],
    );
  }

  /// `Story viewed`
  String get storyViewed {
    return Intl.message(
      'Story viewed',
      name: 'storyViewed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to view story`
  String get failedToViewStory {
    return Intl.message(
      'Failed to view story',
      name: 'failedToViewStory',
      desc: '',
      args: [],
    );
  }

  /// `Story expired`
  String get storyExpired {
    return Intl.message(
      'Story expired',
      name: 'storyExpired',
      desc: '',
      args: [],
    );
  }

  /// `Uploading story...`
  String get uploadingStory {
    return Intl.message(
      'Uploading story...',
      name: 'uploadingStory',
      desc: '',
      args: [],
    );
  }

  /// `Story upload progress`
  String get storyUploadProgress {
    return Intl.message(
      'Story upload progress',
      name: 'storyUploadProgress',
      desc: '',
      args: [],
    );
  }

  /// `Story upload complete`
  String get storyUploadComplete {
    return Intl.message(
      'Story upload complete',
      name: 'storyUploadComplete',
      desc: '',
      args: [],
    );
  }

  /// `Story upload failed`
  String get storyUploadFailed {
    return Intl.message(
      'Story upload failed',
      name: 'storyUploadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Add photo to story`
  String get addPhotoToStory {
    return Intl.message(
      'Add photo to story',
      name: 'addPhotoToStory',
      desc: '',
      args: [],
    );
  }

  /// `Add video to story`
  String get addVideoToStory {
    return Intl.message(
      'Add video to story',
      name: 'addVideoToStory',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load notifications`
  String get failedToLoadNotifications {
    return Intl.message(
      'Failed to load notifications',
      name: 'failedToLoadNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Failed to mark notification as read`
  String get failedToMarkNotificationAsRead {
    return Intl.message(
      'Failed to mark notification as read',
      name: 'failedToMarkNotificationAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Failed to mark all notifications as read`
  String get failedToMarkAllNotificationsAsRead {
    return Intl.message(
      'Failed to mark all notifications as read',
      name: 'failedToMarkAllNotificationsAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Notification marked as read`
  String get notificationMarkedAsRead {
    return Intl.message(
      'Notification marked as read',
      name: 'notificationMarkedAsRead',
      desc: '',
      args: [],
    );
  }

  /// `All notifications marked as read`
  String get allNotificationsMarkedAsRead {
    return Intl.message(
      'All notifications marked as read',
      name: 'allNotificationsMarkedAsRead',
      desc: '',
      args: [],
    );
  }

  /// `You're all caught up!`
  String get notificationsEmpty {
    return Intl.message(
      'You\'re all caught up!',
      name: 'notificationsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `No notifications yet`
  String get notificationsEmptySubtitle {
    return Intl.message(
      'No notifications yet',
      name: 'notificationsEmptySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Loading notifications...`
  String get loadingNotifications {
    return Intl.message(
      'Loading notifications...',
      name: 'loadingNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Refresh notifications`
  String get refreshNotifications {
    return Intl.message(
      'Refresh notifications',
      name: 'refreshNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read`
  String get markAllAsRead {
    return Intl.message(
      'Mark all as read',
      name: 'markAllAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Notification settings`
  String get notificationSettings {
    return Intl.message(
      'Notification settings',
      name: 'notificationSettings',
      desc: '',
      args: [],
    );
  }

  /// `Notification preferences`
  String get notificationPreferences {
    return Intl.message(
      'Notification preferences',
      name: 'notificationPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Notification history`
  String get notificationHistory {
    return Intl.message(
      'Notification history',
      name: 'notificationHistory',
      desc: '',
      args: [],
    );
  }

  /// `Clear all notifications`
  String get clearAllNotifications {
    return Intl.message(
      'Clear all notifications',
      name: 'clearAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to clear all notifications?`
  String get confirmClearAllNotifications {
    return Intl.message(
      'Are you sure you want to clear all notifications?',
      name: 'confirmClearAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Notifications cleared`
  String get notificationsCleared {
    return Intl.message(
      'Notifications cleared',
      name: 'notificationsCleared',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

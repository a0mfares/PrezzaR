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
  String youCanCanel(String time) {
    return Intl.message(
      'You can cancel it within $time mins max',
      name: 'youCanCanel',
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

  /// `we’re glad that that you are here`
  String get welcomeTitle {
    return Intl.message(
      'we’re glad that that you are here',
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

  /// `please activate you phone`
  String get plsActivatePhone {
    return Intl.message(
      'please activate you phone',
      name: 'plsActivatePhone',
      desc: '',
      args: [],
    );
  }

  /// `very phone`
  String get verifyPhone {
    return Intl.message(
      'very phone',
      name: 'verifyPhone',
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

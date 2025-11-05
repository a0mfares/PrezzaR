// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(question) => "Choose your ${question}: (Required)";

  static String m1(address) => "Delivering to\n${address}";

  static String m2(value) => "Expected preparing time: ${value}";

  static String m3(userName) => "Hey ${userName},";

  static String m4(points) => "Invite your firends and earn ${points} pts";

  static String m5(distance) => "${distance} km";

  static String m6(id) => "ID:${id}";

  static String m7(storeName) => "[${storeName}] is preparing your order";

  static String m8(price, currency) => "${price} ${currency}";

  static String m9(count) => "${count} Results";

  static String m10(price) => "Total: ${price}";

  static String m11(count) =>
      "${count} ${Intl.plural(count, one: 'vendor', other: 'vendors')} in favorites";

  static String m12(time) => "You can cancel it within ${time} mins max";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "accept": MessageLookupByLibrary.simpleMessage("Accept"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addCategory": MessageLookupByLibrary.simpleMessage("Add Category"),
        "addComment": MessageLookupByLibrary.simpleMessage("Add comment"),
        "addCreditCard":
            MessageLookupByLibrary.simpleMessage("Add a Credit Card"),
        "addCreditCardPrompt": MessageLookupByLibrary.simpleMessage(
            "Please add credit card to your account"),
        "addDiscount": MessageLookupByLibrary.simpleMessage("Get Discount"),
        "addItem": MessageLookupByLibrary.simpleMessage("Add Item"),
        "addItems": MessageLookupByLibrary.simpleMessage("Add Items"),
        "addLocation": MessageLookupByLibrary.simpleMessage("Add new lcoation"),
        "addLocationButton":
            MessageLookupByLibrary.simpleMessage("Add New Location"),
        "addNewAddress":
            MessageLookupByLibrary.simpleMessage("Add New Address"),
        "addNewCar": MessageLookupByLibrary.simpleMessage("Add New Car"),
        "addOption": MessageLookupByLibrary.simpleMessage("Add option"),
        "addPaymentMethod":
            MessageLookupByLibrary.simpleMessage("Add Payment Method"),
        "addPhoneNum": MessageLookupByLibrary.simpleMessage("Add Phone Number"),
        "addPhotoToStory":
            MessageLookupByLibrary.simpleMessage("Add photo to story"),
        "addPhotos": MessageLookupByLibrary.simpleMessage("Add photos"),
        "addSize": MessageLookupByLibrary.simpleMessage("Add size"),
        "addStory": MessageLookupByLibrary.simpleMessage("Add Story"),
        "addToCart": MessageLookupByLibrary.simpleMessage("Add To Cart"),
        "addVideoToStory":
            MessageLookupByLibrary.simpleMessage("Add video to story"),
        "addedToFavorites":
            MessageLookupByLibrary.simpleMessage("Added to favorites"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "addressRequired":
            MessageLookupByLibrary.simpleMessage("Address is required"),
        "addressTitle": MessageLookupByLibrary.simpleMessage("Address Title"),
        "allFav":
            MessageLookupByLibrary.simpleMessage("All Your Favorite Places"),
        "allFavTitle": MessageLookupByLibrary.simpleMessage(
            "From Productive Families, Restaurants, Coffee Shops and even Hotels !"),
        "allNotifications": MessageLookupByLibrary.simpleMessage("All"),
        "allNotificationsMarkedAsRead": MessageLookupByLibrary.simpleMessage(
            "All notifications marked as read"),
        "allRestaurants":
            MessageLookupByLibrary.simpleMessage("All resaurants"),
        "allSideItemRequired":
            MessageLookupByLibrary.simpleMessage("All side items required"),
        "alreadyInFavorites":
            MessageLookupByLibrary.simpleMessage("Already in favorites"),
        "and": MessageLookupByLibrary.simpleMessage(" and "),
        "anySpecialRequest":
            MessageLookupByLibrary.simpleMessage("Any Special Request?"),
        "appUpdates": MessageLookupByLibrary.simpleMessage("App Updates"),
        "appUpdatesSubTitle": MessageLookupByLibrary.simpleMessage(
            "Notifications regarding important app changes, new features, or updates."),
        "applePay": MessageLookupByLibrary.simpleMessage("Apple pay"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "areSureExitProduct": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to exit?\n The current data will be erased and will not be saved."),
        "areSureLogout":
            MessageLookupByLibrary.simpleMessage("Are you sure logout?"),
        "areUSure": MessageLookupByLibrary.simpleMessage(
            "Are you sure delete this product"),
        "areUSureDeleteBranche": MessageLookupByLibrary.simpleMessage(
            "Are you sure delete this branche"),
        "areUSureDeleteCar": MessageLookupByLibrary.simpleMessage(
            "Are you sure delete this car"),
        "areUSureDeleteCard": MessageLookupByLibrary.simpleMessage(
            "Are you sure delete this card"),
        "areUSureDeleteLocation": MessageLookupByLibrary.simpleMessage(
            "Are you sure delete this location"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "arrivalTimeError": MessageLookupByLibrary.simpleMessage(
            "Arrival time must be more than 3 minutes from now"),
        "arrivesIn": MessageLookupByLibrary.simpleMessage("Arrives In:"),
        "authRequired":
            MessageLookupByLibrary.simpleMessage("Authentication Required"),
        "averageRating": MessageLookupByLibrary.simpleMessage("Average Rating"),
        "bankName": MessageLookupByLibrary.simpleMessage("Bank Name"),
        "biometricAuth": MessageLookupByLibrary.simpleMessage(
            "Use biometric authentication"),
        "bookTable": MessageLookupByLibrary.simpleMessage("Book your Table"),
        "bookTableTitle": MessageLookupByLibrary.simpleMessage(
            "Book your place and be ready for busy days"),
        "booking": MessageLookupByLibrary.simpleMessage("Booking"),
        "bookingCanceled":
            MessageLookupByLibrary.simpleMessage("Booking Canceled"),
        "bookingDate": MessageLookupByLibrary.simpleMessage("Booking Date"),
        "bookingDateRequired":
            MessageLookupByLibrary.simpleMessage("Booking date is required"),
        "bookingSuccessful":
            MessageLookupByLibrary.simpleMessage("Booking Done successfully"),
        "branchAdded":
            MessageLookupByLibrary.simpleMessage("Branch added successfully"),
        "branchDeleted":
            MessageLookupByLibrary.simpleMessage("Branch deleted successfully"),
        "branchLocation":
            MessageLookupByLibrary.simpleMessage("Branches\nLocation"),
        "branchUpdated":
            MessageLookupByLibrary.simpleMessage("Branch updated successfully"),
        "branches": MessageLookupByLibrary.simpleMessage("Branches"),
        "branchesCountPrompt": MessageLookupByLibrary.simpleMessage(
            "Please enter count of branches"),
        "brandName": MessageLookupByLibrary.simpleMessage("Brand Name"),
        "brandNamePrompt":
            MessageLookupByLibrary.simpleMessage("Please enter brand name"),
        "breakdown": MessageLookupByLibrary.simpleMessage("Breakdown"),
        "businessDescription":
            MessageLookupByLibrary.simpleMessage("Your Business type"),
        "businessDetails":
            MessageLookupByLibrary.simpleMessage("Business Details"),
        "businessInfo": MessageLookupByLibrary.simpleMessage("Business Info"),
        "businessType": MessageLookupByLibrary.simpleMessage("BusinessType"),
        "businessTypePrompt":
            MessageLookupByLibrary.simpleMessage("Please select business type"),
        "byCreating": MessageLookupByLibrary.simpleMessage(
            "By creating an account you Aggree to the"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "carAddedSuccess":
            MessageLookupByLibrary.simpleMessage("Car added successfully"),
        "carDeletedSuccess":
            MessageLookupByLibrary.simpleMessage("Car deleted successfully"),
        "carUpdatedSuccess":
            MessageLookupByLibrary.simpleMessage("Car updated successfully"),
        "cardHolderName":
            MessageLookupByLibrary.simpleMessage("Card Holder Name"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Card Number"),
        "cart": MessageLookupByLibrary.simpleMessage("Cart"),
        "cartClearedSuccess":
            MessageLookupByLibrary.simpleMessage("Cart cleared successfully"),
        "cartClosedSuccess":
            MessageLookupByLibrary.simpleMessage("Cart closed successfully"),
        "cartEmpty": MessageLookupByLibrary.simpleMessage("Your cart is empty"),
        "cartIdEmpty": MessageLookupByLibrary.simpleMessage("Cart ID is empty"),
        "cash": MessageLookupByLibrary.simpleMessage("Cash"),
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "categoryLoadingError":
            MessageLookupByLibrary.simpleMessage("Error loading categories"),
        "caughtUp":
            MessageLookupByLibrary.simpleMessage("You`re all caught up!"),
        "changePass": MessageLookupByLibrary.simpleMessage("Change Password"),
        "checkOut": MessageLookupByLibrary.simpleMessage("Check Out"),
        "chooseCar": MessageLookupByLibrary.simpleMessage("choose your car"),
        "chooseCategory":
            MessageLookupByLibrary.simpleMessage("Choose From Categories"),
        "chooseDeliveryLoction":
            MessageLookupByLibrary.simpleMessage("Choose delivery location"),
        "chooseDrink":
            MessageLookupByLibrary.simpleMessage("Choose your soft drink"),
        "chooseYourSideItem": m0,
        "clearAllNotifications":
            MessageLookupByLibrary.simpleMessage("Clear all notifications"),
        "clearCart": MessageLookupByLibrary.simpleMessage("Clear Cart"),
        "clickAgain":
            MessageLookupByLibrary.simpleMessage("Tap Again to Add New Item"),
        "clickShowItems":
            MessageLookupByLibrary.simpleMessage("Tap here to show your items"),
        "clickToAddNewItem": MessageLookupByLibrary.simpleMessage(
            "Click again to add a new item"),
        "clickToShowItems": MessageLookupByLibrary.simpleMessage(
            "Click here to show your items"),
        "clientReason":
            MessageLookupByLibrary.simpleMessage("tell you client the reason"),
        "clientsCanBook": MessageLookupByLibrary.simpleMessage(
            "Clients can book appointments with me"),
        "closeHoursPrompt":
            MessageLookupByLibrary.simpleMessage("Please select close hours"),
        "commentAdded": MessageLookupByLibrary.simpleMessage("Comment added"),
        "commentAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Comment added successfully"),
        "commentDeleted":
            MessageLookupByLibrary.simpleMessage("Comment deleted"),
        "commentDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Comment deleted successfully"),
        "comments": MessageLookupByLibrary.simpleMessage("Comments"),
        "commonIssues": MessageLookupByLibrary.simpleMessage("Common Issues"),
        "companyDetails":
            MessageLookupByLibrary.simpleMessage("Company Details"),
        "complete": MessageLookupByLibrary.simpleMessage("Complete"),
        "completeSetup": MessageLookupByLibrary.simpleMessage("Complete setup"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmClearAllNotifications": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to clear all notifications?"),
        "confirmDeleteBranch": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this branch?"),
        "confirmDeleteComment": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this comment?"),
        "confirmDeleteLocation": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this location?"),
        "confirmDeletePost": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this post? This action cannot be undone."),
        "confirmDeleteReply": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this reply?"),
        "confirmLocation":
            MessageLookupByLibrary.simpleMessage("Confirm Location"),
        "confirmPass": MessageLookupByLibrary.simpleMessage("confirm pass"),
        "continueWithEmail":
            MessageLookupByLibrary.simpleMessage("Continue with E-Mail"),
        "continueWithEmailInst": MessageLookupByLibrary.simpleMessage(
            "Continue with email address instead"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("Continue with google"),
        "continueWithPhone":
            MessageLookupByLibrary.simpleMessage("Continue with phone"),
        "continueWithPhoneInst": MessageLookupByLibrary.simpleMessage(
            "Continue with phone number instead"),
        "couponAddedSuccess":
            MessageLookupByLibrary.simpleMessage("Coupon applied successfully"),
        "couponRemovedSuccess":
            MessageLookupByLibrary.simpleMessage("Coupon removed successfully"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "createPost": MessageLookupByLibrary.simpleMessage("Create Post"),
        "credit": MessageLookupByLibrary.simpleMessage("Credit Card"),
        "cuisines": MessageLookupByLibrary.simpleMessage("Cuisines"),
        "currentLocation":
            MessageLookupByLibrary.simpleMessage("Add Your Current Location"),
        "customerOpinions": MessageLookupByLibrary.simpleMessage(
            "What our customers think of us"),
        "customerReviews":
            MessageLookupByLibrary.simpleMessage("Customer Reviews"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "daily": MessageLookupByLibrary.simpleMessage("Daily"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete account"),
        "deleteBranche": MessageLookupByLibrary.simpleMessage("Delete branche"),
        "deleteCar": MessageLookupByLibrary.simpleMessage("Delete car"),
        "deleteCard": MessageLookupByLibrary.simpleMessage("Delete card"),
        "deleteComment": MessageLookupByLibrary.simpleMessage("Delete comment"),
        "deleteLocation":
            MessageLookupByLibrary.simpleMessage("Delete location"),
        "deletePost": MessageLookupByLibrary.simpleMessage("Delete Post"),
        "deleteProduct": MessageLookupByLibrary.simpleMessage("Delete Product"),
        "deleteReply": MessageLookupByLibrary.simpleMessage("Delete Reply"),
        "deletedProduct":
            MessageLookupByLibrary.simpleMessage("Deleted Product"),
        "deliveringTo": m1,
        "delivery": MessageLookupByLibrary.simpleMessage("Delivery"),
        "deliveryAddresses":
            MessageLookupByLibrary.simpleMessage("Delivery\nAddresses"),
        "deliveryAndPickup":
            MessageLookupByLibrary.simpleMessage("Delivery & Pickup"),
        "deliveryOnly": MessageLookupByLibrary.simpleMessage("Delivery Only"),
        "describeBrand":
            MessageLookupByLibrary.simpleMessage("Descripe your brand"),
        "describeIssue":
            MessageLookupByLibrary.simpleMessage("Descripe your issue"),
        "description": MessageLookupByLibrary.simpleMessage("Discription"),
        "descriptionPrompt":
            MessageLookupByLibrary.simpleMessage("Please enter description"),
        "discountNotifications": MessageLookupByLibrary.simpleMessage(
            "Notifications about discounts, special offers, and seasonal promotions."),
        "discoverProducts":
            MessageLookupByLibrary.simpleMessage("Discover Products"),
        "distance": MessageLookupByLibrary.simpleMessage("Distance"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "dontHaveAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account? "),
        "dropOrder": MessageLookupByLibrary.simpleMessage("Drop Order"),
        "editEmailAddress":
            MessageLookupByLibrary.simpleMessage("Edit Email\nAddress"),
        "editLocation": MessageLookupByLibrary.simpleMessage("Edit Location"),
        "editPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Edit Phone\nNumber"),
        "editPost": MessageLookupByLibrary.simpleMessage("Edit Post"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailNotFound":
            MessageLookupByLibrary.simpleMessage("email not found"),
        "emailOrPass":
            MessageLookupByLibrary.simpleMessage("email or pass incorrect"),
        "emailOtp": MessageLookupByLibrary.simpleMessage(
            "we will sne you an email with OTP code"),
        "emptyLocationList":
            MessageLookupByLibrary.simpleMessage("No locations added yet"),
        "enableLocationServices": MessageLookupByLibrary.simpleMessage(
            "Please enable location services to continue"),
        "enjoy": MessageLookupByLibrary.simpleMessage("Enjoy !"),
        "enterEmailOrPhone": MessageLookupByLibrary.simpleMessage(
            "Enter your email address or phone\n number associated with your\n account"),
        "enterNumberOfSeats":
            MessageLookupByLibrary.simpleMessage("Enter number of seats"),
        "enterValideCard":
            MessageLookupByLibrary.simpleMessage("Enter valide card details"),
        "enterValideData":
            MessageLookupByLibrary.simpleMessage("Enter Valide Data"),
        "enterValideDate":
            MessageLookupByLibrary.simpleMessage("Enter valide date"),
        "enterYourName":
            MessageLookupByLibrary.simpleMessage("Enter Your Name"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorLoadingData":
            MessageLookupByLibrary.simpleMessage("Error loading data"),
        "errorLoadingFavorites":
            MessageLookupByLibrary.simpleMessage("Error loading favorites"),
        "estimatedTime": MessageLookupByLibrary.simpleMessage("Estimated Time"),
        "expectedPreparingTime": m2,
        "expiryDate": MessageLookupByLibrary.simpleMessage("Expiry Date"),
        "extraCharge": MessageLookupByLibrary.simpleMessage("Extra Charge"),
        "extraname": MessageLookupByLibrary.simpleMessage("extra name"),
        "extras": MessageLookupByLibrary.simpleMessage("Extras"),
        "failedToAddComment":
            MessageLookupByLibrary.simpleMessage("Failed to add comment"),
        "failedToAddReply":
            MessageLookupByLibrary.simpleMessage("Failed to add reply"),
        "failedToAddReview":
            MessageLookupByLibrary.simpleMessage("Failed to add review"),
        "failedToAddStory":
            MessageLookupByLibrary.simpleMessage("Failed to add story"),
        "failedToCreatePost":
            MessageLookupByLibrary.simpleMessage("Failed to create post"),
        "failedToDeleteComment":
            MessageLookupByLibrary.simpleMessage("Failed to delete comment"),
        "failedToDeleteReply":
            MessageLookupByLibrary.simpleMessage("Failed to delete reply"),
        "failedToDeleteStory":
            MessageLookupByLibrary.simpleMessage("Failed to delete story"),
        "failedToFollowUser":
            MessageLookupByLibrary.simpleMessage("Failed to follow user"),
        "failedToLikeComment":
            MessageLookupByLibrary.simpleMessage("Failed to like comment"),
        "failedToLikePost":
            MessageLookupByLibrary.simpleMessage("Failed to like post"),
        "failedToLoadBusinessDetails": MessageLookupByLibrary.simpleMessage(
            "Failed to load business details"),
        "failedToLoadComments":
            MessageLookupByLibrary.simpleMessage("Failed to load comments"),
        "failedToLoadCommonIssues": MessageLookupByLibrary.simpleMessage(
            "Failed to load common issues"),
        "failedToLoadDownloadPlatforms": MessageLookupByLibrary.simpleMessage(
            "Failed to load download platforms"),
        "failedToLoadFAQ":
            MessageLookupByLibrary.simpleMessage("Failed to load FAQ"),
        "failedToLoadFavorites":
            MessageLookupByLibrary.simpleMessage("Failed to load favorites"),
        "failedToLoadLikes":
            MessageLookupByLibrary.simpleMessage("Failed to load likes"),
        "failedToLoadNotifications": MessageLookupByLibrary.simpleMessage(
            "Failed to load notifications"),
        "failedToLoadPosts":
            MessageLookupByLibrary.simpleMessage("Failed to load posts"),
        "failedToLoadProducts":
            MessageLookupByLibrary.simpleMessage("Failed to load products"),
        "failedToLoadProfile":
            MessageLookupByLibrary.simpleMessage("Failed to load profile"),
        "failedToLoadReplies":
            MessageLookupByLibrary.simpleMessage("Failed to load replies"),
        "failedToLoadReviews":
            MessageLookupByLibrary.simpleMessage("Failed to load reviews"),
        "failedToLoadSavedPosts":
            MessageLookupByLibrary.simpleMessage("Failed to load saved posts"),
        "failedToLoadSocialPlatforms": MessageLookupByLibrary.simpleMessage(
            "Failed to load social platforms"),
        "failedToLoadUserPosts":
            MessageLookupByLibrary.simpleMessage("Failed to load user posts"),
        "failedToLoadUsers":
            MessageLookupByLibrary.simpleMessage("Failed to load users"),
        "failedToLoadVendors":
            MessageLookupByLibrary.simpleMessage("Failed to load vendors"),
        "failedToMarkAllNotificationsAsRead":
            MessageLookupByLibrary.simpleMessage(
                "Failed to mark all notifications as read"),
        "failedToMarkNotificationAsRead": MessageLookupByLibrary.simpleMessage(
            "Failed to mark notification as read"),
        "failedToSavePost":
            MessageLookupByLibrary.simpleMessage("Failed to save post"),
        "failedToUnfollowUser":
            MessageLookupByLibrary.simpleMessage("Failed to unfollow user"),
        "failedToUnlikeComment":
            MessageLookupByLibrary.simpleMessage("Failed to unlike comment"),
        "failedToUnlikePost":
            MessageLookupByLibrary.simpleMessage("Failed to unlike post"),
        "failedToViewStory":
            MessageLookupByLibrary.simpleMessage("Failed to view story"),
        "failedTransaction": MessageLookupByLibrary.simpleMessage(
            "failed to complete transaction"),
        "failureAddCoupon":
            MessageLookupByLibrary.simpleMessage("Failed to apply coupon"),
        "failureAddItem":
            MessageLookupByLibrary.simpleMessage("Failed to add item to cart"),
        "failureClearCart":
            MessageLookupByLibrary.simpleMessage("Failed to clear cart"),
        "failureCloseCart":
            MessageLookupByLibrary.simpleMessage("Failed to close cart"),
        "failureGetCartDetails":
            MessageLookupByLibrary.simpleMessage("Failed to get cart details"),
        "failureGetCategories":
            MessageLookupByLibrary.simpleMessage("Failed to get categories"),
        "failureGetOftenProductCart": MessageLookupByLibrary.simpleMessage(
            "Failed to get often ordered products"),
        "failureGetPreparingTime": MessageLookupByLibrary.simpleMessage(
            "Failed to get preparing time"),
        "failureGetSponsors":
            MessageLookupByLibrary.simpleMessage("Failed to get sponsors"),
        "failureGetUserCart":
            MessageLookupByLibrary.simpleMessage("Failed to get user cart"),
        "failureRemoveItem": MessageLookupByLibrary.simpleMessage(
            "Failed to remove item from cart"),
        "failureUpdateItem": MessageLookupByLibrary.simpleMessage(
            "Failed to update item quantity"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "feed": MessageLookupByLibrary.simpleMessage("Feed"),
        "feedback": MessageLookupByLibrary.simpleMessage("Feedback"),
        "fillAllCarFields": MessageLookupByLibrary.simpleMessage(
            "Please fill all fields and select an image"),
        "filterSearch":
            MessageLookupByLibrary.simpleMessage("Filter your search"),
        "firstName": MessageLookupByLibrary.simpleMessage("First name"),
        "follow": MessageLookupByLibrary.simpleMessage("Follow"),
        "followers": MessageLookupByLibrary.simpleMessage("Followers"),
        "following": MessageLookupByLibrary.simpleMessage("Following"),
        "foodList": MessageLookupByLibrary.simpleMessage("Food List"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "freePoints":
            MessageLookupByLibrary.simpleMessage("Enjoy your free 3,000 pts"),
        "from": MessageLookupByLibrary.simpleMessage("From"),
        "fromGallery": MessageLookupByLibrary.simpleMessage("From Gallery"),
        "furtherHelp":
            MessageLookupByLibrary.simpleMessage("Need Further Help?"),
        "goToGpsSettings":
            MessageLookupByLibrary.simpleMessage("Go to GPS settings"),
        "goodAfterNon": MessageLookupByLibrary.simpleMessage("Good Afternoon!"),
        "gpsError": MessageLookupByLibrary.simpleMessage("No GPS connection"),
        "gpsSettings":
            MessageLookupByLibrary.simpleMessage("please check for location"),
        "help": MessageLookupByLibrary.simpleMessage("Help"),
        "hiMsg": m3,
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "houseNumberHint": MessageLookupByLibrary.simpleMessage(
            "House Number / Flat / Block No."),
        "iamUser": MessageLookupByLibrary.simpleMessage("I am User"),
        "iamVendor": MessageLookupByLibrary.simpleMessage("I am Vendor"),
        "importantNotifications": MessageLookupByLibrary.simpleMessage(
            "Notifications about important app changes or new updates."),
        "incorectPass":
            MessageLookupByLibrary.simpleMessage("Inccorect password"),
        "invitationLink": MessageLookupByLibrary.simpleMessage(
            "Send your friends your personal invitation link or code"),
        "inviteEarnPoints": m4,
        "inviteFriends": MessageLookupByLibrary.simpleMessage("Invite Friends"),
        "itemAdded": MessageLookupByLibrary.simpleMessage("Item added"),
        "itemAddedSuccess": MessageLookupByLibrary.simpleMessage(
            "Item added to cart successfully"),
        "itemDetails": MessageLookupByLibrary.simpleMessage("Item Details"),
        "itemName": MessageLookupByLibrary.simpleMessage("Item Name"),
        "itemRemovedSuccess": MessageLookupByLibrary.simpleMessage(
            "Item removed from cart successfully"),
        "itemUpdatedSuccess": MessageLookupByLibrary.simpleMessage(
            "Item quantity updated successfully"),
        "itemUuidEmpty":
            MessageLookupByLibrary.simpleMessage("Item UUID is empty"),
        "iwantRecive": MessageLookupByLibrary.simpleMessage(
            "I want to receive the latest offers and updates "),
        "km": m5,
        "landmark": MessageLookupByLibrary.simpleMessage("landmark"),
        "landmarkHint":
            MessageLookupByLibrary.simpleMessage("e.g. Near ABC School"),
        "languagePreference":
            MessageLookupByLibrary.simpleMessage("Language Preference"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last name"),
        "leaveFeedback":
            MessageLookupByLibrary.simpleMessage("Leave Your Feedback"),
        "letsStarted":
            MessageLookupByLibrary.simpleMessage("Let`s Get Started"),
        "licensePlate": MessageLookupByLibrary.simpleMessage("License plate"),
        "likes": MessageLookupByLibrary.simpleMessage("Likes"),
        "loLetter":
            MessageLookupByLibrary.simpleMessage("1 lowercase letter (a-z)"),
        "loadingComments":
            MessageLookupByLibrary.simpleMessage("Loading comments..."),
        "loadingLikes":
            MessageLookupByLibrary.simpleMessage("Loading likes..."),
        "loadingNotifications":
            MessageLookupByLibrary.simpleMessage("Loading notifications..."),
        "loadingPosts":
            MessageLookupByLibrary.simpleMessage("Loading posts..."),
        "loadingProducts":
            MessageLookupByLibrary.simpleMessage("Loading products..."),
        "loadingProfile":
            MessageLookupByLibrary.simpleMessage("Loading profile..."),
        "loadingReplies":
            MessageLookupByLibrary.simpleMessage("Loading replies..."),
        "loadingStory":
            MessageLookupByLibrary.simpleMessage("Loading story..."),
        "loadingUsers":
            MessageLookupByLibrary.simpleMessage("Loading users..."),
        "loadingVendors":
            MessageLookupByLibrary.simpleMessage("Loading vendors..."),
        "locationAccessRequired": MessageLookupByLibrary.simpleMessage(
            "Location access is required for this feature to work properly"),
        "locationAdded":
            MessageLookupByLibrary.simpleMessage("Location added successfully"),
        "locationDeleted": MessageLookupByLibrary.simpleMessage(
            "Location deleted successfully"),
        "locationError": MessageLookupByLibrary.simpleMessage("Location error"),
        "locationErrorPerm": MessageLookupByLibrary.simpleMessage(
            "Location permissions are permanently denied, we cannot request permissions."),
        "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Location permission is required to use this feature"),
        "locationPermissionsDenied": MessageLookupByLibrary.simpleMessage(
            "Location permissions are denied"),
        "locationPermissionsDeniedForever":
            MessageLookupByLibrary.simpleMessage(
                "Location permissions are permanently denied"),
        "locationPicker":
            MessageLookupByLibrary.simpleMessage("Location Picker"),
        "locationServicesDisabled": MessageLookupByLibrary.simpleMessage(
            "Location services are disabled"),
        "locationUpdated": MessageLookupByLibrary.simpleMessage(
            "Location updated successfully"),
        "locations": MessageLookupByLibrary.simpleMessage("Your locations"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "makeOrder": MessageLookupByLibrary.simpleMessage("Make Order"),
        "markAllAsRead":
            MessageLookupByLibrary.simpleMessage("Mark all as read"),
        "mentionItem": MessageLookupByLibrary.simpleMessage("Mention Item"),
        "missingRequiredParams":
            MessageLookupByLibrary.simpleMessage("Missing required parameters"),
        "monthly": MessageLookupByLibrary.simpleMessage("Monthly"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "mostOrderedThisWeek":
            MessageLookupByLibrary.simpleMessage("Most Ordered This Week"),
        "myAccount": MessageLookupByLibrary.simpleMessage("My Account"),
        "myLikeAdd":
            MessageLookupByLibrary.simpleMessage("May you like to add"),
        "nameCategory":
            MessageLookupByLibrary.simpleMessage("Name your new Category"),
        "newEmail": MessageLookupByLibrary.simpleMessage("Enter your new mail"),
        "newItems": MessageLookupByLibrary.simpleMessage("New Items"),
        "newPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Enter your new number"),
        "newsFeed": MessageLookupByLibrary.simpleMessage("News Feed"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noComment": MessageLookupByLibrary.simpleMessage("No comments"),
        "noCommentsFound":
            MessageLookupByLibrary.simpleMessage("No comments found"),
        "noCommonIssuesFound":
            MessageLookupByLibrary.simpleMessage("No common issues found"),
        "noCreditCards":
            MessageLookupByLibrary.simpleMessage("no Credit cards"),
        "noDataAvailable":
            MessageLookupByLibrary.simpleMessage("No data available"),
        "noDownloadPlatformsFound":
            MessageLookupByLibrary.simpleMessage("No download platforms found"),
        "noFAQFound": MessageLookupByLibrary.simpleMessage("No FAQ found"),
        "noFav": MessageLookupByLibrary.simpleMessage("No Favourites Yet"),
        "noFavoritesFound":
            MessageLookupByLibrary.simpleMessage("No favorites found"),
        "noLikesFound": MessageLookupByLibrary.simpleMessage("No likes found"),
        "noLocationsFound":
            MessageLookupByLibrary.simpleMessage("No locations found"),
        "noNotifications": MessageLookupByLibrary.simpleMessage(
            "You dont\'t have new notification yet"),
        "noNotificationsAvailable":
            MessageLookupByLibrary.simpleMessage("No notifications available"),
        "noOrdersAvailable":
            MessageLookupByLibrary.simpleMessage("No orders available"),
        "noPlaces": MessageLookupByLibrary.simpleMessage("No Places"),
        "noPosts": MessageLookupByLibrary.simpleMessage(
            "You don\'t havae any posts yet!"),
        "noProductsAvailable":
            MessageLookupByLibrary.simpleMessage("No products available"),
        "noProductsFound":
            MessageLookupByLibrary.simpleMessage("No products found"),
        "noRepliesFound":
            MessageLookupByLibrary.simpleMessage("No replies found"),
        "noResautrants": MessageLookupByLibrary.simpleMessage("No Resaurants"),
        "noReviewsFound":
            MessageLookupByLibrary.simpleMessage("No reviews found"),
        "noSavedPosts":
            MessageLookupByLibrary.simpleMessage("No Saved Posts yet!"),
        "noSocialPlatformsFound":
            MessageLookupByLibrary.simpleMessage("No social platforms found"),
        "noSponsers":
            MessageLookupByLibrary.simpleMessage("No Sponsers avaialable"),
        "noSponsorsAvailable":
            MessageLookupByLibrary.simpleMessage("No sponsors available"),
        "noStoriesAvailable":
            MessageLookupByLibrary.simpleMessage("No stories available"),
        "noUserPosts": MessageLookupByLibrary.simpleMessage("No user posts"),
        "noUsersFound": MessageLookupByLibrary.simpleMessage("No users found"),
        "noVendorsFound":
            MessageLookupByLibrary.simpleMessage("No vendors found"),
        "notSet": MessageLookupByLibrary.simpleMessage("Not set"),
        "notificationHistory":
            MessageLookupByLibrary.simpleMessage("Notification history"),
        "notificationMarkedAsRead":
            MessageLookupByLibrary.simpleMessage("Notification marked as read"),
        "notificationPreferences":
            MessageLookupByLibrary.simpleMessage("Notification preferences"),
        "notificationSettings":
            MessageLookupByLibrary.simpleMessage("Notification settings"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "notificationsCleared":
            MessageLookupByLibrary.simpleMessage("Notifications cleared"),
        "notificationsEmpty":
            MessageLookupByLibrary.simpleMessage("You\'re all caught up!"),
        "notificationsEmptySubtitle":
            MessageLookupByLibrary.simpleMessage("No notifications yet"),
        "numberOfSeats":
            MessageLookupByLibrary.simpleMessage("Number of Seats"),
        "numberOfSeatsRequired":
            MessageLookupByLibrary.simpleMessage("Number of seats is required"),
        "oftenOrderedWith":
            MessageLookupByLibrary.simpleMessage("Often ordered with"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "oldPass": MessageLookupByLibrary.simpleMessage("Old password"),
        "onSpecial":
            MessageLookupByLibrary.simpleMessage("1 special character"),
        "oneNumber": MessageLookupByLibrary.simpleMessage("1 number (0-9)"),
        "ongoing": MessageLookupByLibrary.simpleMessage("Ongoing"),
        "openHoursPrompt":
            MessageLookupByLibrary.simpleMessage("Please select open hours"),
        "openNow": MessageLookupByLibrary.simpleMessage("Open now"),
        "operatingHours":
            MessageLookupByLibrary.simpleMessage("Operatin hours"),
        "optimisticUpdate": MessageLookupByLibrary.simpleMessage("Updating..."),
        "or": MessageLookupByLibrary.simpleMessage("OR"),
        "orderAccepted":
            MessageLookupByLibrary.simpleMessage("You Acceepted the order"),
        "orderAhead": MessageLookupByLibrary.simpleMessage("Order Ahead"),
        "orderAheadTitle": MessageLookupByLibrary.simpleMessage(
            "Order Any thing now and pick it up whenever you want !"),
        "orderDetails": MessageLookupByLibrary.simpleMessage("Details"),
        "orderId": m6,
        "orderNotifications": MessageLookupByLibrary.simpleMessage(
            "Notifications about placed, ongoing, and delivered orders."),
        "orderOutForDelivery": MessageLookupByLibrary.simpleMessage(
            "Your order is out for delivery"),
        "orderPlaced":
            MessageLookupByLibrary.simpleMessage("Your order has been placed"),
        "orderPreparing": m7,
        "orderRejected":
            MessageLookupByLibrary.simpleMessage("You rejected the order"),
        "orderStatus": MessageLookupByLibrary.simpleMessage("Order Status"),
        "orderUpdate": MessageLookupByLibrary.simpleMessage("Order Update"),
        "orderUpdateSubTitle": MessageLookupByLibrary.simpleMessage(
            "notifications for when the order is placed, in progress, and delivered."),
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "overallRating":
            MessageLookupByLibrary.simpleMessage("Overall App Rating"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordAuth":
            MessageLookupByLibrary.simpleMessage("Enter your password"),
        "passwordIsRequired": MessageLookupByLibrary.simpleMessage(
            "Password is required to update personal info"),
        "passwordValidaton": MessageLookupByLibrary.simpleMessage(
            "Passwords must be at least 8 characters:"),
        "payWith": MessageLookupByLibrary.simpleMessage("Pay with"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Payment Methods"),
        "paymentRequired":
            MessageLookupByLibrary.simpleMessage("Payment method is required"),
        "pendingOrders": MessageLookupByLibrary.simpleMessage("Pending"),
        "personalInfo": MessageLookupByLibrary.simpleMessage("Personal Info"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneRequired":
            MessageLookupByLibrary.simpleMessage("Phone number is required"),
        "pickup": MessageLookupByLibrary.simpleMessage("Pickup"),
        "pickupOnly": MessageLookupByLibrary.simpleMessage("Pickup Only"),
        "placeOrder": MessageLookupByLibrary.simpleMessage("Place Order"),
        "pleaseSelectSize":
            MessageLookupByLibrary.simpleMessage("please select size first"),
        "plsActivateEmail":
            MessageLookupByLibrary.simpleMessage("please activate your email"),
        "plsActivatePhone":
            MessageLookupByLibrary.simpleMessage("Please activate your phone"),
        "plsAuth": MessageLookupByLibrary.simpleMessage(
            "Please Auth to view you card"),
        "plsCompleteSetup": MessageLookupByLibrary.simpleMessage(
            "please complete signup profile"),
        "plsEnterEmail":
            MessageLookupByLibrary.simpleMessage("please enter your email"),
        "plsEnterFName":
            MessageLookupByLibrary.simpleMessage("please enter first name"),
        "plsEnterLName":
            MessageLookupByLibrary.simpleMessage("please enter last name"),
        "plsEnterPass":
            MessageLookupByLibrary.simpleMessage("please enter your password"),
        "plsEnterPhone":
            MessageLookupByLibrary.simpleMessage("please enter you phone"),
        "plsEnterValidEmail":
            MessageLookupByLibrary.simpleMessage("please enter valid email"),
        "plsEnterValidPass":
            MessageLookupByLibrary.simpleMessage("please enter valid password"),
        "plsEnterValidPhone":
            MessageLookupByLibrary.simpleMessage("please enter valid phone"),
        "plsSelectCategory":
            MessageLookupByLibrary.simpleMessage("Please select category"),
        "plsSelectImg":
            MessageLookupByLibrary.simpleMessage("Please Select Image"),
        "popularPlaces":
            MessageLookupByLibrary.simpleMessage("Popular Places Nearby"),
        "popularProducts":
            MessageLookupByLibrary.simpleMessage("Popular Products"),
        "postCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Post created successfully"),
        "postDeleted": MessageLookupByLibrary.simpleMessage("Post deleted"),
        "postSaved": MessageLookupByLibrary.simpleMessage("Post Saved"),
        "postSavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Post saved successfully"),
        "postUnsavedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Post unsaved successfully"),
        "posts": MessageLookupByLibrary.simpleMessage("Posts"),
        "preparingTime": MessageLookupByLibrary.simpleMessage("Preparing time"),
        "price": MessageLookupByLibrary.simpleMessage("Price"),
        "priceWithCurrency": m8,
        "privacy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "proceed": MessageLookupByLibrary.simpleMessage("Procceed"),
        "processingRequest": MessageLookupByLibrary.simpleMessage(
            "We Are Processing your request"),
        "productDeletedSuccess": MessageLookupByLibrary.simpleMessage(
            "Product deleted successfully"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "promoCode":
            MessageLookupByLibrary.simpleMessage("Enter Your Promo Code"),
        "promotions": MessageLookupByLibrary.simpleMessage("Promotions"),
        "promotionsSubTitle": MessageLookupByLibrary.simpleMessage(
            "notifications for discounts, special deals, and seasonal offers."),
        "providingPrompt":
            MessageLookupByLibrary.simpleMessage("Please select providing"),
        "question": MessageLookupByLibrary.simpleMessage("Question"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Rate us"),
        "rating": m9,
        "ratingTitle": MessageLookupByLibrary.simpleMessage("Rating"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "refreshFavorites":
            MessageLookupByLibrary.simpleMessage("Refresh favorites"),
        "refreshNotifications":
            MessageLookupByLibrary.simpleMessage("Refresh notifications"),
        "reject": MessageLookupByLibrary.simpleMessage("Reject"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "removeFollower":
            MessageLookupByLibrary.simpleMessage("Remove Follower"),
        "removedFromFavorites":
            MessageLookupByLibrary.simpleMessage("Removed from favorites"),
        "reorder": MessageLookupByLibrary.simpleMessage("Re-Order"),
        "replyAdded": MessageLookupByLibrary.simpleMessage("Reply added"),
        "replyAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reply added successfully"),
        "replyComment": MessageLookupByLibrary.simpleMessage("Reply comment"),
        "replyDeleted": MessageLookupByLibrary.simpleMessage("Reply deleted"),
        "replyDeletedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Reply deleted successfully"),
        "replys": MessageLookupByLibrary.simpleMessage("Replys"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "requiredField": MessageLookupByLibrary.simpleMessage("Required field"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Resend code in: "),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "revenue": MessageLookupByLibrary.simpleMessage("Revenue"),
        "reviewAddedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Review added successfully"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reivews"),
        "role": MessageLookupByLibrary.simpleMessage("Your Role"),
        "roleInCompany": MessageLookupByLibrary.simpleMessage(
            "Enter Your Role in the company"),
        "rolePrompt":
            MessageLookupByLibrary.simpleMessage("Please enter your role"),
        "runningOrders": MessageLookupByLibrary.simpleMessage("Running"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "scheduleOrder":
            MessageLookupByLibrary.simpleMessage("Schedule Your Order"),
        "searchCoffe": MessageLookupByLibrary.simpleMessage(
            "Search Coffee Shops, Restaurants, etc"),
        "searchForLocation": MessageLookupByLibrary.simpleMessage(
            "Search for a building, street or ..."),
        "searchForProducts":
            MessageLookupByLibrary.simpleMessage("Search for products"),
        "searchForUsers":
            MessageLookupByLibrary.simpleMessage("Search for users"),
        "searchForVendors":
            MessageLookupByLibrary.simpleMessage("Search for vendors"),
        "searchITem": MessageLookupByLibrary.simpleMessage("Search Items"),
        "searchIssues": MessageLookupByLibrary.simpleMessage("Search issues"),
        "seeAllReviews":
            MessageLookupByLibrary.simpleMessage("See All Reviews"),
        "seeMore": MessageLookupByLibrary.simpleMessage("See More"),
        "selectBranch":
            MessageLookupByLibrary.simpleMessage("Please select a branch"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
        "selectLocation":
            MessageLookupByLibrary.simpleMessage("Select Location"),
        "selectLocationNear": MessageLookupByLibrary.simpleMessage(
            "Select location to see nearby places"),
        "selectMake": MessageLookupByLibrary.simpleMessage("Select Make"),
        "selectModel": MessageLookupByLibrary.simpleMessage("Select Model"),
        "selectOrderType":
            MessageLookupByLibrary.simpleMessage("Select order type"),
        "selectProduct": MessageLookupByLibrary.simpleMessage("Select Product"),
        "selectVendor": MessageLookupByLibrary.simpleMessage("Select Vendor"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendFeedback":
            MessageLookupByLibrary.simpleMessage("Leave Us feedback"),
        "servicesProvided":
            MessageLookupByLibrary.simpleMessage("I am providing"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "setupAccount":
            MessageLookupByLibrary.simpleMessage("Set up your account"),
        "shareCode": MessageLookupByLibrary.simpleMessage("Share My Code"),
        "shareExp":
            MessageLookupByLibrary.simpleMessage("Share Your Experience "),
        "shareExperience":
            MessageLookupByLibrary.simpleMessage("Share your experience"),
        "shareFunctionality": MessageLookupByLibrary.simpleMessage(
            "Share functionality would be implemented here"),
        "sharePost": MessageLookupByLibrary.simpleMessage("Share Post"),
        "shimmerLoading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "sideItemName": MessageLookupByLibrary.simpleMessage("Side item name"),
        "sideItems": MessageLookupByLibrary.simpleMessage("Side Items"),
        "signup": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "size": MessageLookupByLibrary.simpleMessage("Size"),
        "sizes": MessageLookupByLibrary.simpleMessage("Sizes"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "smsOtp": MessageLookupByLibrary.simpleMessage(
            "We will sendd you an SMS with OTP code"),
        "sort": MessageLookupByLibrary.simpleMessage("Sort"),
        "sortAZ": MessageLookupByLibrary.simpleMessage("A-Z"),
        "sortBy": MessageLookupByLibrary.simpleMessage("Sort by"),
        "sortDistance":
            MessageLookupByLibrary.simpleMessage("Distance From Center"),
        "sortHighToLow":
            MessageLookupByLibrary.simpleMessage("Rating (High To Low)"),
        "sortLowToHigh":
            MessageLookupByLibrary.simpleMessage("Rating (Low To High)"),
        "specialRequest":
            MessageLookupByLibrary.simpleMessage("Special Request"),
        "specialRequestCart":
            MessageLookupByLibrary.simpleMessage("Any Special Request"),
        "sponser": MessageLookupByLibrary.simpleMessage("Sponsors"),
        "sponsorsLoadingError":
            MessageLookupByLibrary.simpleMessage("Error loading sponsors"),
        "story": MessageLookupByLibrary.simpleMessage("Story"),
        "storyAdded": MessageLookupByLibrary.simpleMessage("Story added"),
        "storyDeleted": MessageLookupByLibrary.simpleMessage("Story deleted"),
        "storyExpired": MessageLookupByLibrary.simpleMessage("Story expired"),
        "storyUploadComplete":
            MessageLookupByLibrary.simpleMessage("Story upload complete"),
        "storyUploadFailed":
            MessageLookupByLibrary.simpleMessage("Story upload failed"),
        "storyUploadProgress":
            MessageLookupByLibrary.simpleMessage("Story upload progress"),
        "storyViewed": MessageLookupByLibrary.simpleMessage("Story viewed"),
        "successAdded": MessageLookupByLibrary.simpleMessage("Success added"),
        "successDeleted":
            MessageLookupByLibrary.simpleMessage("Success deleted"),
        "successUpdate": MessageLookupByLibrary.simpleMessage("Success update"),
        "successUpdated":
            MessageLookupByLibrary.simpleMessage("Success updated"),
        "suggestions": MessageLookupByLibrary.simpleMessage("Suggestions"),
        "tabHereToChangeLocation": MessageLookupByLibrary.simpleMessage(
            "Tab here to change your location if location not added the nearby places not shown."),
        "tagVendor": MessageLookupByLibrary.simpleMessage("Tag Vendor"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Take Photo"),
        "tellClient": MessageLookupByLibrary.simpleMessage(
            "Would you like to tell your client any thing"),
        "tellUsAbout": MessageLookupByLibrary.simpleMessage(
            "Tell us about your business ( your customers will see this information on Prezza app to search and contact you )"),
        "temporaryState":
            MessageLookupByLibrary.simpleMessage("Temporary state"),
        "terms": MessageLookupByLibrary.simpleMessage("Terms of Use"),
        "thanksPatience":
            MessageLookupByLibrary.simpleMessage("Thanks for your patience"),
        "themePreference":
            MessageLookupByLibrary.simpleMessage("Theme Preference"),
        "to": MessageLookupByLibrary.simpleMessage("TO"),
        "total": m10,
        "totalRevenue": MessageLookupByLibrary.simpleMessage("Total Revenue"),
        "totalReviews": MessageLookupByLibrary.simpleMessage("Total Reviews"),
        "trackOrder": MessageLookupByLibrary.simpleMessage("Track Order"),
        "trending":
            MessageLookupByLibrary.simpleMessage("Check out What\'s trending"),
        "tutorialSkip": MessageLookupByLibrary.simpleMessage("SKIP"),
        "unfollow": MessageLookupByLibrary.simpleMessage("UnFollow"),
        "upLetter":
            MessageLookupByLibrary.simpleMessage("1 uppercase letter (A-Z)"),
        "uploadPhoto": MessageLookupByLibrary.simpleMessage("Upload Photo"),
        "uploadProgress":
            MessageLookupByLibrary.simpleMessage("Upload Progress"),
        "uploading": MessageLookupByLibrary.simpleMessage("Uploading"),
        "uploadingStory":
            MessageLookupByLibrary.simpleMessage("Uploading story..."),
        "urBrandLogo": MessageLookupByLibrary.simpleMessage("Your brand logo"),
        "urIn": MessageLookupByLibrary.simpleMessage("You Are in"),
        "urKnownName": MessageLookupByLibrary.simpleMessage("Your known name "),
        "useBiometrics": MessageLookupByLibrary.simpleMessage(
            "Use biometrics to show card?"),
        "userFollowedSuccessfully":
            MessageLookupByLibrary.simpleMessage("User followed successfully"),
        "userIdNotFound":
            MessageLookupByLibrary.simpleMessage("User ID not found"),
        "userUnfollowedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "User unfollowed successfully"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "users": MessageLookupByLibrary.simpleMessage("Users"),
        "vehicleBrand": MessageLookupByLibrary.simpleMessage("Vehicle Brand"),
        "vehicleColor": MessageLookupByLibrary.simpleMessage("Vehicle Color"),
        "vehicleModel": MessageLookupByLibrary.simpleMessage("Vehicle Model"),
        "vehicleType": MessageLookupByLibrary.simpleMessage("Vehicle Type"),
        "vendorBalance": MessageLookupByLibrary.simpleMessage("Vendor Balance"),
        "vendorNotInFavorites":
            MessageLookupByLibrary.simpleMessage("Vendor not in favorites"),
        "vendorsInFavorites": m11,
        "verifyEmail": MessageLookupByLibrary.simpleMessage("Verify Email"),
        "verifyPhone": MessageLookupByLibrary.simpleMessage("Verify Phone"),
        "viewAll": MessageLookupByLibrary.simpleMessage("View All"),
        "viewCard": MessageLookupByLibrary.simpleMessage("View Your Card"),
        "viewStory": MessageLookupByLibrary.simpleMessage("View Story"),
        "waitingWeAre": MessageLookupByLibrary.simpleMessage(
            "Please wait, we are making magic"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "welcomeTitle": MessageLookupByLibrary.simpleMessage(
            "we\'re glad that that you are here"),
        "wholeWeak": MessageLookupByLibrary.simpleMessage("24/7 Service"),
        "writeComment": MessageLookupByLibrary.simpleMessage("Write a comment"),
        "writeHere": MessageLookupByLibrary.simpleMessage("Write here"),
        "writeReply": MessageLookupByLibrary.simpleMessage("Write a reply"),
        "yearly": MessageLookupByLibrary.simpleMessage("Yearly"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "youCanCancel": m12,
        "youCanScroll": MessageLookupByLibrary.simpleMessage(
            "You can scroll up or down\nto explore more side items and you can press to show items"),
        "youCantCancel": MessageLookupByLibrary.simpleMessage(
            "Order Cannot be cancelled it is being prepared now"),
        "yourCars": MessageLookupByLibrary.simpleMessage("Your Cars"),
        "yourPassNotMatch":
            MessageLookupByLibrary.simpleMessage("your password not match"),
        "yourPost": MessageLookupByLibrary.simpleMessage("Your post"),
        "yourReferralCode":
            MessageLookupByLibrary.simpleMessage("Your Referral Code")
      };
}

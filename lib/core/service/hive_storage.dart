import 'package:hive_flutter/adapters.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';
import 'package:prezza/features/location/domain/entities/current_location_entity.dart';
import 'package:prezza/features/profile/domain/entities/businessdetails_entity.dart';
import 'package:prezza/features/search/domain/entities/vendorsearch_entity.dart';

import '../../features/auth/domain/entities/user_entity.dart';

const String kUser = 'user';
const String kUid = 'uid';
const String kToken = 'token';
const String kCategories = 'categories';
const String kBusiness = 'business';
const String kPass = 'pass';
const String kTurorial = 'tutorial';
const String kCarApitoken = 'carToken';
const String kVendorSearch = 'vendorSearch';
const String kCurLocation = 'currentLocation';
const String kOnBoard = 'onBoarding';
const String kLocale = 'local';
const String kTutorialProduct = 'productTutorial';

class HiveStorage {
  static late Box box;
  // FLutterSecureStorage

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserEntityAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(TokensAdapter());
    Hive.registerAdapter(VendorSearchEntityAdapter());
    Hive.registerAdapter(CategoryEntityAdapter());
    Hive.registerAdapter(BusinessDetailsEntityAdapter());
    Hive.registerAdapter(CurrentLocationEntityAdapter());
    box = await Hive.openBox('PrezzaBox');
  }

  static T get<T extends dynamic>(String key) {
    try {
      return box.get(key, defaultValue: null) as T;
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> set<T>(String key, T value) async {
    box.put(key, value);
  }

  static Future<void> remove(String key) async {
    box.delete(key);
  }

  static Future<void> clear() async {
    box.clear();
  }
}

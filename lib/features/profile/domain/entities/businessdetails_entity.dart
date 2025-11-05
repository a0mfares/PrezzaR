import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:prezza/features/category/data/models/category_model.dart';
import 'package:prezza/features/category/domain/entities/category_entity.dart';

import '../../data/models/businessdetails_model.dart';

part 'businessdetails_entity.g.dart';

@HiveType(typeId: 23)
@AutoMappr([
  MapType<BusinessDetailsModel, BusinessDetailsEntity>(),
])
class BusinessDetailsEntity extends $BusinessDetailsEntity {
  @HiveField(0)
  final String business_name;

  @HiveField(1)
  final int branches;

  @HiveField(2)
  final String vendor_role;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String operating_hours_from;

  @HiveField(5)
  final String operating_hours_to;

  @HiveField(6)
  final bool has_booking;

  @HiveField(7)
  final String service;

  @HiveField(8)
  final String business_logo;

  @HiveField(9)
  @JsonKey(fromJson: CategoryModel.fromMap, toJson: business_categoryToMap)
  final CategoryEntity business_category;

  BusinessDetailsEntity({
    required this.business_name,
    required this.branches,
    required this.vendor_role,
    required this.description,
    required this.operating_hours_from,
    required this.operating_hours_to,
    required this.has_booking,
    required this.service,
    required this.business_logo,
    required this.business_category,
  });

  factory BusinessDetailsEntity.fromModel(BusinessDetailsModel model) =>
      const $BusinessDetailsEntity()
          .convert<BusinessDetailsModel, BusinessDetailsEntity>(model);

  // Static serialization methods for nested objects
  static Map<String, dynamic> business_categoryToMap(
          CategoryEntity businessCategory) =>
      businessCategory.toModel().toMap();

  factory BusinessDetailsEntity.empty() => BusinessDetailsEntity(
      business_name: '',
      branches: 0,
      vendor_role: '',
      description: '',
      operating_hours_from: '',
      operating_hours_to: '',
      has_booking: false,
      service: '',
      business_logo: '',
      business_category: CategoryEntity(id: 0, name: '', image_url: ''));
}

@HiveType(typeId: 54)
class Business_category extends Equatable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  const Business_category({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Business_category.fromMap(Map<String, dynamic> map) {
    return Business_category(
      id: map['id'],
      name: map['name'],
    );
  }

  @override
  List<Object?> get props => [id, name];
}

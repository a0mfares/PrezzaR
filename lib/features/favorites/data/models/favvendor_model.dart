import 'package:json_annotation/json_annotation.dart';
import 'package:prezza/features/favorites/domain/entities/favvendor_entity.dart';

part 'favvendor_model.g.dart';

@JsonSerializable()
class FavVendorModel extends FavVendorEntity {
  FavVendorModel(
      {required super.uuid,
      required super.bussiness_category,
      required super.bussiness_name,
      required super.bussiness_avg_stars,
      required super.num_of_reviews,
      required super.bussiness_logo});

  factory FavVendorModel.fromJson(Map<String, dynamic> json) =>
      _$FavVendorModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prezza/features/landing/domain/entities/commonissue_entity.dart';

part 'commonissue_model.g.dart';

@JsonSerializable()
class CommonIssueModel extends CommonIssueEntity {
  CommonIssueModel({required super.issue, required super.index});
  factory CommonIssueModel.fromMap(Map<String, dynamic> json) =>
      _$CommonIssueModelFromJson(json);
}

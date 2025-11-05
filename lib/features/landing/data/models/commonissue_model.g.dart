// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commonissue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonIssueModel _$CommonIssueModelFromJson(Map<String, dynamic> json) =>
    CommonIssueModel(
      issue: json['issue'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$CommonIssueModelToJson(CommonIssueModel instance) =>
    <String, dynamic>{
      'issue': instance.issue,
      'index': instance.index,
    };

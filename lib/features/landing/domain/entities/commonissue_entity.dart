import 'package:hive/hive.dart';
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../data/models/commonissue_model.dart';

part 'commonissue_entity.g.dart';

@HiveType(typeId: 33)
@AutoMappr([
  MapType<CommonIssueModel, CommonIssueEntity>(),
])
class CommonIssueEntity extends $CommonIssueEntity {
  @HiveField(0)
  final String issue;

  @HiveField(1)
  final int index;

  CommonIssueEntity({
    required this.issue,
    required this.index,
  });

  factory CommonIssueEntity.fromModel(CommonIssueModel model) =>
      const $CommonIssueEntity()
          .convert<CommonIssueModel, CommonIssueEntity>(model);

  // Static serialization methods for nested objects
}

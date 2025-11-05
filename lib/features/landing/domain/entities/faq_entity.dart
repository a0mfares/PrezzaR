

import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/faq_model.dart';


part 'faq_entity.g.dart';
@HiveType(typeId: 76)

@AutoMappr([
  MapType<FaqModel, FaqEntity>(),
])

class FaqEntity extends $FaqEntity {
 
      @HiveField(0)
      final String question;

 
      @HiveField(1)
      final String issue;

 
      @HiveField(2)
      final int index;

  FaqEntity({
    required this.question,
    required this.issue,
    required this.index,
  });

   
  factory FaqEntity.fromModel( FaqModel model) =>
      const $FaqEntity().convert< FaqModel, FaqEntity>(model);


  // Static serialization methods for nested objects




}



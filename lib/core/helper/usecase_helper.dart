import 'package:dartz/dartz.dart';

import '../service/failure_services.dart';

abstract class UsecaseHelper<RETURNTYPE> {
  Future<Either<FailureServices, RETURNTYPE>> call(
      {Map<String, dynamic> parm = const {}});
}

abstract class UsecaseHelperProgress<RETURNTYPE> {
  Future<Either<FailureServices, RETURNTYPE>> call(
      {Map<String, dynamic> parm = const {},
      required Function(int sent, int total) onProgress});
}

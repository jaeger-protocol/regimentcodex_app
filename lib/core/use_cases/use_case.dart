library use_case;

import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

part 'foo_use_case.dart';

abstract class UseCase<Type, PhantomParam> {
  Future<Either<CodexException, Type>> call(PhantomParam params);
}

import 'package:regimentcodex/core/errors/exceptions.dart';
import 'package:dartz/dartz.dart';

Future<void> fooDelay({int milliseconds = 300}) async {
  return Future<void>.delayed(Duration(milliseconds: milliseconds));
}

Future<Either<CodexException, void>> onExecuteEitherVoid(
  Future<dynamic> Function() callBack,
) async {
  try {
    await callBack();

    return const Right<CodexException, void>(null);
  } on CodexException catch (exception) {
    return Left<CodexException, void>(exception);
  }
}

Future<void> onExecute(
  Future<void> Function() callBack, {
  required String errorMessage,
}) async {
  try {
    await callBack();
  } catch (_) {
    throw CodexException(errorMessage);
  }
}

CodexException? throwExceptionIfLeft(Either<CodexException, dynamic> result) {
  if (result.isLeft()) {
    result.leftMap((CodexException exception) {
      throw exception;
    });
  }
  return null;
}

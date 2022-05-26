class CodexException implements Exception {
  const CodexException([this.message]);

  final String? message;

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return 'FOO EXCEPTION';
    return 'FOO EXCEPTION: $message';
  }
}

abstract class NetWorkInfo {
  Future<bool> get hasConnection;
}

class NetWorkInfoImpl implements NetWorkInfo {
  @override
  // TODO: implement hasConnection
  Future<bool> get hasConnection => throw UnimplementedError();
}

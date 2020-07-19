class ApiResponse<T> {
  bool ok;
  String msg;
  T result;

  // Named Constructor
  ApiResponse.ok(this.result) {
    ok = true;
  }

  // Named Constructor
  ApiResponse.error(this.msg) {
    ok = false;
  }
}

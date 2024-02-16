/// 3초 후 값을 반환하는 api 입니다
/// response 대기 시간을 가정 했습니다.
Future<bool> callAPI() {
  return Future.delayed(
    const Duration(seconds: 3),
    () {
      return true;
    },
  );
}

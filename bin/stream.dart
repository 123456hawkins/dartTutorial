void main() {
  Stream.fromFutures([
    Future.delayed(Duration(microseconds: 1000), () {
      return '123123';
    }),
    Future.delayed(Duration(microseconds: 1000), () {
      return 'eafwefwe';
    }),
    Future.delayed(Duration(microseconds: 1000), () {
      return AssertionError('TESTeRROR');
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {});
}

testFn() async {
  try {
    String res = await Future.delayed(Duration(microseconds: 200), () {
      return 'ok';
    });
    if (res == 'ok') {
      print('success');
    }
  } catch (e) {
    print(e);
  }
}

void main() {
  // Future
  Future.delayed(Duration(milliseconds: 100), () {
    return 'hello world';
  }).then((data) {
    print(data);
  });

  // catch error
  Future.delayed(Duration(milliseconds: 100), () {
    throw AssertionError('Error');
  }).then((data) {
    print(data);
  }).catchError((e) {
    print(e);
  });
  // 或者
  Future.delayed(Duration(milliseconds: 100), () {
    throw AssertionError('Error');
  }).then((data) {
    print(data);
  }, onError: (e) {
    print(e);
  });

  // Future.whenComplete
  Future.delayed(Duration(microseconds: 500), () {
    throw ArgumentError('error');
  }).then((data) {
    print(data);
  }).catchError((e) {
    print(e);
  }).whenComplete(() {
    print('final excute');
  });

  // Future.wait
  Future.wait([
    Future.delayed(Duration(microseconds: 100), () {
      return 'hello';
    }),
    Future.delayed(Duration(microseconds: 200), () {
      return 'world';
    })
  ]).then((results) {
    print('wait result' + results[0] + results[1]);
  });
  testFn();
}

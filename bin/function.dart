String compareTwoNum(int A, int B) {
  //String表示返回类型,如果不指定返回类型,会默认当作dynamic出来
  if (A > B) {
    return A.toString() + ' BIGGER THAN ' + B.toString();
  } else if (B > A) {
    return A.toString() + ' SMALLER THAN ' + B.toString();
  } else {
    return A.toString() + ' equal to ' + B.toString();
  }
}

// 简单表达式函数
bool isNumber(var num) => num is int;
// 函数作为参数传递
void excute(var callback) {
  callback();
}

// 可选位置参数
String saySomething(String from, String to, [String? device]) {
  var result = '$from says to $to';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 命名参数
String saySomethingName(
    {required String from, required String to, String? device}) {
  var result = '$from says to $to';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// mixin
mixin Person {
  void say(String word) {
    print(word);
  }
}

mixin Dog {
  void bark(String word) {
    print(word);
  }
}

class newPerson with Dog, Person {
  void introduce() {
    print('i am newPerson');
  }
}

void main() {
  print(compareTwoNum(1, 2));

  print(isNumber(5));
  excute(() => {print(isNumber('123123'))});
  print(saySomething('java', 'go'));
  print(saySomething('kotlin', 'go', 'nil'));
  print(saySomethingName(from: 'c++', to: 'c'));
  print(saySomethingName(from: 'c++', to: 'c', device: 'error'));

  var np = newPerson();
  np.bark('123');
  np.say('1231');
  np.introduce();
}

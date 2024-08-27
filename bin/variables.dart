void main() {
  var t = "hello world";
  // t = 1000; //报错
  print(t);

// dynamic和object，都是所有类型的根基类
  dynamic a;
  Object b;
  a = 'wagwegerg';
  b = '他和肉体和';
  print(a);
  print(b);
  print(a.length);
  // print(a.toInt()); //dunamic的错误只会在运行时才会产生
  // print(b.length); //报错，object声明的对象只能使用object的属性和方法

  // final和const,const在编译的时候就被替换为常量，而final只有在第一次使用的时候才会被初始化
  final str1 = 'testFinal';
  //final String str1 = "hi world";

  const str2 = 'testConst';
  // const String str2 = 'testConst';
  print(str1);
  print(str2);

  // 空安全
  // int i;
  // print(i * 8);//报错
  int? j; //定义为可空类型,使用前必须判空
  j = 5;
  if (j != null) {
    print(j + 10);
  }
  late int g; //预期变量不能为空,但定义不知道初始值,可以使用late关键字表示会稍后初始化
  g = 1;
  print(g + 5);
}

class Test {
  int? i;
  Function? fun;
  say() {
    if (i != null) {
      print(i! * 8); //i!显示说明不可能为空
    }
    if (fun != null) {
      fun!();
    }
  }
}

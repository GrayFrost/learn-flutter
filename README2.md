dart学习

因为一直学习的是js，所以列出一些疑问点和差异点。
1. const 和 final的区别
编译时常量是什么意思？
const是编译时常量。编译时常量就是说在我们写代码时就是一个固定的值。
const text = 'hello';
final是运行时常量。在编译时无法确定，即在写代码的时候，我们不知道它的具体的值，要在运行代码后才能确定。比如http请求返回值
final myRes = res;

2. 基本数据类型
Number, Boolean, String, List, Map。

Number类型有int和double这两个子类。

String变量中，可以使用三个单引号或三个双引号来表示多行文本，类似js的字符串模板。
``` dart
var text = """
aaaa
""";
```

Boolean的值只有true和false，不能像js那样使用是否是空字符串来作为判断条件。
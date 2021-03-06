# 第2章 构造数据抽象
- 复合数据：提升在设计程序时位于的概念层次、提高设计的模块性、增强语言的表达能力
- 闭包：用于组合数据对象的黏合剂，不但能用于组合基本的数据对象，也可以用于复合的数据对象
- 复合数据对象能够成为以混合与匹配的方式组合程序模块的方便界面

### 2.1 数据抽象导引
&emsp;&emsp;数据抽象的基本思想：设法构造出一些使用复合数据对象的程序，使它们就像是在“抽象数据”上操作一样。

#### 2.1.1 实例：有理数的算术运算
- `(make-rat <n> <d>)`：返回一个有理数，其中分子是整数`<n>`，分母是整数`<d>`
- `(numer <x>)`：返回有理数`<x>`的分子
- `(denom <x>)`：返回有理数`<x>`的分母

&emsp;&emsp;可以根据下面关系进行有理数的加减乘除和相等判断，具体公式如下，代码见`src\examples\ch02\p56-rat-calc.scm`：  
$$\frac{n_1}{d_1}+\frac{n_2}{d_2}=\frac{n_1 d_2 + n_2 d_1}{d_1 d_2} \\
\frac{n_1}{d_1}-\frac{n_2}{d_2}=\frac{n_1 d_2 - n_2 d_1}{d_1 d_2} \\
\frac{n_1}{d_1} \cdot \frac{n_2}{d_2}=\frac{n_1 n_2}{d_1 d_2} \\
\frac{n_1 / d_1}{n_2 / d_2}=\frac{n_1 d_2}{d_1 n_2} \\
\frac{n_1}{d_1}=\frac{n_2}{d_2}  \text { 当且仅际 } n_1 d_2=n_2 d_1$$

**序对**  
- 序对的结构可使用过程`cons`表示，该过程包含两个参数，返回一个包含这两个参数作为其成分的复合数据对象。
- 可以用`car`和`cdr`提取各个部分。

**有理数的表示**  
&emsp;&emsp;将有理数简单表示为两个整数（分子和分母）的序对（代码见`src\examples\ch02\p57-rat.scm`）  
测试并执行：
```shell
PS > scheme
> (load "src/examples/ch02/p58-print-rat.scm")
> (load "src/examples/ch02/p56-rat-calc.scm")
> (define one-half (make-rat 1 2))
> (print-rat one-half)

1/2
> (define one-third (make-rat 1 3))
> (print-rat (add-rat one-half one-third))

5/6
> (print-rat (mul-rat one-half one-third))

1/6
> (load "src/examples/ch02/p58-make-rat.scm")
> (print-rat (add-rat one-third one-third))

2/3
```
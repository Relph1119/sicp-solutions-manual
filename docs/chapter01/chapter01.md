# 第1章 构造过程抽象

### 1.1 程序设计的基本元素
- 基本表达式：用于表示语言所关心的最简单的个体
- 组合的方法：通过它们可以从较简单的东西出发构造出复杂的元素
- 抽象的方法：通过它们可以为复合对象命名，并将它们当作单元去操作
 
#### 常用MIT-Scheme语法  
- 过程定义`define`
    ```lisp
    (define (<name> <formal parameters>) <body>)
    ```
    &emsp;&emsp;其中`<name>`是一个符号，过程定义将在环境中关联于这个符号。`<formal parameters>`（形式参数）是一些名字，它们用在过程体中，用于表示过程应用时与它们对应的各个实际参数。`<body>`是一个表达式，在应用这一过程时，这一表达式中的形式参数将用与之对应的实际参数取代，对这样取代后的表达式求值，产生出这个过程应用的值。
- 条件表达式
    ```lisp
    (cond (<p_1> <e_1>)
        (<p_2> <e_2>)
        (<p_n> <e_n>))
    ```
    &emsp;&emsp;条件表达式的求值方式如下：首先求值`<p_1>`，如果它的值是false, 那么就去求`<p_2>`，如果`<p_2>`的值是false就去求值`<p_3>`，这一过程继续做下去，直到发现某个谓词的值为真。此时解释器就返回相应子句中的序列表达式`<e>`的值，以这个值作为整个条件表达式的值。如果无法找到值为真的`<p>`，`cond`的值就没有定义。
    ```lisp
    (if <predicate> <consequent> <alternative>)
    ```
    &emsp;&emsp;如果`<predicate>`得到真值，就求值`<consequent>`并返回其值，否则求值`<alternative>`并返回其值。
- `and`表达式
    ```lisp
    (and <e_1> <e_2> ... <e_n>)
    ```
    &emsp;&emsp;将从左到右一个个求值`<e>`，如果某个`<e>`得到假，这一`and`表达式的值就是假，后面那些`<e>`不再求值。如果前面所有的`<e>`都求出真值，表达式的值就是最后那个`<e>`的值。
- `or`表达式
    ```lisp
    (or <e_1> <e_2> ... <e_n>)
    ```
    &emsp;&emsp;将从左到右一个个求值`<e>`，如果某个`<e>`得到真，这一`and`表达式的值就是`<e>`的值，后面那些`<e>`不再求值。如果前面所有的`<e>`都求出假值，表达式的值就是假。
- `not`表达式
    ```lisp
    (not <e>)
    ```
    &emsp;&emsp;如果`<e>`求出的值是假，`not`表达式的值就是真；否则其值为假。

#### 牛顿逼近法
&emsp;&emsp;如果对`x`的平方根的值有了一个猜测`y`，那么就可以通过执行一个简单操作去得到一个更好的猜测：只需要求出`y`和`x/y`的平均值（它更接近实际的平方根值）。

#### 内部定义和块结构
&emsp;&emsp;通过将子过程局部化，将辅助函数隐藏在`sqrt`函数的里面，见代码`src\examples\ch01\p19-sqrt.scm`。  
&emsp;&emsp;除了可以将所用的辅助过程定义放到函数内部，还可以进一步简化，因为`x`在`sqrt`的定义中是受约束的，过程`good-enough?`
`improve`和`sqrt-iter`都定义在`sqrt`里面，即都在`x`的定义域里，可以让`x`作为内部定义中的自由变量，这种方式称为**词法作用域**。代码见`src\examples\ch01\p20-sqrt.scm`。  

### 1.2 过程与它们所产生的计算
&emsp;&emsp;一个过程就是一种模式，它描述了一个计算过程的局部演化方法，描述了这一计算过程中的每个步骤是怎么基于前面的步骤建立起来的。  
#### 线性的递归和迭代
阶乘函数：$n!=n \cdot (n-1) \cdot (n-2) \cdots 3 \cdot 2 \cdot 1$  
另一种最简单的方法：对于一个正整数$n$，$n!$就等于$n$乘以$(n-1)!$：$$n!=n \cdot [(n-1) \cdot (n-2) \cdots 3 \cdot 2 \cdot 1] = n \cdot (n-1)!$$
代码见`src\examples\ch01\p21-factorial.scm`，使用`trace`函数追踪计算`(factorial 6)`：  
```shell
PS > scheme "src\examples\ch01\p21-factorial.scm"
Chez Scheme Version 9.5
Copyright 1984-2017 Cisco Systems, Inc.

> (trace factorial)
(factorial)
> (factorial 6)
|(factorial 6)
| (factorial 5)
| |(factorial 4)
| | (factorial 3)
| | |(factorial 2)
| | | (factorial 1)
| | | 1
| | |2
| | 6
| |24
| 120
|720
720
>
```
&emsp;&emsp;采用另一种思路来计算阶乘，先将1和2相乘，而后将都得到的结果乘以3，而后再乘以4，这样下去直到达到$n$，代码见`src\examples\ch01\p22-factorial.scm`，使用`trace`函数追踪计算`(factorial 6)`：  
```shell
PS > scheme "src\examples\ch01\p22-factorial.scm"
Chez Scheme Version 9.5
Copyright 1984-2017 Cisco Systems, Inc.

> (trace fact-iter)
(fact-iter)
> (factorial 6)
|(factorial 6)
|(fact-iter 1 1 6)
|(fact-iter 1 2 6)
|(fact-iter 2 3 6)
|(fact-iter 6 4 6)
|(fact-iter 24 5 6)
|(fact-iter 120 6 6)
|(fact-iter 720 7 6)
|720
720
>
```
- 递归计算过程：其代换模型是一种先逐步展开而后收缩的形状，在展开阶段，构造一个推迟进行的操作所形成的链条，收缩阶段表现为运算的实际执行。
- 迭代计算过程：计算过程中没有任何增长或者收缩，其状态可以用固定数目的状态变量，同时存在一套固定规则，描述计算过程中从一个状态到下一个状态转换时，这些变量的更新方式，还有一个结束检测，描述这一计算过程终止的条件。  

#### 树形递归
斐波那契数列：每个数都是前面两个数之和，其规则定义如下：$$
Fib(n)=\left\{
\begin{array}{ll}
0 & \text{如果} n=0 \\
1 & \text{如果} n=1 \\
Fib(n-1)+Fib(n-2) & \text{否则}
\end{array}\right.$$&emsp;&emsp;树形递归计算过程里所需的步骤数正比于树中的结点数，其空间需求正比于树的最大深度。  
&emsp;&emsp;也可设计一种计算斐波那契数的迭代计算过程，基本思路是用一对整数$a$和$b$，将它们分别初始化为$Fib(1)=1$和$Fib(0)=0$，然后同时使用下面变换规则：
$$\begin{array}{l}
a \leftarrow a+b \\
b \leftarrow a
\end{array}$$
代码见`src\examples\ch01\p26-fib.scm`  

**实例：换零钱方式的统计**  
**问题：** 
&emsp;&emsp;给了半美元、四分之一美元、10美分、5美分和1美分的硬币，将1美元换成零钱，一共有多少种不同方式？  
**问题分析：**  
&emsp;&emsp;采用递归过程，假设可用硬币类型种类是有顺序的，可列出下面关系：  
&emsp;&emsp;将总数为$a$的现金换成$n$种硬币的不同方式的数目等于
- 将现金数$a$换成除第一种硬币之外的所有其他硬币的不同方式数目，加上
- 将现金数$a-d$换成所有种类的硬币的不同方式数目，其中的$d$是第一种硬币的币值。  

根据规则可以设计如下算法：
- 如果$a$是0，有1种换零钱的方式
- 如果$a$小于0，有0种换零钱的方式
- 如果$n$是0，有0种换零钱的方式

代码见`src\examples\ch01\p27-count-change.scm`  

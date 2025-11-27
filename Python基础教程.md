# Python 基础教程

## 1. 变量与数据类型

### 基本数据类型
```python
# 整数
age = 25
count = -10

# 浮点数
price = 19.99
temperature = -3.5

# 字符串
name = "张三"
message = '你好，世界！'
multi_line = """这是
多行字符串"""

# 布尔值
is_active = True
is_deleted = False

# None（空值）
result = None
```

### 类型转换
```python
# 转为整数
num = int("123")        # 123
num = int(3.14)         # 3

# 转为浮点数
value = float("3.14")   # 3.14
value = float(5)        # 5.0

# 转为字符串
text = str(123)         # "123"
text = str(3.14)        # "3.14"

# 转为布尔值
flag = bool(1)          # True
flag = bool(0)          # False
```

## 2. 容器类型

### 列表（List）- 可变有序序列
```python
# 创建列表
fruits = ["苹果", "香蕉", "橙子"]
numbers = [1, 2, 3, 4, 5]
mixed = [1, "hello", 3.14, True]

# 访问元素
first = fruits[0]       # "苹果"
last = fruits[-1]       # "橙子"

# 切片
subset = numbers[1:4]   # [2, 3, 4]
reverse = numbers[::-1] # [5, 4, 3, 2, 1]

# 修改列表
fruits.append("葡萄")           # 添加元素
fruits.insert(1, "西瓜")        # 插入元素
fruits.remove("香蕉")           # 删除元素
fruits.pop()                    # 删除最后一个
fruits[0] = "菠萝"              # 修改元素

# 列表操作
length = len(fruits)            # 获取长度
fruits.sort()                   # 排序
fruits.reverse()                # 反转
```

### 元组（Tuple）- 不可变有序序列
```python
# 创建元组
coordinates = (10, 20)
person = ("张三", 25, "北京")
single = (42,)                  # 单元素元组需要逗号

# 访问元素
x = coordinates[0]              # 10
name = person[0]                # "张三"

# 元组解包
x, y = coordinates
name, age, city = person
```

### 字典（Dict）- 键值对集合
```python
# 创建字典
student = {
    "name": "李四",
    "age": 20,
    "grade": "大三"
}

# 访问元素
name = student["name"]              # "李四"
age = student.get("age")            # 20
score = student.get("score", 0)     # 不存在返回默认值0

# 修改字典
student["age"] = 21                 # 修改值
student["major"] = "计算机"         # 添加键值对
del student["grade"]                # 删除键值对
removed = student.pop("age")        # 删除并返回值

# 遍历字典
for key in student.keys():          # 遍历键
    print(key)

for value in student.values():      # 遍历值
    print(value)

for key, value in student.items():  # 遍历键值对
    print(f"{key}: {value}")
```

### 集合（Set）- 无序不重复元素集
```python
# 创建集合
numbers = {1, 2, 3, 4, 5}
fruits = set(["苹果", "香蕉", "苹果"])  # {"苹果", "香蕉"}

# 集合操作
numbers.add(6)                      # 添加元素
numbers.remove(3)                   # 删除元素
numbers.discard(10)                 # 安全删除（不存在不报错）

# 集合运算
a = {1, 2, 3, 4}
b = {3, 4, 5, 6}
union = a | b                       # 并集: {1, 2, 3, 4, 5, 6}
intersection = a & b                # 交集: {3, 4}
difference = a - b                  # 差集: {1, 2}
symmetric_diff = a ^ b              # 对称差: {1, 2, 5, 6}
```

## 3. 控制流程

### 条件语句
```python
# if-elif-else
score = 85

if score >= 90:
    print("优秀")
elif score >= 80:
    print("良好")
elif score >= 60:
    print("及格")
else:
    print("不及格")

# 三元表达式
status = "成年" if age >= 18 else "未成年"
```

### 循环语句
```python
# for 循环
for i in range(5):              # 0, 1, 2, 3, 4
    print(i)

for i in range(1, 10, 2):       # 1, 3, 5, 7, 9
    print(i)

for fruit in ["苹果", "香蕉"]:
    print(fruit)

# while 循环
count = 0
while count < 5:
    print(count)
    count += 1

# break 和 continue
for i in range(10):
    if i == 3:
        continue            # 跳过当前迭代
    if i == 8:
        break              # 退出循环
    print(i)

# enumerate - 带索引的循环
fruits = ["苹果", "香蕉", "橙子"]
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")

# zip - 并行遍历
names = ["张三", "李四", "王五"]
ages = [20, 25, 30]
for name, age in zip(names, ages):
    print(f"{name} 今年 {age} 岁")
```

## 4. 函数

### 定义函数
```python
# 基本函数
def greet(name):
    return f"你好, {name}!"

# 默认参数
def power(base, exponent=2):
    return base ** exponent

# 可变参数
def sum_all(*numbers):
    return sum(numbers)

# 关键字参数
def create_person(**kwargs):
    return kwargs

# 完整示例
def calculate(a, b, operation="add"):
    """
    执行基本算术运算
    
    参数:
        a: 第一个数字
        b: 第二个数字
        operation: 运算类型 (add, subtract, multiply, divide)
    
    返回:
        运算结果
    """
    if operation == "add":
        return a + b
    elif operation == "subtract":
        return a - b
    elif operation == "multiply":
        return a * b
    elif operation == "divide":
        return a / b if b != 0 else None

# 使用函数
result = calculate(10, 5, "add")        # 15
result = calculate(10, 5)               # 15（使用默认值）
```

### Lambda 函数
```python
# 匿名函数
square = lambda x: x ** 2
add = lambda x, y: x + y

# 在高阶函数中使用
numbers = [1, 2, 3, 4, 5]
squared = list(map(lambda x: x ** 2, numbers))      # [1, 4, 9, 16, 25]
evens = list(filter(lambda x: x % 2 == 0, numbers)) # [2, 4]
```

## 5. 类与对象

### 定义类
```python
class Person:
    # 类变量
    species = "人类"
    
    def __init__(self, name, age):
        # 实例变量
        self.name = name
        self.age = age
    
    # 实例方法
    def introduce(self):
        return f"我叫{self.name}，今年{self.age}岁"
    
    # 类方法
    @classmethod
    def create_adult(cls, name):
        return cls(name, 18)
    
    # 静态方法
    @staticmethod
    def is_adult(age):
        return age >= 18

# 使用类
person = Person("张三", 25)
print(person.introduce())           # "我叫张三，今年25岁"
print(Person.is_adult(20))          # True
adult = Person.create_adult("李四") # 创建一个18岁的人
```

### 继承
```python
class Student(Person):
    def __init__(self, name, age, student_id):
        super().__init__(name, age)     # 调用父类构造函数
        self.student_id = student_id
    
    # 重写方法
    def introduce(self):
        base = super().introduce()
        return f"{base}，学号是{self.student_id}"

# 使用子类
student = Student("王五", 20, "20210001")
print(student.introduce())
```

## 6. 异常处理

```python
# 基本异常处理
try:
    result = 10 / 0
except ZeroDivisionError:
    print("除数不能为零")

# 多个异常
try:
    number = int("abc")
except ValueError:
    print("无效的数字")
except TypeError:
    print("类型错误")

# 捕获所有异常
try:
    # 危险操作
    pass
except Exception as e:
    print(f"发生错误: {e}")

# 完整格式
try:
    file = open("data.txt", "r")
    content = file.read()
except FileNotFoundError:
    print("文件不存在")
except IOError:
    print("读取文件失败")
else:
    print("文件读取成功")      # 没有异常时执行
finally:
    file.close()               # 无论如何都执行

# 抛出异常
def check_age(age):
    if age < 0:
        raise ValueError("年龄不能为负数")
    return age
```

## 7. 文件操作

```python
# 写文件
with open("output.txt", "w", encoding="utf-8") as f:
    f.write("第一行\n")
    f.write("第二行\n")

# 读文件
with open("output.txt", "r", encoding="utf-8") as f:
    content = f.read()              # 读取全部
    
with open("output.txt", "r", encoding="utf-8") as f:
    line = f.readline()             # 读取一行
    
with open("output.txt", "r", encoding="utf-8") as f:
    lines = f.readlines()           # 读取所有行到列表

# 逐行读取（推荐）
with open("output.txt", "r", encoding="utf-8") as f:
    for line in f:
        print(line.strip())

# 追加模式
with open("output.txt", "a", encoding="utf-8") as f:
    f.write("追加的内容\n")
```

## 8. 常用内置函数

```python
# 数学函数
abs(-5)                     # 5 - 绝对值
pow(2, 3)                   # 8 - 幂运算
round(3.14159, 2)           # 3.14 - 四舍五入
max(1, 5, 3)                # 5 - 最大值
min(1, 5, 3)                # 1 - 最小值
sum([1, 2, 3, 4])           # 10 - 求和

# 类型判断
isinstance(5, int)          # True
type(3.14)                  # <class 'float'>

# 序列函数
len([1, 2, 3])              # 3 - 长度
range(5)                    # 0, 1, 2, 3, 4
sorted([3, 1, 4, 2])        # [1, 2, 3, 4] - 排序
reversed([1, 2, 3])         # 反转迭代器
enumerate(['a', 'b'])       # 带索引的迭代器
zip([1, 2], ['a', 'b'])     # [(1, 'a'), (2, 'b')]

# 函数式编程
map(lambda x: x*2, [1,2,3]) # [2, 4, 6]
filter(lambda x: x>2, [1,2,3,4]) # [3, 4]

# 其他
all([True, True, False])    # False - 全部为真
any([True, False, False])   # True - 任一为真
```

## 9. 列表推导式与生成器

```python
# 列表推导式
squares = [x**2 for x in range(10)]
evens = [x for x in range(20) if x % 2 == 0]
matrix = [[i*j for j in range(5)] for i in range(5)]

# 字典推导式
square_dict = {x: x**2 for x in range(5)}
# {0: 0, 1: 1, 2: 4, 3: 9, 4: 16}

# 集合推导式
unique_lengths = {len(word) for word in ["hello", "world", "hi"]}
# {2, 5}

# 生成器表达式（节省内存）
squares_gen = (x**2 for x in range(1000000))

# 生成器函数
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

# 使用生成器
for num in fibonacci(10):
    print(num)
```

## 10. 模块与包

```python
# 导入整个模块
import math
print(math.pi)              # 3.141592653589793
print(math.sqrt(16))        # 4.0

# 导入特定函数
from math import pi, sqrt
print(pi)
print(sqrt(16))

# 导入并重命名
import datetime as dt
now = dt.datetime.now()

# 导入所有（不推荐）
from math import *

# 创建自己的模块
# 文件: mymodule.py
def my_function():
    return "Hello from module"

# 使用自定义模块
# import mymodule
# mymodule.my_function()
```

## 11. 字符串操作

```python
text = "  Hello, World!  "

# 大小写转换
text.upper()                # "  HELLO, WORLD!  "
text.lower()                # "  hello, world!  "
text.title()                # "  Hello, World!  "
text.capitalize()           # "  hello, world!  "

# 去除空白
text.strip()                # "Hello, World!"
text.lstrip()               # "Hello, World!  "
text.rstrip()               # "  Hello, World!"

# 查找和替换
text.find("World")          # 9
text.replace("World", "Python")  # "  Hello, Python!  "

# 分割和连接
words = "a,b,c,d".split(",")     # ["a", "b", "c", "d"]
joined = "-".join(words)          # "a-b-c-d"

# 判断
"hello".startswith("he")    # True
"hello".endswith("lo")      # True
"123".isdigit()             # True
"abc".isalpha()             # True
"abc123".isalnum()          # True

# 格式化
name, age = "张三", 25
f"我叫{name}，今年{age}岁"              # f-string（推荐）
"我叫{}，今年{}岁".format(name, age)    # format方法
"我叫%s，今年%d岁" % (name, age)        # 旧式格式化
```

## 12. 常用标准库

```python
# datetime - 日期时间
from datetime import datetime, timedelta
now = datetime.now()
today = datetime.today()
tomorrow = now + timedelta(days=1)
formatted = now.strftime("%Y-%m-%d %H:%M:%S")

# random - 随机数
import random
random.randint(1, 10)           # 1-10之间的随机整数
random.choice([1, 2, 3, 4])     # 随机选择元素
random.shuffle([1, 2, 3, 4])    # 随机打乱列表

# os - 操作系统接口
import os
os.getcwd()                     # 当前工作目录
os.listdir(".")                 # 列出目录内容
os.path.exists("file.txt")      # 检查文件是否存在
os.path.join("dir", "file.txt") # 路径拼接

# json - JSON处理
import json
data = {"name": "张三", "age": 25}
json_str = json.dumps(data, ensure_ascii=False)  # 转JSON字符串
obj = json.loads(json_str)                       # 解析JSON

# collections - 容器数据类型
from collections import Counter, defaultdict
counter = Counter([1, 2, 2, 3, 3, 3])  # 计数器
# Counter({3: 3, 2: 2, 1: 1})

# re - 正则表达式
import re
pattern = r"\d+"                    # 匹配数字
matches = re.findall(pattern, "abc123def456")  # ["123", "456"]
```

## 13. 实用技巧

```python
# 解包
a, *rest, b = [1, 2, 3, 4, 5]   # a=1, rest=[2,3,4], b=5

# 字典合并（Python 3.9+）
dict1 = {"a": 1, "b": 2}
dict2 = {"b": 3, "c": 4}
merged = dict1 | dict2          # {"a": 1, "b": 3, "c": 4}

# 海象运算符（Python 3.8+）
if (n := len([1, 2, 3])) > 2:
    print(f"列表长度为 {n}")

# 上下文管理器
class MyContext:
    def __enter__(self):
        print("进入")
        return self
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        print("退出")

with MyContext() as ctx:
    print("执行中")

# 装饰器
def timer(func):
    import time
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"耗时: {end - start}秒")
        return result
    return wrapper

@timer
def slow_function():
    import time
    time.sleep(1)
```

## 14. 最佳实践

### 代码风格（PEP 8）
- 使用4个空格缩进
- 每行不超过79个字符
- 函数和类之间空两行
- 变量名使用小写加下划线：`my_variable`
- 类名使用驼峰命名：`MyClass`
- 常量使用大写加下划线：`MAX_SIZE`

### 命名规范
```python
# 好的命名
user_count = 10
calculate_total_price()
class UserManager:
    pass

# 避免的命名
a = 10              # 无意义
getUserCount()      # 不符合Python风格
```

### 代码组织
```python
# 模块导入顺序
# 1. 标准库
import os
import sys

# 2. 第三方库
import numpy as np
import pandas as pd

# 3. 本地模块
from myapp import utils
```

---

**学习资源推荐：**
- 官方文档：https://docs.python.org/zh-cn/3/
- 在线教程：菜鸟教程、廖雪峰Python教程
- 实践平台：LeetCode、牛客网

**下一步学习方向：**
1. 面向对象高级特性（属性、描述符、元类）
2. 并发编程（多线程、多进程、异步IO）
3. Web开发（Django、Flask）
4. 数据科学（NumPy、Pandas、Matplotlib）
5. 机器学习（Scikit-learn、TensorFlow、PyTorch）

#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""Python基础示例代码"""

def greet(name):
    """问候函数"""
    return f"你好, {name}!"

def calculate_sum(numbers):
    """计算列表中所有数字的和"""
    return sum(numbers)

def main():
    # 测试问候函数
    print(greet("Python学习者"))
    
    # 测试列表操作
    numbers = [1, 2, 3, 4, 5]
    print(f"数字列表: {numbers}")
    print(f"总和: {calculate_sum(numbers)}")
    
    # 测试字典
    person = {
        "姓名": "张三",
        "年龄": 25,
        "城市": "北京"
    }
    print(f"\n个人信息:")
    for key, value in person.items():
        print(f"  {key}: {value}")

if __name__ == "__main__":
    main()

"""
课程第一个 Python 脚本
环境: Python 3.12.10
"""

import sys


def main():
    print("=" * 50)
    print("  欢迎进入《大数据与人工智能》课程！")
    print("=" * 50)
    print(f"当前 Python 版本: {sys.version}")

    # 一个简单示例
    nums = [1, 2, 3, 4, 5]
    total = sum(nums)
    print(f"\n示例: 列表 {nums} 的和 = {total}")
    print(f"示例: 列表 {nums} 的均值 = {total / len(nums):.2f}")
    print("\n✅ Python 3.12 运行环境验证通过！")


if __name__ == "__main__":
    main()

# while True:
#     input_data = input("Введите число 1: ")
#     if not input_data.isnumeric():
#         print("Вы ввели не число, попробуйте еще раз: ")
#     elif not int(-32000) <= int(input_data) <= 32000:
#         print("Ваше число не диапазоне. Попробуйте снова")
#     else:
#         print("Число в правильном диапазоне.")
#         break

# a = int(input("Введи первое число, от -32000 до 32000"))
# if a < -32000:
#     print("a < -32000")
# elif a > 32000:
#     print("a > 32000")
#     int1 = a
# print(a)

# a = 11111 * 1111111
# print(a)

# a = 42
#
# b = 4+2*(-2)
#
# print(a/b)

# a = 2014**14
# print(a)

# a = 5
# b = 2
#
# print(a//b)

# import math
# test = 0.3 + 0.3 + 0.3
#
# print(math.ceil(test))

# print(5e-1)
#
# число*е3 = число * 1000 (10*10*10)
# число*е-3 = число / 1000 (10*10*10)

# a = 1.2345e-3
# print(a)

# print(2014.0**14)

# print(7//3)

# a = int(-1.6)
# print(a)

# a = 9**19
# b = int(float(9**19))
#
# print(a-b)

# test = int(input("Введи число: "))

# name = input("Как тебя зовут? ")
# print("Привет,", name + "!")
#
#
#
# SleepTimeMin = int(input())
# Hours = SleepTimeMin // 60
# Minutes = SleepTimeMin % 60
# print(Hours)
# print(Minutes)
# print(int(360 // 60))

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element_by_name("q")
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()

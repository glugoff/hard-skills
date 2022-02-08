# Первый модуль по пайтону на степике. Самое начало пропущено, там банальные вещи типа переменных и пары типов данных.
# Начнем сразу с задач.

# Коля каждый день ложится спать ровно в полночь и недавно узнал, что оптимальное время для его сна составляет XX
# минут.  Коля хочет поставить себе будильник так, чтобы он прозвенел ровно  через XX минут после полуночи, однако для этого необходимо  указать время сигнала в формате часы, минуты. Помогите Коле определить, на какое время завести будильник.

SleepTimeMin = int(input())
Hours = SleepTimeMin // 60
Minutes = SleepTimeMin % 60
print(Hours)
print(Minutes)

# Катя узнала, что ей для сна надо XX минут. В отличие от Коли, Катя ложится спать после полуночи в HH часов и MM минут. Помогите Кате определить, на какое время ей поставить будильник, чтобы он прозвенел ровно через XX минут после того, как она ляжет спать.
#
# На стандартный ввод, каждое в своей строке, подаются значения XX, HH и MM. Гарантируется, что Катя должна проснуться в тот же день, что и заснуть. Программа должна выводить время, на которое нужно поставить будильник: в первой строке часы, во второй — минуты.

SleepTimeMinInput = int(input("Введи общее время сна в минутах"))
StartHourInput = int(input("Начало сна: часов"))
StartMinInput = int(input("Начало сна: минут"))
StartInMinutes = StartMinInput + (StartHourInput * 60)
print(("На сколько часов нужно поставить будильник", int((StartInMinutes+SleepTimeMinInput) // 60)))
print(("На сколько минут нужно поставить будильник", int((StartInMinutes+SleepTimeMinInput) % 60)))


# a and b or not a and not b
# в соответствии с порядком вычисления выражения (приоритетом операций). Всего потребуется 5 пар скобок (внешние скобки входят в их число).

test = a and b or not a and not b
print(test)
test2 = ((a and b) or ((not a) and (not b)))
print(test2)

# Выполните код в интерпретаторе Python 3 и вставьте в поле ответа результат вычисления.
x = 5
y = 10
print(y > x * x or y >= 2 * x and x < y)
True

# Найдите результат выражения для заданных значений aa и bb. Учитывайте регистр символов при ответе.
a = True
b = False
print(a and b or not a and not b)
False

# Из передачи “Здоровье” Аня узнала, что рекомендуется спать хотя бы A часов в сутки, но пересыпать тоже вредно и не стоит спать более B часов. Сейчас Аня спит H часов в сутки. Если режим сна Ани удовлетворяет рекомендациям передачи “Здоровье”, выведите “Это нормально”. Если Аня спит менее A часов, выведите “Недосып”, если же более BB часов, то выведите “Пересып”.

a = int(input())
b = int(input())
c = int(input())

if b >= c >= a:
    print('Это нормально')
elif c >= b:
    print('Пересып')
elif c <= a:
    print('Недосып')
#
# Требуется определить, является ли данный год високосным.
# Напомним, что високосными годами считаются те годы, порядковый номер которых либо кратен 4, но при этом не кратен 100, либо кратен 400 (например, 2000-й год являлся високосным, а 2100-й будет невисокосным годом).
# Программа должна корректно работать на числах 1900≤n≤3000.
# Выведите "Високосный" в случае, если считанный год является високосным и "Обычный" в обратном случае (не забывайте проверять регистр выводимых программой символов).

age = int(input())
if age % 4 == 0 and age % 100 != 0 or age % 400 == 0:
    print("Високосный")
else: print("Обычный")

# Проверить, какое из выражений вернет True

test1 = "239" < "30" and 239 < 30
test2 = "239" < "30" and 239 > 30
test3 = "239" > "30" and 239 < 30
test4 = "239" > "30" and 239 > 30
print("Test1:", test1)
print("Test2:", test2)
print("Test3:", test3)
print("Test4:", test4)

# В то далёкое время, когда Паша ходил в школу, ему очень не нравилась формула Герона для вычисления площади треугольника, так как казалась слишком сложной. В один прекрасный момент Павел решил избавить всех школьников от страданий и написать и распространить по школам программу, вычисляющую площадь треугольника по трём сторонам.
#
# Одна проблема: так как эта формула не нравилась Павлу, он её не запомнил. Помогите ему завершить доброе дело и
# напишите программу, вычисляющую площадь треугольника по переданным длинам трёх его сторон по формуле Герона:


a = int(input())
b = int(input())
c = int(input())
p = (a + b + c) /2
s = (p * (p-a) * (p-b) * (p-c))**0.5
print(s)

# Напишите программу, принимающую на вход целое число, которая выводит True, если переданное значение попадает в интервал (-15, 12] \cup (14, 17) \cup [19, +\infty)(−15,12]∪(14,17)∪[19,+∞) и False в противном случае (регистр символов имеет значение).
#
# Обратите внимание на разные скобки, используемые для обозначения интервалов. В задании используются полуоткрытые и открытые интервалы. Подробнее про это вы можете прочитать, например, на википедии (полуинтервал, промежуток).

a = int(input())
if (-15 < a <= 12) or (14 < a < 17) or (19 <= a):
    print ('True')
else:
    print ('False')

# Напишите простой калькулятор, который считывает с пользовательского ввода три строки: первое число, второе число и операцию, после чего применяет операцию к введённым числам ("первое число" "операция" "второе число") и выводит результат на экран.
# Поддерживаемые операции: +, -, /, *, mod, pow, div, где
# mod — это взятие остатка от деления,
# pow — возведение в степень,
# div — целочисленное деление.
# Если выполняется деление и второе число равно 0, необходимо выводить строку "Деление на 0!".
# Обратите внимание, что на вход программе приходят вещественные числа.
#
A = float (input())
B = float (input())
C = str (input())
if C =='+':
    print(A+B)
elif C=='-':
    print(A-B)
elif C=='*':
    print(A*B)
elif C=='/' and B==0:
    print("Деление на 0!")
elif C=='/' and B!=0:
    print(A/B)
elif C=='mod' and B==0:
    print('Деление на 0!')
elif C=='mod' and B!=0:
    print(A%B)
elif C=='pow':
    print(A**B)
elif C=='div' and B==0:
    print('Деление на 0!')
elif C=='div' and B!=0:
    print(A//B)

# Жители страны Малевии часто экспериментируют с планировкой комнат. Комнаты бывают треугольные, прямоугольные и круглые. Чтобы быстро вычислять жилплощадь, требуется написать программу, на вход которой подаётся тип фигуры комнаты и соответствующие параметры, которая бы выводила площадь получившейся комнаты.
# Для числа π в стране Малевии используют значение 3.14.
#
# Формат ввода, который используют Малевийцы:
# треугольник
# a
# b
# c
# где a, b и c — длины сторон треугольника
#
# прямоугольник
# a
# b
# где a и b — длины сторон прямоугольника
#
# круг
# r
#
f = str(input())
if f == 'прямоугольник':
    a = int(input())
    b = int(input())
    print (a * b)
elif f == 'треугольник':
    a = int(input())
    b = int(input())
    c = int(input())
    p = (a + b + c) / 2
    print ((p * (p - a) * (p - b) * (p - c)) ** 0.5)
elif f == 'круг':
    r = int(input())
    print (3.14 * r **2)

# Напишите программу, которая получает на вход три целых числа, по одному числу в строке, и выводит на консоль в три строки сначала максимальное, потом минимальное, после чего оставшееся число.
#
# На ввод могут подаваться и повторяющиеся числа.

n1 = int(input())
n2 = int(input())
n3 = int(input())
if n1 >= n2 >= n3:
    print(n1)
    print(n3)
    print(n2)
elif n1 >= n3 >= n2:
    print(n1)
    print(n2)
    print(n3)
elif n2 >= n1 >= n3:
    print(n2)
    print(n3)
    print(n1)
elif n2 >= n3 >= n1:
    print(n2)
    print(n1)
    print(n3)
elif n3 >= n1 >= n2:
    print(n3)
    print(n2)
    print(n1)
else:
    print(n3)
    print(n1)
    print(n2)

# В институте биоинформатики по офису передвигается робот. Недавно студенты из группы программистов написали для него программу, по которой робот, когда заходит в комнату, считает количество программистов в ней и произносит его вслух: "n программистов".
# Для того, чтобы это звучало правильно, для каждого n нужно использовать верное окончание слова.
# Напишите программу, считывающую с пользовательского ввода целое число n (неотрицательное), выводящее это число в консоль вместе с правильным образом изменённым словом "программист", для того, чтобы робот мог нормально общаться с людьми, например: 1 программист, 2 программиста, 5 программистов.
# В комнате может быть очень много программистов. Проверьте, что ваша программа правильно обработает все случаи, как минимум до 1000 человек.
#
x = int(input())
if x % 100 in (11, 12, 13, 14) or x % 10 in (5, 6, 7, 8, 9, 0): print(x, 'программистов')
elif x % 10 in (2, 3, 4): print(x, 'программиста')
else: print(x, 'программист')

# Паша очень любит кататься на общественном транспорте, а получая билет, сразу проверяет, счастливый ли ему попался. Билет считается счастливым, если сумма первых трех цифр совпадает с суммой последних трех цифр номера билета.
#
# Однако Паша очень плохо считает в уме, поэтому попросил вас написать программу, которая проверит равенство сумм и выведет "Счастливый", если суммы совпадают, и "Обычный", если суммы различны.
#
# На вход программе подаётся строка из шести цифр.
# Выводить нужно только слово "Счастливый" или "Обычный", с большой буквы.

bilet = str(input())
sum1=int(bilet[0])+int(bilet[1])+int(bilet[2])
sum2=int(bilet[3])+int(bilet[4])+int(bilet[5])
if sum1==sum2:
  print('Счастливый')
else:
  print('Обычный')

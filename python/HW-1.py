# 1) Создать переменную типа String
VarString = 'текстовая строка'
# 2) Создать переменную типа Integer
VarInt = 42
# 3) Создать переменную типа Float
VarFloat = 3.14
# 4) Создать переменную типа Bytes
VarBytes = b'\xd8\xe1\xb7\xeb\xa8\xe5 \xd2\xb7\xe1'
VBDecode = VarBytes.decode('cp855')
# 5) Создать переменную типа List
# Списки в Python - упорядоченные изменяемые коллекции объектов произвольных типов
VarList = [VarString, VarInt, VarFloat]
# 6) Создать переменную типа Tuple
# то же что и списки, но неизменяемые
VarTuple = (VarString, VarInt, VarFloat)
# 7) Создать переменную типа Set
# Множество в python - "контейнер", содержащий не повторяющиеся элементы в случайном порядке.
VarSet = set('Hello!')
# 8. Создать переменную типа Frozen set
# то же что и set, но данные неизменяемы
VarFrozenSet = frozenset('Hello!')
# 9) Создать переменную типа Dict
# Словари в Python - неупорядоченные коллекции произвольных объектов с доступом по ключу
VarDict = {1: 'value for key 1', 2: 'value for key 2'}

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(
    '1 Variable with data type STRING: ' + VarString + '\n'
    '2 Variable with data type Integer: ' + str(VarInt) + '\n'
    '3 Variable with data type Float: ' + str(VarFloat) + '\n'
    '4 Variable with data type Bytes: ' + str(VarBytes) + '\n'
    '5 Variable with data type List: ' + str(VarList) + '\n'
    '6 Variable with data type Tuple: ' + str(VarTuple) + '\n'
    '7 Variable with data type Set: ' + str(VarSet) + '\n'
    '8 Variable with data type FrozenSet: ' + str(VarFrozenSet) + '\n'
    '9 Variable with data type Dict: ' + str(VarDict) + '\n'
    '9.1 Value 1 of the variable with data type Dict: ' + str(VarDict[1]) + '\n'
)
#
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
a = 'Hello '
b = 'world!'
c = a+b
print(c)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print("Concatenation variable with use ',' :",
    VarString, VarInt)

# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print("Concatenation variable with use '+' : " + VarString + str(VarInt))
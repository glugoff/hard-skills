#
#
# ll = [0,1,2,3,4,5, "qw", True, False, [12, 'sw'], {"nn":55}]
#
#
# for i in ll:
#     count +=1
#
#     print('num', i)
#
# dict_data = {
#     'name':'vadim',
#     'age': 32,
#     'weight': 94,
#     "food": {"milk":["Sirniki", "milk", "protein", "tvorog"],
#              "meat":["pelmeni", "meat", "sosiska v teste"]},
#     "salary": [250, 320, 700, 1100, 1200, 1500, 2000]
#              }
# count = 0
# key_list = []
# for key, value in dict_data.items():
#     key_list.append(key)
#     print(key, '==', value)
#     print('==================')
#     print(key_list)
# import time
#
# count = 0
#
# while True:
#     time.sleep(.500)
#     print('Hello!', count)
#     count += 1
#     if count == 10:
#         break

# ------------------------------------------------------------------------
# import sys
#
# print("Hello !!! Ahaha")
#
# params = sys.argv[1]
#
# print("params = ", params)

import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--name', type=str, )
parser.add_argument('--age', type=int, )

args = parser.parse_args()
ен

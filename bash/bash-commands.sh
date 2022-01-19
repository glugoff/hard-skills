#!/bin/bash
#Первое ДЗ 
#Linux terminal (GitBash) commands

#ВНИМАНИЕ! Скрипт будет корректно работать только на GITBASH в винде! 

read -n 1 -s -r -p "Привет! Для продолжения исполнения команд - просто нажми любую клавишу, когда увидишь -->>
" 
#сразу объявим переменную для нажатия на любую клавишу, чтобы не перегружать код
next="read -n 1 -s -r -p -->>" 

#1) Посмотреть где я
echo "(1) я тут:"
pwd
$next 

#2) Создать папку
echo "(2) создаем папку homework"
mkdir homework
$next 

#3) Зайти в папку
echo "(3) заходим в папку homework"
cd homework
$next

#4) Создать 3 папки
echo "(4) внутри homework создаем 3 папки: folder1 folder2 folder3"
mkdir folder1 folder2 folder3
$next

#5) Зайти в любую папку
echo "(5) заходим в папку folder1"
cd folder1
$next

#6) Создать 5 файлов (3 txt, 2 json)
echo "(6) создаем в folder1 5 файлов: text1.txt text2.txt text3.txt json1.json json2.json"
touch text1.txt text2.txt text3.txt json1.json json2.json
$next

#заодно запишем в один из файлов текст-рыбу для следующего задания
echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Donec eu felis id orci ullamcorper mollis quis id massa. 
Aliquam nec vestibulum neque. Integer tincidunt, mi eget feugiat dictum, nibh tortor ultricies dui, sit amet pretium urna nisi tempus dui. 
Suspendisse rutrum risus ac accumsan semper. Mauris hendrerit rutrum ligula at auctor. 
Quisque feugiat, eros et laoreet pharetra, nibh augue facilisis elit, eget sollicitudin ipsum mauris et lorem. 
Fusce in pellentesque dui." >> ./text2.txt

#7) Создать 3 папки
echo "(7) так же, создаем в  folder1 3 подпапки: subfolder1 subfolder2 subfolder3 "
mkdir subfolder1 subfolder2 subfolder3
$next

#8. Вывести список содержимого папки
echo "(8) вот что у нас в папке folder1:"
ls -la
$next

#9) + Открыть любой txt файл
echo "Вот тут пожалуйста нажми ESC, потом :wq и Enter. Я пока не понял как bash файлом закрыть vim :)" >> ./text1.txt
echo "(9) Сейчас откроется vim. Как из него выйти, будет описано в открывшемся файле"
$next
vim text1.txt
$next

#10) + написать туда что-нибудь, любой текст.
echo "(10) конечно, для ввода текста можно было нажать i и ввести лапками, но это же не наш метод :)"
#11) + сохранить и выйти.
echo "(11) спасибо, что сохранил и вышел! :)"
$next

#12) Выйти из папки на уровень выше
echo "(12) выходим из папки, на уровень выше"
cd ..
$next

#13) переместить любые 2 файла, которые вы создали, в любую другую папку.
echo "(13) перемещаем файлы json1.json и json2.json из folder1 в folder2"
mv ./folder1/{json1.json,json2.json} ./folder2/
$next

#14) скопировать любые 2 файла, которые вы создали, в любую другую папку.
echo "(14) копируем файлы text1.txt и text2.txt из folder1 в folder2"
cp ./folder1/{text1.txt,text2.txt} ./folder2
$next

#15) Найти файл по имени
echo "(15) Ищем файл с именем text1.txt. Такой файл есть тут:"
find ./ -name text1.txt
$next

#17) вывести несколько первых строк из текстового файла
echo "(17) выводим первые 2 строки из файла text2.txt:"
head -2 ./folder2/text2.txt
$next

#18) вывести несколько последних строк из текстового файла
echo "(18) выводим последние 2 строки из файла text2.txt:"
tail -2 ./folder2/text2.txt
$next

#19) просмотреть содержимое длинного файла (команда less) изучите как она работает.
echo "(19) просматриваем содержимое длинного файла:"
echo "ВНИМАНИЕ! СЕЙЧАС ОТКРОЕТСЯ LESS!!! ЧТОБЫ ВЫЙТИ ИЗ LESS НАЖМИТЕ Q"
$next
less ./folder2/text2.txt
$next

#20) вывести дату и время
echo "(20) Текущие дата и время:"
date
$next

#=========
#Задание *
#1) Отправить http запрос на сервер.
#http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000
echo "(*1) Отправляем http запрос на сервер http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000"
$next
curl "http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000"
$next

#2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
echo "(*2) Oops =))"
$next

#16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает.
echo "(16) Этот пункт был перенесен в самый конец, так как я не знаю как остановить tail -f, без остановки выполнения всего скрипта."
$next
echo "отображаем содержимое файла text2.txt в реальном времени. показываем только строки содержащие "ipsum". Чтобы остановить просмотр в реальном времени и продолжить - нажми CTRL+C "
tail -f ./folder2/text2.txt | grep "ipsum"
$next

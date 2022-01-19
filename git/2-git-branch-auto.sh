# GitHub. HW_2
# 1. На локальном репозитории сделать ветки для:
#сразу объявим переменную для нажатия на любую клавишу, чтобы не перегружать код
next="read -n 1 -s -r -p -->>" 

echo "Сначала все же создадим тот репозиторий, которому будем создавать ветки."
$next
curl -u 'glugoff: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' https://api.github.com/user/repos -d {"name":"branch2"}
$next
echo "клонируем её в локальный репозиторий"
$next
git clone https://github.com/glugoff/branch2.git
$next

echo "создаем 7 веток"
$next
# - Postman
git branch "Postman"
# - Jmeter
git branch "Jmeter"
# - CheckLists
git branch "CheckLists"
# - Bag Reports
git branch "Bag_Reports"
# - SQL
git branch "SQL"
# - Charles
git branch "Charles"
# - Mobile testing
git branch "Mobile_testing"
$next

# 2. Запушить все ветки на внешний репозиторий
echo "пушим все ветки на внешний репозиторий"
$next
git push origin --all -u
$next

# 3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта
echo "в ветке Bag Reports создаем документ Bag_Report.txt и заполняем его"
$next
git checkout "Bag_Reports"
touch "Bag_Report.txt"

br=Bag_Report.txt
function log {
echo "$1" >> $br
}

log 'ID: bg01'
log 'Title: Товары не добавляются в корзину'
log 'steps to reproduction: '
log 'Зайти на страницу товара '
log 'Ввести целое положительное значение в поле количество '
log 'Нажать кнопку добавить в корзину'
log 'Перейти в корзину'
log 'expected result: В корзине есть товар'
log 'actual result: Корзина пуста'
$next

# 4. Запушить структуру багрепорта на внешний репозиторий
echo "Пушим багрепорт на внешний репозиторий"
$next
git add . 
git commit -m "add bag report file"
git push -u origin "Bag_Reports"
$next

# 5. Вмержить ветку Bag Reports в Main
echo "Вмерживаем ветку Bag Reports в Main"
$next
git checkout "main"
git merge Bag_Reports
$next

# 6. Запушить main на внешний репозиторий.
echo "Пушим main на внешний репо"
$next
git push
$next

# 7. В ветке CheckLists набросать структуру чек листа.
echo "Создать и заполнить файл с чеклистом в ветке checklist"
$next
git checkout "CheckLists"
touch checklist.txt

cl=checklist.txt
function log2 {
echo "$1" >> $cl
}

log2 '☑ Сайт открывается и доступен.'
log2 '☑ При попытке повторно открыть сайт, он открывается и доступен.'
log2 '☑ Все кнопки на сайте нажимаются.'
log2 '☑ Все ссылки на сайте открываются.'
log2 '☑ На сайте нет битых ссылок.'
log2 '☑ Проверить все формы на сайте.'
log2 '☑ Проверить валидацию всех обязательных полей.'
log2 '☑ Знак звездочки есть у всех обязательных полей.'
log2 '☑ Проверить валидацию для всех необязательных полей.'
log2 '☑ Проверить основные элементы сайта.'
log2 '☑ Проверить работу меню.'
log2 '☑ Проверить, что загруженные документы открываются правильно.'
log2 '☑ Отправка форм работает корректно.'
log2 '☑ Проверить, что будет, если удалить куки, находясь на сайте.'
log2 '☑ Проверить, что будет, если удалить куки после посещения сайта.'
log2 '☑ Все данные в списках в хронологическом порядке.'
$next

# 8. Запушить структуру на внешний репозиторий
echo 'Пушим чеклист на внешний репо'
$next
git add . 
git commit -m "add checklist file"
git push -u origin "CheckLists"
$next

# 9. На внешнем репозитории сделать Pull Request ветки CheckLists в main
echo 'на внешнем репо делаем Pull Request ветки Checklist в main'
$next
В ветке CheckLists нажимаем зелёную нопку Compare & pull request, потом нажимаем merge pull request
$next

# 10. Синхронизировать Внешнюю и Локальную ветки Main
echo 'синхронизировать внешнюю и локальную ветки'
$next
git checkout "main"
git pull
$next

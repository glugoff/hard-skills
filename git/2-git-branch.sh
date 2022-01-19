# GitHub. HW_2
# 1. На локальном репозитории сделать ветки для:
# Сначала все же создадим тот репозиторий, которому будем создавать ветки. Создаем на веб-интерфейсе репозиторий branch, клонируем
git clone https://github.com/glugoff/branch.git

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

# проверяем, все ли создалось
git branch

# 2. Запушить все ветки на внешний репозиторий
git push --all -u

# 3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта
git checkout "Bag_Reports"
touch "Bag_Report.txt"

ID: bg01
Title: Товары не добавляются в корзину
steps to reproduction: 
Зайти на страницу товара 
Ввести целое положительное значение в поле количество 
Нажать кнопку добавить в корзину
Перейти в корзину
expected result: В корзине есть товар
actual result: Корзина пуста

# 4. Запушить структуру багрепорта на внешний репозиторий
git add . 
git commit -m "add bag report file"
git push -u origin "Bag_Reports"

# 5. Вмержить ветку Bag Reports в Main
git checkout "main"
git merge Bag_Reports

# 6. Запушить main на внешний репозиторий.
git push

# 7. В ветке CheckLists набросать структуру чек листа.
git checkout "CheckLists"
touch checklist.txt

☑ Сайт открывается и доступен.
☑ При попытке повторно открыть сайт, он открывается и доступен.
☑ Все кнопки на сайте нажимаются.
☑ Все ссылки на сайте открываются.
☑ На сайте нет битых ссылок.
☑ Проверить все формы на сайте.
☑ Проверить валидацию всех обязательных полей.
☑ Знак звездочки есть у всех обязательных полей.
☑ Проверить валидацию для всех необязательных полей.
☑ Проверить основные элементы сайта.
☑ Проверить работу меню.
☑ Проверить, что загруженные документы открываются правильно.
☑ Отправка форм работает корректно.
☑ Проверить, что будет, если удалить куки, находясь на сайте.
☑ Проверить, что будет, если удалить куки после посещения сайта.
☑ Все данные в списках в хронологическом порядке.

# 8. Запушить структуру на внешний репозиторий
git add . 
git commit -m "add checklist file"
git push -u origin "CheckLists"

# 9. На внешнем репозитории сделать Pull Request ветки CheckLists в main
В ветке CheckLists жмакаем зелёную нопку Compare & pull request, потом жмакаем merge pull request

# 10. Синхронизировать Внешнюю и Локальную ветки Main
git checkout "main"
git pull
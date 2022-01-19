# JSON

#сразу объявим переменную для нажатия на любую клавишу, чтобы не перегружать код
zhmak="read -n 1 -s -r -p -->>" 

#  4. Создать внешний репозиторий c названием JSON.
echo "(4) Создаем внешний репозиторий с именем json"
$next
curl -u 'glugoff:TOKEN' https://api.github.com/user/repos -d '{"name":"json"}'
$next

#  5. Клонировать репозиторий JSON на локальный компьютер.
echo "(5) Клонируем внешний репозиторий на локальную машину"
$next
cd /d/code
git clone https://github.com/glugoff/json
git init
$next

#  6. Внутри локального JSON создать файл “new.json”.
echo "(6) Внутри локальной папки репозитория создаем  файл new.json"
$next
cd json
touch new.json
$next

#  7. Добавить файл под гит.
echo "(7) (8) (9)  Добавляем new.json под гит, коммитим и пушим"
$next
git add new.json

#  8. Закоммитить файл.
git commit -am "add file new.json"

#  9. Отправить файл на внешний GitHub репозиторий.
git push
$next

#  10. Отредактировать содержание файла “new.json” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате JSON.
echo "(10) Вводим в файл new.json инфорамцию о себе в формате json"
$next
nw=new.json
echo '{' >> $nw
echo '"name": "Mikhail",' >> $nw
echo '"age": 35,' >> $nw
echo '"pet_count": 1,' >> $nw
echo '"salary": 1000' >> $nw
echo '}' >> $nw
$next

#  11. Отправить изменения на внешний репозиторий.
echo "(11) Отправляем изменения на внешний репозиторий"
$next
git commit -am "added content to new.json"
git push
$next

#  12. Создать файл preferences.json
echo "(12) Создаем файл preferences.json"
$next
touch preferences.json
$next

#  13. В файл preferences.json добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате JSON.
echo "(13) Вводим в файл preferences.json инфорамцию о своих предпочтениях в формате json"
$next
pf=preferences.json
echo '{' >> $pf
echo '"favourite film": "the matrix",' >> $pf
echo '"favorite serial": "I don`t watch soap operas",' >> $pf
echo '"favourite season": "autumn",' >> $pf
echo '"country": "Albania"' >> $pf
echo '}' >> $pf
$next

#  14. Создать файл sklls.json добавить информацию о скиллах которые будут изучены на курсе в формате JSON
echo "(14) Создаем файл skills.json. Вводим в файл skills.json инфорамцию о своих предпочтениях в формате json"
$next
touch skills.json
sk=skills.json
echo '{' >> $sk
echo '"1": "Базовая теория (Что такое тестирование, багрепорты, документация, виды, методы, направления тестирования и т.п.) SDLC, STLC",' >> $sk
echo '"2": "Что такое клиент серверная архитектура.",' >> $sk
echo '"3": "Методы запросов на сервер.",' >> $sk
echo '"4": "Ответы сервера.",' >> $sk
echo '"5": "Структуры запросов и ответов.",' >> $sk
echo '"6": "Что такое JSON, XML. Их структура.",' >> $sk
echo '"7": "Тестирование API.",' >> $sk
echo '"8": "Снятие и чтение логов.",' >> $sk
echo '"9": "Postman, Fidler.",' >> $sk
echo '"10": "VPN. (Как работает, зачем нужен, как использовать, варианты инструментов)",' >> $sk
echo '"11": "Dev Tools веб браузеров (Google Chrome, FireFox).",' >> $sk
echo '"12": "Мобильное тестирование.",' >> $sk
echo '"13": "Особенность iOS, Android, гайдлайны.",' >> $sk
echo '"14": "Сборка iOS приложений на XCode",' >> $sk
echo '"15": "Сборка Android приложений на Android Studio",' >> $sk
echo '"16": "Перехват мобильного трафика (сниффинг) через Charles",' >> $sk
echo '"17": "Настройка прокси на iOS и Android.",' >> $sk
echo '"18": "Командная строка (terminal) Linux Ubuntu. Копирование, создание, просмотр, перемещение файлов на серверах без графического интерфейса. ",' >> $sk
echo '"19": "Простой bash скриптринг , автоматизация рутинных задач на сервере.",' >> $sk
echo '"20": "Доступ к удалённым серверам.",' >> $sk
echo '"21": "Основы SQL (Create, Delete, Drop, Insert Into, Select, From, Where, Join",' >> $sk
echo '"22": "Git",' >> $sk
echo '"23": "Jmeter",' >> $sk
echo '"24": "Методология разработки Scrum",' >> $sk
echo '"25": "Python. Создание собственного клиент-серверного приложения."' >> $sk
echo '}' >> $sk
$next

#  15. Отправить сразу 2 файла на внешний репозиторий.
echo "(15) Отправляем сразу 2 файла на внешний репозиторий"
$next
git add {preferences.json,skills.json}
git commit -am "add files preferences and skills"
git push
$next

#  16. На веб интерфейсе создать файл bug_report.json.
echo "(16) (17) Создаем файл bug_report.json, делаем коммит"
$next
echo "будем считать что я умею нажимать зеленую кнопочку в веб-мордочке, поэтому только консоль, только хардкор ))"
$next
touch bug_report.json

#  17. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
git add bug_report.json
git commit -am "create bug_report.json"

#  18. На веб интерфейсе модифицировать файл bug_report.json, добавить баг репорт в формате JSON.
echo "(18) (19) Добавляем в файл bug_report.json - баг репорт в формате json"
$next
bw=bug_report.json
echo '{' >> $bw
echo '"ID": "bg01",' >> $bw
echo '"Title": "Товары не добавляются в корзину",' >> $bw
echo '"steps to reproduction": [' >> $bw
echo '"Зайти на страницу товара", ' >> $bw
echo '"Ввести целое положительное значение в поле количество", ' >> $bw
echo '"Нажать кнопку добавить в корзину", '>> $bw
echo '"Перейти в корзину"], ' >> $bw
echo '"Ожидаемый результат": "В корзине есть товар",' >> $bw
echo '"Фактический результат": "Корзина пуста"' >> $bw
echo '}' >> $bw
    
#  19. Сделать Commit changes (сохранить) изменения  на веб интерфейсе.
git commit -am "added content to bugreport.json"
$next

#  20. Синхронизировать внешний и локальный репозиторий JSON
echo"(20) Синхронизируем внешний и локальный репозиторий JSON."
git push

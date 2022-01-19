// интересный способ оформления тестов в постмане от Димы Крылова. Надо на досуге попробовать.
// Дмитрий Крылов, [08.01.2022 19:41]
// Способ создать переменную в виде объекта , и элементами его массива которые можно сравнить между собой ,
//  они могут выступать ввиде любых других переменнных или условий или булевых значений:
// Также количество переменных и условий может быть сколько угодно

varname = {
//Простое сравнение элементов, в данном случае имя ответа и запрос
 "string": [jsonData.name, reqdata.name], 
 //Сравнение True or False на проверку наличия параметра объекта
 "string": [true, jsonData.xx.yy.zz.hasOwnProperty("xxx")],
 //Сравнение числа Int с преобразованием строки в int вместо parseInt можно использовать +(reqdata.salary)
 "string":[jsonData.salary, parseInt(reqdata.salary)],
 //Сравнение двух переменных с доп условием 
 "string" :[jsonData.family.u_salary_1_5_year,parseInt(reqdata.salary*4)]
 //Сравнение отдельного элемента массива с другим значением или переменной
 "string":[jsonData.salary[0], parseInt(query.salary)],
 //Случай когда структура json'a виде есть точка в ключе (after_3.5_years)
 "string": [jsonData["qa_salary_after_3.5_years"], parseInt(reqdata.salary*3.8)],
}


// Используем цикл for на примере переменной в виде объекта, const присваем имя элементов внутри объект
// а и указываем на него of Object.entries(shouldBeEqual) далее запускаем сам цикл указываем что для объекта
//  будет выполнятся тест, в котором будет сравнение элементов между собой, используя такую схему можно использовать вместо .to.eql любые другие функции

for (const [testName, compare] of Object.entries(shouldBeEqual)) {
 pm.test(testName, function () {
 pm.expect(compare[0]).to.eql(compare[1]);
 });
}


ShouldBeEqual = {
    "NameEqual": [jsonData.name, query.name],
    "AgeEqual": [jsonData.age, parseInt(query.age)],
    "SalaryEqual":[jsonData.salary[0], parseInt(query.salary)],
    "SalaryEqual*2":[parseInt (jsonData.salary[1]), parseInt(query.salary*2)],
    "SalaryEqual*3":[parseInt (jsonData.salary[2]), parseInt(query.salary*3)],
};
// cycle for all tests testName its a key , compare is a value
for (const [testName, compare] of Object.entries(ShouldBeEqual)) {
    pm.test(testName,function() {
        pm.expect(compare[0]).to.eql(compare[1]);
    });
}

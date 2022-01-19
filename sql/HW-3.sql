--SQL HomeWork 3. Joins
--
--Подключится к 
--Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123
--
--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )
--
--
select employees.id, employee_name ,monthly_salary from employee_salary 
join employees on employee_id = employees.id  
join salary on salary.id = salary_id;-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами

--Вывести всех работников у которых ЗП меньше 2000.
select employee_name,monthly_salary from employee_salary
join  employees on employee_id = employees.id  
join salary on salary.id = salary_id
where monthly_salary < 2000;

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary
left join employee_salary es on salary.id = es.salary_id
where es.employee_id is null;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from employee_salary
join salary on salary.id = salary_id
left join employees on employee_id = employees.id
where monthly_salary < 2000 and employee_name is null;

 
--Найти всех работников кому не начислена ЗП.
select employees.id, employee_name  from employees
left join employee_salary on employee_id = employees.id
where employee_salary.salary_id is null;

--Вывести всех работников с названиями их должности.
select  employee_name,role_name from roles_employee 
join employees on employee_id = employees.id
join roles on roles.id = role_id ;
  
 --Вывести имена и должность только Java разработчиков.
select employee_name,role_name from roles_employee 
join employees on employee_id = employees.id
join roles on roles.id = role_id
where roles.id in (4,5,6);
  
 --Вывести имена и должность только Python разработчиков.
select employee_name,role_name from roles_employee
join employees on employee_id = employees.id 
join roles on roles.id =role_id
where roles.id in(1,2,3);
 
--Вывести имена и должность всех QA инженеров.
select employee_name,role_name from roles_employee
join employees on employee_id = employees.id 
join roles on roles.id =role_id
where role_name  like '%QA engineer';

--Вывести имена и должность ручных QA инженеров.
select employee_name,role_name from roles_employee
join employees on employee_id = employees.id 
join roles on roles.id =role_id
where role_name  like '% Manual QA engineer';

--Вывести имена и должность автоматизаторов QA
select employee_name,role_name from roles_employee
join employees on employee_id = employees.id 
join roles on roles.id =role_id
where roles.id in(18,19,20);

--Вывести имена и зарплаты Junior специалистов
select employees.id, employee_name ,monthly_salary, role_name from employee_salary 
join employees on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id  = employees.id 
join roles on roles.id  = roles_employee.role_id 
where role_name  like '%Junior%';
 
--Вывести имена и зарплаты Middle специалистов
select employees.id, employee_name ,monthly_salary, role_name from employee_salary 
join employees on employee_salary.employee_id = employees.id  
join salary on salary.id = employee_salary.salary_id
join roles_employee on roles_employee.employee_id  = employees.id 
join roles on roles.id  = roles_employee.role_id 
where role_name  like '%Middle%';

--Вывести имена и зарплаты Senior специалистов
select e.id, e.employee_name ,monthly_salary, role_name
from employee_salary es 
join employees e on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
join roles_employee re  on re.employee_id = e.id 
join roles  on roles.id =role_id 
where role_name like '%Senior%';

-- Вывести зарплаты Java разработчиков

select monthly_salary, role_name from employees e 
join roles_employee on employee_id =e.id
join roles r on role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary on salary.id = es.salary_id 
where  r.id in (4,5,6); 



--Вывести зарплаты Python разработчиков
select monthly_salary, role_name from employees e 
join roles_employee on employee_id =e.id
join roles r on role_id = r.id 
join employee_salary es on es.employee_id = e.id
join salary on salary.id = es.salary_id 
where role_name like '%Python developer'

select monthly_salary, role_name from employee_salary es
 join salary s on s.id = es.salary_id 
  join roles_employee re on re.employee_id =es.employee_id 
join roles on roles.id = re.role_id 
where role_name like '%Python developer';

--Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name ,r.role_name ,s.monthly_salary 
from employee_salary es 
join employees e on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%Junior Python developer';

--Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name ,r.role_name ,s.monthly_salary 
from employee_salary es
join employees e on es.employee_id = e.id 
join salary s  on s.id = es.salary_id 
join roles_employee re on re.employee_id =es.employee_id 
join roles r on r.id = re.role_id
where r.id in (8);

--Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name,s.monthly_salary,r.role_name 
from employees e 
join employee_salary es on e.id = es.salary_id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.id in (6) ;

--Вывести зарплаты Junior QA инженеров
select s.monthly_salary, r.role_name
from salary s 
join employee_salary es on es.salary_id = s.id 
join roles_employee re on re.employee_id =es.employee_id
join roles r on r.id = re.role_id 
where r.id in (10,18) ;

--Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary)
from salary s 
join employee_salary es  on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name   like '%Junior%'
; 

-- Вывести сумму зарплат JS разработчиков
select  sum(s.monthly_salary) ,r.role_name
from employee_salary es 
join salary s on es.salary_id = s.id 
join roles_employee re  on re.employee_id = es.employee_id 
join roles r on r.id =re.role_id 
where r.role_name like '%JavaScript developer' 
group by r.role_name ;

--Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary)
from salary s 
join employee_salary es on es.employee_id =s.id 
join roles_employee re on re.employee_id =es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA engineer';

--Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) 
from salary s 
join employee_salary es on es.employee_id =s.id 
join roles_employee re on re.employee_id =es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA engineer';

--Вывести количество QA инженеров
select count(*)
from roles_employee re 
join roles r on r.id = re.role_id 
where r.role_name like '%QA engineer';

--Вывести количество Middle специалистов.
select count(*)
from roles_employee re 
join roles r on r.id = re.role_id 
where r.role_name like '%Middle%';

--Вывести количество разработчиков
select count(*)
from roles_employee re 
join roles r on r.id = re.role_id 
where r.role_name like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков.
select  sum(s.monthly_salary) 
from employee_salary es 
join salary s on es.salary_id = s.id 
join roles_employee re  on re.employee_id = es.employee_id 
join roles r on r.id =re.role_id 
where r.role_name like '%developer' ;

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name,s.monthly_salary,r.role_name 
from employees e 
join employee_salary es on e.id = es.salary_id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
order by s.monthly_salary ;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name,s.monthly_salary,r.role_name 
from employees e 
join employee_salary es on e.id = es.salary_id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name,s.monthly_salary,r.role_name 
from employees e 
join employee_salary es on e.id = es.salary_id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where s.monthly_salary <2300
order by s.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name,s.monthly_salary,r.role_name 
from employees e 
join employee_salary es on e.id = es.salary_id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;

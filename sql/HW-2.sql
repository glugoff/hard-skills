-- 1. Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees (
id serial primary key,
employee_name varchar(50) unique not null
);

--2. Наполнить таблицу employees 70 строками.
insert into employees (employee_name) values 
('Валерия Николаева'),
('Игорь Беляев'),
('Ярослав Смирнов'),
('Савелий Зайцев'),
('Мария Волкова'),
('Екатерина Семенова'),
('Адам Миронов'),
('Александр Шишкин'),
('Софья Яковлева'),
('Анна Соболева'),
('Адам Сотников'),
('Артём Кукушкин'),
('Дмитрий Морозов'),
('Вячеслав Нефедов'),
('Артём Максимов'),
('Максим Масленников'),
('Диана Быкова'),
('Татьяна Горбунова'),
('Светлана Рожкова'),
('Анастасия Семенова'),
('Николай Ильин'),
('Илья Власов'),
('Ирина Сорокина'),
('Анна Львова'),
('Василиса Майорова'),
('Даниил Медведев'),
('Александр Михайлов'),
('Тимофей Корнилов'),
('Сергей Иванов'),
('Кирилл Марков'),
('Георгий Воробьев'),
('Георгий Кузнецов'),
('Платон Щербаков'),
('Андрей Покровский'),
('Роман Захаров'),
('Роман Семенов'),
('Алиса Федосеева'),
('Татьяна Савицкая'),
('Мария Казакова'),
('Екатерина Захарова'),
('Марта Кулешова'),
('Михаил Миронов'),
('Артём Еремин'),
('Максим Баранов'),
('Иван Золотов'),
('Лев Золотарев'),
('Владимир Карпов'),
('Сергей Ширяев'),
('Платон Яковлев'),
('Екатерина Фролова'),
('Оливия Виноградова'),
('Полина Королева'),
('Мия Еремина'),
('Марат Федоров'),
('Егор Морозов'),
('Есения Селезнева'),
('Ирина Ерофеева'),
('Станислава Соловьева'),
('Савелий Калачев'),
('Никита Харитонов'),
('Алина Синицына'),
('Глеб Тарасов'),
('Богдан Гришин'),
('Дмитрий Гришин'),
('Лев Сорокин'),
('Анна Кулешова'),
('Ярослав Колпаков'),
('Анастасия Суслова'),
('Лилия Петрова'),
('Мария Зиновьева')
;

--3 Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary (
id serial primary key,
mounthly_salary Int not null
);

--4 Наполнить таблицу salary 15 строками
insert into salary (mounthly_salary) values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500)
;

--5 Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

--6 Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (id, employee_id, salary_id) values
(default, 1, 7),
(default, 140, 7),
(default, 122, 2),
(default, 111, 7),
(default, 333, 8),
(default, 344, 12),
(default, 355, 7),
(default, 366, 7),
(default, 30, 7),
(default, 811, 7),
(default, 480, 7),
(default, 12, 7),
(default, 112, 5),
(default, 144, 12),
(default, 82, 7),
(default, 45, 7),
(default, 33, 7),
(default, 34, 6),
(default, 29, 7),
(default, 177, 7),
(default, 17, 7),
(default, 5, 7),
(default, 14, 7),
(default, 18, 7),
(default, 27, 7),
(default, 32, 12),
(default, 11, 8),
(default, 37, 1),
(default, 312, 67),
(default, 433, 7),
(default, 16, 1),
(default, 26, 4),
(default, 15, 13),
(default, 52, 10),
(default, 511, 2),
(default, 23, 4),
(default, 40, 13),
(default, 175, 9),
(default, 201, 4),
(default, 1415, 7)
;


--7 Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles (
id serial primary key,
role_name int not null unique
);

--8 Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar (30);

--9 Наполнить таблицу roles 20 строками:
insert into roles (id, role_name) values
(1, 'Junior Python developer'),
(2, 'Middle Python developer'),
(3, 'Senior Python developer'),
(4, 'Junior Java developer'),
(5, 'Middle Java developer'),
(6, 'Senior Java developer'),
(7, 'Junior JavaScript developer'),
(8, 'Middle JavaScript developer'),
(9, 'Senior JavaScript developer'),
(10, 'Junior Manual QA engineer'),
(11, 'Middle Manual QA engineer'),
(12, 'Senior Manual QA engineer'),
(13, 'Project Manager'),
(14, 'Designer'),
(15, 'HR'),
(16, 'CEO'),
(17, 'Sales manager'),
(18, 'Junior Automation QA engineer'),
(19, 'Middle Automation QA engineer'),
(20, 'Senior Automation QA engineer')
;

-- 10 Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null ,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
);

-- 11 Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (id, employee_id, role_id) values
(default, 1, 1),
(default, 2, 2),
(default, 3, 3),
(default, 4, 4),
(default, 5, 5),
(default, 6, 6),
(default, 7, 7),
(default, 8, 8),
(default, 9, 9),
(default, 10, 10),
(default, 11, 11),
(default, 12, 12),
(default, 13, 13),
(default, 14, 14),
(default, 15, 15),
(default, 16, 16),
(default, 17, 17),
(default, 18, 18),
(default, 19, 19),
(default, 20, 20),
(default, 21, 1),
(default, 22, 2),
(default, 23, 3),
(default, 24, 4),
(default, 25, 5),
(default, 26, 6),
(default, 27, 7),
(default, 28, 8),
(default, 29, 9),
(default, 30, 10),
(default, 31, 11),
(default, 32, 12),
(default, 33, 13),
(default, 34, 14),
(default, 35, 15),
(default, 36, 16),
(default, 37, 17),
(default, 38, 18),
(default, 39, 19),
(default, 40, 20)
;


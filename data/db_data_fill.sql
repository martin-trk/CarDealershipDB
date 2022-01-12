INSERT INTO dealership_sites(name)
VALUES('AAA Autóház');

INSERT INTO dealership_sites(name)
VALUES('BBB Autóház');

INSERT INTO dealership_sites(name)
VALUES('CCC Autóház');

INSERT INTO dealership_sites(name)
VALUES('DDD Autóház');

INSERT INTO site_addresses(zip_code, city, street, house_number)
VALUES(7622, 'Pécs', 'Siklósi út', '11/B');

INSERT INTO site_addresses(zip_code, city, street, house_number)
VALUES(7630, 'Pécs', 'Zsolnay Vilmos utca', '25');

INSERT INTO site_addresses(zip_code, city, street, house_number)
VALUES(7761, 'Kozármisleny', 'Vadvirág utca', '4');

INSERT INTO site_addresses(zip_code, city, street, house_number)
VALUES(7400, 'Kaposvár', 'Iszák utca', '48');

INSERT INTO departments(name, salary_min, salary_max, shift_starts_hour, shift_ends_hour)
VALUES('Vezetőség', 750000, 1500000, '9:00', '18:00');

INSERT INTO departments(name, salary_min, salary_max, shift_starts_hour, shift_ends_hour)
VALUES('Kereskedő', 450000, 900000, '8:30', '17:00');

INSERT INTO departments(name, salary_min, salary_max, shift_starts_hour, shift_ends_hour)
VALUES('Autókozmetikus', 300000, 500000, '7:30', '16:00');

INSERT INTO departments(name, salary_min, salary_max, shift_starts_hour, shift_ends_hour)
VALUES('Szerelő', 350000, 550000, '7:00', '15:30');

INSERT INTO departments(name, salary_min, salary_max, shift_starts_hour, shift_ends_hour)
VALUES('Könyvelő', 600000, 1000000, '8:00', '17:00');

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(1, 200, 'Varga', 'Botond', TO_DATE('1969-07-01', 'YYYY-MM-DD'), 'férfi', TO_DATE('2022-01-03', 'YYYY-MM-DD'), 7720, 'Pécsvárad', 'Bem utca', 42, 850000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(1, 201, 'Balogh', 'Zsófia', TO_DATE('1992-10-29', 'YYYY-MM-DD'), 'nő', TO_DATE('2011-06-22', 'YYYY-MM-DD'), 7632, 'Pécs', 'Árnyas út', 56, 550000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(1, 202, 'Kovács', 'Martin', TO_DATE('1984-03-19', 'YYYY-MM-DD'), 'férfi', TO_DATE('2014-01-19', 'YYYY-MM-DD'), 7632, 'Pécs', 'Sztárai Mihály utca', 12, 365000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(1, 203, 'Horváth', 'János', TO_DATE('1982-12-10', 'YYYY-MM-DD'), 'férfi', TO_DATE('2015-01-04', 'YYYY-MM-DD'), 7632, 'Pécs', 'Fő utca', 1, 410000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(1, 204, 'Major', 'Adél', TO_DATE('1995-07-28', 'YYYY-MM-DD'), 'nő', TO_DATE('2018-03-03', 'YYYY-MM-DD'), 7632, 'Pellérd', 'Fő utca', 23, 650000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(2, 200, 'Kiss', 'Mónika', TO_DATE('1970-03-30', 'YYYY-MM-DD'), 'nő', TO_DATE('2014-11-11', 'YYYY-MM-DD'), 7632, 'Pécs', 'Csikor Kálmán utca', 8, 900000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(2, 201, 'Kis', 'Bálint', TO_DATE('1972-04-30', 'YYYY-MM-DD'), 'férfi', TO_DATE('2014-07-29', 'YYYY-MM-DD'), 7811, 'Szalánta', 'Barátság utca', 25, 580000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(2, 202, 'Vörös', 'Milán', TO_DATE('1989-08-13', 'YYYY-MM-DD'), 'férfi', TO_DATE('2018-08-09', 'YYYY-MM-DD'), 7673, 'Kővágószőlős', 'Széchenyi utca', 1, 300000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(2, 203, 'Nagy', 'Márton', TO_DATE('1990-05-25', 'YYYY-MM-DD'), 'férfi', TO_DATE('2011-03-07', 'YYYY-MM-DD'), 7693, 'Pécs', 'József Attila tér', 3, 370000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(2, 204, 'Szűcs', 'Dóra', TO_DATE('1974-01-06', 'YYYY-MM-DD'), 'nő', TO_DATE('2013-02-13', 'YYYY-MM-DD'), 7632, 'Pécs', 'Maléter Pál út', 32, 850000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(3, 200, 'Tóth', 'Anna', TO_DATE('1969-04-29', 'YYYY-MM-DD'), 'nő', TO_DATE('2010-04-26', 'YYYY-MM-DD'), 7763, 'Egerág', 'Hunyadi János utca', 9, 1000000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(3, 201, 'Gál', 'Kitti', TO_DATE('1987-01-18', 'YYYY-MM-DD'), 'nő', TO_DATE('2022-01-03', 'YYYY-MM-DD'), 7761, 'Kozármisleny', 'Gárdonyi Géza utca', 12, 590000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(3, 202, 'Csonka', 'Krisztián', TO_DATE('1998-11-03', 'YYYY-MM-DD'), 'férfi', TO_DATE('2020-04-14', 'YYYY-MM-DD'), 7632, 'Pécs', 'Hunyadi János utca', 98, 300000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(3, 203, 'Márton', 'Noel', TO_DATE('1991-06-23', 'YYYY-MM-DD'), 'férfi', TO_DATE('2019-12-01', 'YYYY-MM-DD'), 7632, 'Pécs', 'Árnyas út', 1, 370000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(3, 204, 'Fodor', 'Maja', TO_DATE('1986-03-25', 'YYYY-MM-DD'), 'nő', TO_DATE('2016-12-02', 'YYYY-MM-DD'), 7763, 'Szőkéd', 'Széchenyi utca', 21, 835000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(4, 200, 'Kovács', 'Bence', TO_DATE('1967-01-08', 'YYYY-MM-DD'), 'férfi', TO_DATE('2020-04-25', 'YYYY-MM-DD'), 7400, 'Kaposvár', 'Szombathely utca', 1, 800000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(4, 201, 'Magyar', 'Máté', TO_DATE('1991-04-23', 'YYYY-MM-DD'), 'férfi', TO_DATE('2021-03-25', 'YYYY-MM-DD'), 7521, 'Kaposmérő', 'Dózsa György utca', 2, 600000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(4, 202, 'Sipos', 'Barnabás', TO_DATE('1985-06-20', 'YYYY-MM-DD'), 'férfi', TO_DATE('2017-02-03', 'YYYY-MM-DD'), 7400, 'Kaposvár', 'Kossuth Lajos utca', 32, 300000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(4, 203, 'Szalai', 'Kornél', TO_DATE('2000-12-19', 'YYYY-MM-DD'), 'férfi', TO_DATE('2018-08-12', 'YYYY-MM-DD'), 7400, 'Kaposvár', 'József Attila tér', 23, 395000);

INSERT INTO employees(dealership_site_id, department_id, first_name, last_name, birth_date, gender, hire_date, zip_code, city, street, house_number, salary)
VALUES(4, 204, 'Orsós', 'Olívia', TO_DATE('1997-09-12', 'YYYY-MM-DD'), 'nő', TO_DATE('2020-11-30', 'YYYY-MM-DD'), 7476, 'Kaposszerdahely', 'Kossuth Lajos utca', 36, 650000);

INSERT INTO car_manufacturers(ma_name)
VALUES('Suzuki');

INSERT INTO car_manufacturers(ma_name)
VALUES('Ford');

INSERT INTO car_manufacturers(ma_name)
VALUES('Kia');

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3001, 'Mondeo', 5, 5, 1482);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3001, 'Focus', 4, 5, 1421);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3002, 'CeeD', 5, 5, 1193);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3000, 'Splash', 5, 5, 1050);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3000, 'Swift MK4', 5, 5, 865);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3000, 'Swift MK3 Sport', 5, 5, 1045);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3000, 'Swift MK3', 3, 4, 960);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3000, 'Swift MK3', 5, 5, 990);

INSERT INTO car_models(manufacturer_id, mo_name, number_of_doors, number_of_passangers, weight)
VALUES(3001, 'C-MAX', 5, 5, 1334);

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('2.0 TDCI', 1997, 140, 6, 'Dízel');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.6 GDI', 1591, 135, 6, 'Benzin');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.0', 996, 65, 5, 'Benzin');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.2 Dualjet Hybrid', 1197, 83, 5, 'Benzin');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.6 Sport', 1586, 136, 6, 'Benzin');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.2', 1242, 94, 5, 'Benzin');

INSERT INTO car_engines(en_name, engine_displacement, performance, gear, fuel)
VALUES('1.6 TDCI', 1596, 101, 6, 'Dízel');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(1, 1, 1, 1749000, 309196, 2008, 'Fekete', 4, 'Megkímélt');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(1, 3, 2, 3799999, 160000, 2012, 'Barna', 2, 'Kitűnő');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(2, 4, 3, 1340000, 121000, 2008, 'Zöld', 3, 'Normál');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(3, 5, 4, 5190000, 3397, 2021, 'Piros', 1, 'Újszerű');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(3, 6, 5, 3647000, 102356, 2016, 'Fehér', 2, 'Megkímélt');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(1, 7, 6, 1599000, 200662, 2012, 'Szürke', 2, 'Normál');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(3, 8, 6, 1799000, 210000, 2012, 'Fehér', 3, 'Normál');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(2, 5, 4, 4699000, 525, 2021, 'Piros', 0, 'Új');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(4, 1, 1, 3600000, 248000, 2015, 'Kék', 1, 'Újszerű');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(4, 6, 5, 2628000, 125000, 2011, 'Piros', 3, 'Megkímélt');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(4, 8, 6, 1300000, 180000, 2014, 'Kék', 5, 'Normál');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(3, 9, 7, 1845000, 207000, 2010, 'Kék', 2, 'Újszerű');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(1, 3, 2, 3589000, 88150, 2015, 'Barna', 1, 'Kitűnő');

INSERT INTO cars(dealership_site_id, model_id, engine_id, price, kilometers, year_of_manufacture, color, number_of_past_owners, condition)
VALUES(3, 2, 1, 1690000, 279831, 2009, 'Világoskék', 3, 'Megkímélt');

COMMIT;
CREATE DATABASE Mans_friends;
/*Создали базу данных */
USE Mans_friends;

CREATE TABLE Home_animals (ID INT AUTO_INCREMENT PRIMARY KEY, Name_animals VARCHAR(20) NOT NULL);
INSERT INTO Home_animals (Name_animals) VALUES (DOG), (CAT), (HAMSTER);
/*Создали Таблицу домашних животных и заполнили ее*/
SELECT *FROM Home_animals;
+----+--------------+
| ID | Name_animals |
+----+--------------+
|  1 | DOG          |
|  2 | CAT          |
|  3 | HAMSTER      |
+----+--------------+

CREATE TABLE Pack_animals (ID INT AUTO_INCREMENT PRIMARY KEY, Name_animals VARCHAR (20) NOT NULL);
INSERT INTO Pack_animals (Name_animals) VALUES ('HORSES'), ('CAMEL'), ("DONKEY");
/*Создали Таблицу вьюченных животных и заполнили ее*/

SELECT *FROM Pack_animals;
+----+--------------+
| ID | Name_animals |
+----+--------------+
|  1 | HORSES       |
|  2 | CAMEL        |
|  3 | DONKEY       |
+----+--------------+

/*Дальше создаем и заполняем таблицы животных*/

CREATE TABLE Dog (ID INT AUTO_INCREMENT PRIMARY KEY, Name_dog VARCHAR(20) NOT NULL, Comands VARCHAR (20), Birhday DATE, Class_animals VARCHAR(20), ID_CLASS INT);
INSERT INTO Dog (Name_dog, Comands, Birhday, Class_animals, ID_CLASS) VALUES ('Bobik', 'barks', '2020-02-02', 'Home_animals', 1), ('Tuzik', 'guards', '2021-06-15', 'Home_animals', 1);

 CREATE TABLE Cat (ID INT AUTO_INCREMENT PRIMARY KEY, Name_cat  VARCHAR(20) NOT NULL, Comands VARCHAR (20), Birhday DATE, Class_animals
VARCHAR(20), ID_CLASS INT);
INSERT INTO Cat (Name_cat, Comands, Birhday, Class_animals, ID_CLASS) VALUES ('Sima', 'sleep', '2018-05-22', 'Home_animals', 2), ('Murzik', 'purrs', '2000-12-04', 'Home_animals', 2);
INSERT INTO Hamster (Name_hamster, comands, Birhday, Class_animals, ID_CLASS) VALUES ('Rokky', 'runs', '2018-08-24', 'Home_animals', 3), ('Bobby', 'runs', '2018-08-20', 'Home_animals', 3);

mysql> SELECT * FROM Dog;
+----+----------+---------+------------+---------------+----------+
| ID | Name_dog | Comands | Birhday    | Class_animals | ID_CLASS |
+----+----------+---------+------------+---------------+----------+
|  1 | Bobik    | barks   | 2020-02-02 | Home_animals  |        1 |
|  2 | Tuzik    | guards  | 2021-06-15 | Home_animals  |        1 |
+----+----------+---------+------------+---------------+----------+
mysql> SELECT * FROM Cat;
+----+----------+---------+------------+---------------+----------+
| ID | Name_cat | Comands | Birhday    | Class_animals | ID_CLASS |
+----+----------+---------+------------+---------------+----------+
|  1 | Sima     | sleep   | 2018-05-22 | Home_animals  |        2 |
|  2 | Murzik   | purrs   | 2000-12-04 | Home_animals  |        2 |
+----+----------+---------+------------+---------------+----------+

mysql> SELECT * FROM Hamster;
+----+--------------+---------+------------+---------------+----------+
| ID | Name_hamster | Comands | Birhday    | Class_animals | ID_CLASS |
+----+--------------+---------+------------+---------------+----------+
|  1 | Rokky        | runs    | 2018-08-24 | Home_animals  |        3 |
|  2 | Bobby        | runs    | 2018-08-20 | Home_animals  |        3 |
+----+--------------+---------+------------+---------------+----------+

CREATE TABLE Horses (ID INT AUTO_INCREMENT PRIMARY KEY, Name_horses VARCHAR(20) NOT NULL, Comands VARCHAR (20), Birhday DATE, Class_ani
mals VARCHAR(20), ID_CLASS INT);
INSERT INTO Horses (Name_horses, comands, Birhday, Class_animals, ID_CLASS) VALUES ('Knut', 'jumps', '2022-07-12', 'Pack_animals', 1),
('Sprut', 'jumps', '2005-09-09', 'Pack_animals', 1);
 CREATE TABLE Camel (ID INT AUTO_INCREMENT PRIMARY KEY, Name_camel VARCHAR(20) NOT NULL, Comands VARCHAR (20), Birhday DATE, Class_anima
ls VARCHAR(20), ID_CLASS INT);
INSERT INTO Camel (Name_camel, comands, Birhday, Class_animals, ID_CLASS) VALUES ('Cam', 'carries', '2002-11-21', 'Pack_animals', 2), ('Can', 'chews', '2004-11-20', 'Pack-animals', 2), ('Sam', 'drinks', '2019-05-24', 'Pack_animals', 2);
CREATE TABLE Donkey (ID INT AUTO_INCREMENT PRIMARY KEY, Name_donkey VARCHAR (20) NOT NULL, Comands VARCHAR (20), Birhday DATE,
INSERT INTO Donkey (Name_donkey, Comands, Birhday, Class_animals, ID_CLASS) VALUES ('Liz', 'work', '2022-01-01', 'Pack_animals', 3), ('Dora', 'work', '2017-04-14', 'Pack_animals', 3), ('Puly', 'scream', '1992-12-15', 'Pack_animals', 3);

SELECT * FROM Horses;
+----+-------------+---------+------------+---------------+----------+
| ID | Name_horses | Comands | Birhday    | Class_animals | ID_CLASS |
+----+-------------+---------+------------+---------------+----------+
|  1 | Knut        | jumps   | 2022-07-12 | Pack_animals  |        1 |
|  2 | Sprut       | jumps   | 2005-09-09 | Pack_animals  |        1 |
+----+-------------+---------+------------+---------------+----------+
SELECT * FROM Camel;
+----+------------+---------+------------+---------------+----------+
| ID | Name_camel | Comands | Birhday    | Class_animals | ID_CLASS |
+----+------------+---------+------------+---------------+----------+
|  1 | Cam        | carries | 2002-11-21 | Pack_animals  |        2 |
|  2 | Can        | chews   | 2004-11-20 | Pack-animals  |        2 |
|  3 | Sam        | drinks  | 2019-05-24 | Pack_animals  |        2 |
+----+------------+---------+------------+---------------+----------+

 SELECT * FROM Donkey;
+----+-------------+---------+------------+---------------+----------+
| ID | Name_donkey | Comands | Birhday    | Class_animals | ID_CLASS |
+----+-------------+---------+------------+---------------+----------+
|  1 | Liz         | work    | 2022-01-01 | Pack_animals  |        3 |
|  2 | Puly        | scream  | 1992-12-15 | Pack_animals  |        3 |
|  3 | Dora        | work    | 2017-04-14 | Pack_animals  |        3 |
+----+-------------+---------+------------+---------------+----------+

/*УДАЛИЛ таблицу верблюдов*/
DROP TABLE Camel;

/*Вспомнил, что нужно добавить вторичный ключ. Добавил*/

ALTER TABLE Dog ADD FOREIGN KEY (ID_CLASS) REFERENCES Home_animals (ID);
ALTER TABLE Cat ADD FOREIGN KEY (ID_CLASS) REFERENCES Home_animals (ID);
ALTER TABLE Hamster  ADD FOREIGN KEY (ID_CLASS) REFERENCES Home_animals (ID);
ALTER TABLE Horses ADD FOREIGN KEY (ID_CLASS) REFERENCES Pack_animals (ID);
ALTER TABLE Donkey ADD FOREIGN KEY (ID_CLASS) REFERENCES Pack_animals (ID);

/*Объединил лощадей и ослов в одну таблицу (создал новую таблицу с результатом*/

CREATE TABLE Horses_and_Donkey AS SELECT * FROM (SELECT ID, Name_horses AS Name, Comands, Birhday, Class_animals, ID_CLASS FROM Horses
UNION ALL SELECT ID, Name_donkey AS Name, Comands, Birhday, Class_animals, ID_CLASS FROM Donkey) AS combo;

mysql> SELECT * FROM Horses_and_Donkey;
+----+-------+---------+------------+---------------+----------+
| ID | Name  | Comands | Birhday    | Class_animals | ID_CLASS |
+----+-------+---------+------------+---------------+----------+
|  1 | Knut  | jumps   | 2022-07-12 | Pack_animals  |        1 |
|  2 | Sprut | jumps   | 2005-09-09 | Pack_animals  |        1 |
|  1 | Liz   | work    | 2022-01-01 | Pack_animals  |        3 |
|  2 | Puly  | scream  | 1992-12-15 | Pack_animals  |        3 |
|  3 | Dora  | work    | 2017-04-14 | Pack_animals  |        3 |
+----+-------+---------+------------+---------------+----------+

SHOW TABLES;
+------------------------+
| Tables_in_Mans_friends |
+------------------------+
| Cat                    |
| Dog                    |
| Donkey                 |
| Hamster                |
| Home_animals           |
| Horses                 |
| Horses_and_Donkey      |
| Pack_animals           |
+------------------------+

/*Решил изменить название стоблца NAME, чтобы далее было удобнее работать*/

ALTER TABLE Dog RENAME COLUMN Name_dog TO Name;
ALTER TABLE Cat RENAME COLUMN Name_cat TO Name;
ALTER TABLE Hamster RENAME COLUMN Name_hamster TO Name;
ALTER TABLE Horses RENAME COLUMN Name_horses TO Name;
ALTER TABLE Donkey RENAME COLUMN Name_donkey TO Name;

/*Сделал новую таблицу молодых животных, в которую попали животные от 1 до 3 лет + добавлен столбец с указанием возраста в месяцех*/

CREATE TABLE Young_animals AS SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, TIMESTAMPDIFF(MONTH, Birhday, NOW()) AS Age_month FROM (SELECT * FROM Dog WHERE TIMESTAMPDIFF(MONTH, Birhday, NOW()) BETWEEN 12 and 36 UNION ALL SELECT * FROM Cat WHERE TIMESTAMPDIFF(MONTH, Birhday, NOW()) BETWEEN 12 and 36 UNION ALL SELECT * FROM Hamster WHERE TIMESTAMPDIFF(MONTH, Birhday, NOW()) BETWEEN 12 and 36 UNION ALL SELECT * FROM Horses WHERE TIMESTAMPDIFF(MONTH, Birhday, NOW()) BETWEEN 12 and 36 UNION ALL SELECT * FROM Donkey WHERE TIMESTAMPDIFF(MONTH, Birhday, NOW()) BETWEEN 12 and 36)AS y;

SELECT * FROM Young_animals;
+----+-------+---------+------------+---------------+----------+-----------+
| ID | Name  | Comands | Birhday    | Class_animals | ID_CLASS | Age_month |
+----+-------+---------+------------+---------------+----------+-----------+
|  2 | Tuzik | guards  | 2021-06-15 | Home_animals  |        1 |        30 |
|  1 | Knut  | jumps   | 2022-07-12 | Pack_animals  |        1 |        17 |
|  1 | Liz   | work    | 2022-01-01 | Pack_animals  |        3 |        24 |
+----+-------+---------+------------+---------------+----------+-----------+

SHOW TABLES;
+------------------------+
| Tables_in_Mans_friends |
+------------------------+
| Cat                    |
| Dog                    |
| Donkey                 |
| Hamster                |
| Home_animals           |
| Horses                 |
| Horses_and_Donkey      |
| Pack_animals           |
| Young_animals          |
+------------------------+

/*Объединил все таблицы*/

SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Cat UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Dog UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Donkey UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Hamster UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Horses UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS, NULL AS Age_month FROM Horses_and_Donkey UNION ALL SELECT ID, Name, Comands, Birhday, Class_animals, ID_CLASS,  Age_month FROM Young_animals;
+----+--------+---------+------------+---------------+----------+-----------+
| ID | Name   | Comands | Birhday    | Class_animals | ID_CLASS | Age_month |
+----+--------+---------+------------+---------------+----------+-----------+
|  1 | Sima   | sleep   | 2018-05-22 | Home_animals  |        2 |      NULL |
|  2 | Murzik | purrs   | 2000-12-04 | Home_animals  |        2 |      NULL |
|  1 | Bobik  | barks   | 2020-02-02 | Home_animals  |        1 |      NULL |
|  2 | Tuzik  | guards  | 2021-06-15 | Home_animals  |        1 |      NULL |
|  1 | Liz    | work    | 2022-01-01 | Pack_animals  |        3 |      NULL |
|  2 | Puly   | scream  | 1992-12-15 | Pack_animals  |        3 |      NULL |
|  3 | Dora   | work    | 2017-04-14 | Pack_animals  |        3 |      NULL |
|  1 | Rokky  | runs    | 2018-08-24 | Home_animals  |        3 |      NULL |
|  2 | Bobby  | runs    | 2018-08-20 | Home_animals  |        3 |      NULL |
|  1 | Knut   | jumps   | 2022-07-12 | Pack_animals  |        1 |      NULL |
|  2 | Sprut  | jumps   | 2005-09-09 | Pack_animals  |        1 |      NULL |
|  1 | Knut   | jumps   | 2022-07-12 | Pack_animals  |        1 |      NULL |
|  2 | Sprut  | jumps   | 2005-09-09 | Pack_animals  |        1 |      NULL |
|  1 | Liz    | work    | 2022-01-01 | Pack_animals  |        3 |      NULL |
|  2 | Puly   | scream  | 1992-12-15 | Pack_animals  |        3 |      NULL |
|  3 | Dora   | work    | 2017-04-14 | Pack_animals  |        3 |      NULL |
|  2 | Tuzik  | guards  | 2021-06-15 | Home_animals  |        1 |        30 |
|  1 | Knut   | jumps   | 2022-07-12 | Pack_animals  |        1 |        17 |
|  1 | Liz    | work    | 2022-01-01 | Pack_animals  |        3 |        24 |
+----+--------+---------+------------+---------------+----------+-----------+


Создание таблицы size со столбцами id и name
CREATE TABLE size (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(30) NOT NULL);

Добавление столбца decoding после столбца name
ALTER TABLE size
ADD COLUMN decoding VARCHAR(30) NOT NULL AFTER name;

Добавление данных в таблицу size 
INSERT INTO size (id, name, decoding) VALUES ('1', 'XS', 'extra small');
INSERT INTO size (id, name, decoding) VALUES ('2', 'S', 'small');
INSERT INTO size (id, name, decoding) VALUES ('3', 'M', 'medium');
INSERT INTO size (id, name, decoding) VALUES ('4', 'L', 'large');
INSERT INTO size (id, name, decoding) VALUES ('5', 'XL', 'extra large');
INSERT INTO size (id, name, decoding) VALUES ('6', 'XXL', 'extra extra large');

Добавление новой строки в таблицу size 
INSERT INTO size (id, name, decoding) VALUES ('7', 'XXXL', 'extra extra extra large');

Вывод первой строки
SELECT * FROM size WHERE id=1;

Вывод всех строк, кроме первой
SELECT * FROM size WHERE id>1;

Вывод строк, в которых заполнен столбец decoding
SELECT * FROM size WHERE decoding is NOT NULL;

Вывод строк c id < 3 И заполненным столбцом decoding
SELECT * FROM size WHERE (id < 3) AND (decoding is NOT NULL);

Вывод строк c id < 3 ИЛИ заполненным столбцом decoding
SELECT * FROM size WHERE (id < 3) OR (decoding is NOT NULL);

Вывод столбца name 
SELECT name FROM size;

Вывод столбцов name и decoding
SELECT name, decoding FROM size;

Вывод столбцов decoding и name 
SELECT decoding, name FROM size;

Добавление столбца count в таблицу size 
ALTER TABLE size
ADD COLUMN count VARCHAR(30) NOT NULL AFTER decoding;

Сортировка вывода по столбцу count
SELECT * FROM size ORDER BY count;

Сортировка вывода по столбцу count в обратном порядке
SELECT * FROM size ORDER BY count DESC;

Вывод двух первых строк
SELECT * FROM size LIMIT 2;

Вывод трех строк с id < 5 
SELECT * FROM size WHERE id < 5 LIMIT 3;

Вывод двух строк с id > 3 
SELECT * FROM size WHERE id > 3 LIMIT 2;

Замена в столбце name значений на nXL в строках с id > 4
UPDATE size SET name = 'nXL' WHERE id > 4;

Удаление строк с id > 6
DELETE FROM size WHERE id > 6;

Удаление таблицы size
DROP TABLE 'size';

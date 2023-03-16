-- 1-) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);

-- 2-) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri eklendi.

-- 3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET	name = 'Alpay Ustalar',
	birthday = '1996-10-10',
	email = 'alpay@ustalar.com'
WHERE name = 'Inga Gloy';

UPDATE employee
SET email = 'XxXxX'
WHERE email ILIKE '%.net'
RETURNING *;

UPDATE employee
SET id = 121
WHERE id = 20
RETURNING name, id;

UPDATE employee
SET name = 'UPDATED',
	email = 'updated@gmail.com'
WHERE id BETWEEN 15 AND 20
RETURNING name, id, email;

UPDATE employee
SET name = 'wrong name',
	email = 'wrong mail'
WHERE name LIKE '%l'
RETURNING *;

-- 4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id > 100
RETURNING*;

DELETE FROM employee
WHERE name = 'wrong name'
RETURNING *;

DELETE FROM employee
WHERE email LIKE '%Xx%'
RETURNING *;

DELETE FROM employee
WHERE name ILIKE '%ar'
RETURNING *;

DELETE FROM employee
WHERE email LIKE '%.com'
RETURNING*
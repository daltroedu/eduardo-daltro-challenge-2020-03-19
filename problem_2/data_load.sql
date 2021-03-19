CREATE INDEX idx_buyers_name ON buyers(name);

INSERT INTO
	visibility_settings(name)
VALUES
	('default'),
	('catalog_members');

INSERT INTO
	catalogs(name)
VALUES
	('cars'),
	('motorbikes');

INSERT INTO
	products(name, price, catalog_id, visibility_setting_id)
VALUES
	('Lamborghini', 2000000, 1, 2),
	('Ferrari', 1000000, 1, 2),
	('BMW', 600000, 1, 1),
	('Porsche', 500000, 1, 1),
	('Mercedes Benz', 300000, 1, 1),
	('Kawasaki', 60000, 2, 2),
	('Triumph', 60000, 2, 2),
	('Ducati', 40000, 2, 2),
	('Honda', 30000, 2, 1),
	('Yamaha', 25000, 2, 1);

INSERT INTO
	buyers(name, catalog_id)
VALUES
	('James', 1),
	('Mustaine', 1),
	('Lombardo', 1),
	('Bruce', 2),
	('Angus', 2);
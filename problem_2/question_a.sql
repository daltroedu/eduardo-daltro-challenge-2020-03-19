CREATE TABLE catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE visibility_settings (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	UNIQUE (name)
);

CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price DECIMAL(12,2) NOT NULL,
	catalog_id INTEGER NOT NULL,
	visibility_setting_id INTEGER NOT NULL,
	FOREIGN KEY (catalog_id) REFERENCES catalogs(id),
	FOREIGN KEY (visibility_setting_id) REFERENCES visibility_settings(id)
);

CREATE TABLE buyers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	catalog_id INTEGER NOT NULL,
	FOREIGN KEY (catalog_id) REFERENCES catalogs(id)	
);
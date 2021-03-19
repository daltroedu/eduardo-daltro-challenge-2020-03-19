SELECT
	b.name as buyer,
	p.name as product,
	price,
	p.catalog_id,
	visibility_setting_id
FROM
	products p
INNER JOIN buyers b
	ON p.visibility_setting_id = 1 OR p.catalog_id = b.catalog_id
WHERE
	b.name = 'James'
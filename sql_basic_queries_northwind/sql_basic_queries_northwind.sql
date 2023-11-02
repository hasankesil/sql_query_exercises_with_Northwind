select * from products

-- Write a query to retrieve Product names (ProductName) and quantity per unit (QuantityPerUnit).
SELECT product_name, quantity_per_unit FROM products


SELECT Product_ID, Product_Name FROM Products WHERE Discontinued = 1

SELECT product_id,product_name,unit_price FROM products WHERE unit_price < 20

SELECT product_id,product_name,unit_price FROM products WHERE unit_price BETWEEN 15 AND 25

SELECT product_name, units_on_order,units_in_stock FROM products WHERE units_on_order > units_in_stock

SELECT product_name FROM products WHERE product_name LIKE 'a%'

SELECT product_name FROM products WHERE product_name LIKE '%i'

SELECT product_name, unit_price,unit_price * 1.18 AS unit_price_kdv FROM products

SELECT COUNT(*) FROM products WHERE unit_price > 30

SELECT product_name, unit_price FROM products ORDER BY unit_price DESC,product_name

SELECT COUNT(*) FROM suppliers WHERE region IS NULL

SELECT UPPER('TR' || product_name) FROM products

SELECT UPPER('TR') || product_name FROM products WHERE unit_price < 20

SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 1

SELECT product_Name, Unit_Price FROM Products WHERE Unit_Price > (SELECT AVG(Unit_Price) FROM Products)

SELECT SUM(units_in_stock * unit_price) AS "Total_Price" FROM products

SELECT discontinued COUNT(*) FROM Products GROUP BY Discontinued

SELECT units_in_stock, COUNT(*) FROM Products GROUP BY units_in_stock

SELECT category_id, AVG(unit_price) AS average_unit_price FROM products GROUP BY category_id

SELECT product_name,unit_price,category_id FROM products ORDER BY unit_price DESC LIMIT 1

SELECT prduct_name, category_id, supplier_id FROM products
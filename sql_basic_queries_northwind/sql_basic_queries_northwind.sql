
select * from products

-- Write a query to retrieve Product names (ProductName) and quantity per unit (QuantityPerUnit).

SELECT product_name, quantity_per_unit FROM products

--Write a query to retrieve Product IDs (ProductID) and Product names (ProductName) of discontinued products (Discontinued filtered out).

SELECT Product_ID, Product_Name FROM Products WHERE Discontinued = 1

--Write a query to fetch a list of products with a unit price less than 20 (ProductID, ProductName, UnitPrice).

SELECT product_id,product_name,unit_price FROM products WHERE unit_price < 20

--Write a query to retrieve a list of products with a unit price between 15 and 25 (ProductID, ProductName, UnitPrice).

SELECT product_id,product_name,unit_price FROM products WHERE unit_price BETWEEN 15 AND 25

--Write a query to get a list of products where the units in stock are less than units on order (ProductName, UnitsOnOrder, UnitsInStock).

SELECT product_name, units_on_order,units_in_stock FROM products WHERE units_on_order > units_in_stock

--List products that start with the letter 'a'.

SELECT product_name FROM products WHERE product_name LIKE 'a%'

--List products that end with the letter 'i'.

SELECT product_name FROM products WHERE product_name LIKE '%i'

--Write a query to retrieve a list of product names with their unit prices and unit prices with 18% VAT added (ProductName, UnitPrice, UnitPriceKDV).

SELECT product_name, unit_price,unit_price * 1.18 AS unit_price_kdv FROM products

--How many products have a price greater than 30?

SELECT COUNT(*) FROM products WHERE unit_price > 30

--Convert product names to lowercase and list them in descending order of price.

SELECT product_name, unit_price FROM products ORDER BY unit_price DESC,product_name

--How many suppliers have a NULL value in the Region field?

SELECT COUNT(*) FROM suppliers WHERE region IS NULL

--How many suppliers have a non-NULL value in the Region field?

SELECT COUNT(*) FROM suppliers WHERE region IS NOT NULL

-- Add 'TR' to the beginning of all product names, make them uppercase, and display them.

SELECT UPPER('TR' || product_name) FROM products

--Add 'TR' to the beginning of the names of products with a price less than 20.

SELECT UPPER('TR') || product_name FROM products WHERE unit_price < 20

--Write a query to retrieve the most expensive product (ProductName, UnitPrice).

SELECT product_name, unit_price FROM products ORDER BY unit_price DESC LIMIT 1

--Write a query to retrieve the top ten most expensive products (ProductName, UnitPrice).

SELECT product_Name, Unit_Price FROM Products WHERE Unit_Price > (SELECT AVG(Unit_Price) FROM Products)

--Retrieve a list of products with prices above the average price (ProductName, UnitPrice).

SELECT SUM(units_in_stock * unit_price) AS "Total_Price" FROM products

--Retrieve the counts of active and discontinued products.

SELECT discontinued COUNT(*) FROM Products GROUP BY Discontinued

--Retrieve a list of products with their category names.

SELECT units_in_stock, COUNT(*) FROM Products GROUP BY units_in_stock

--Calculate the average price of products for each category.

SELECT category_id, AVG(unit_price) AS average_unit_price FROM products GROUP BY category_id

--What is the name, price, and category of the most expensive product?

SELECT product_name,unit_price,category_id FROM products ORDER BY unit_price DESC LIMIT 1


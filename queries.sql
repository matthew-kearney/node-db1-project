-- Database Queries

-- Find all customers with postal code 1010

SELECT * FROM Customers 
 where postalcode = '1010';

-- Find the phone number for the supplier with the id 11

SELECT *
 FROM orders
 order by orderdate desc
 limit 10;

-- List first 10 orders placed, sorted descending by the order date

SELECT * FROM Customers 
 where City in ('London', 'Madrid') 
 or Country = 'Brazil';

-- Find all customers that live in London, Madrid, or Brazil

INSERT INTO Customers
 (customerName, contactName, [address], City, postalCode, Country) 
 values('The Shire', 'Bilbo Baggins', '1 hobbit-hole', 'Bag End', '111', 'Middle Earth');

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

UPDATE customers set PostalCode = 11122 
 WHERE ContactName = 'Bilbo Baggins'

-- Update Bilbo Baggins record so that the postal code changes to "11122"

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name

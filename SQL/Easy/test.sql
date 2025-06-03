-- Problem: 175. Combine Two Tables
-- Link: https://leetcode.com/problems/combine-two-tables/
-- Approach: LEFT JOIN

SELECT FirstName, LastName
FROM Customers
LEFT JOIN Orders ON Customers.Id = Orders.CustomerId;

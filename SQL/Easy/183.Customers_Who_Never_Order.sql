-- Problem: 183. Customers Who Never Order
-- Link: https://leetcode.com/problems/customers-who-never-order/
-- Approach: Use LEFT JOIN to find customers without matching orders

SELECT c.name
FROM Customer c
LEFT JOIN Orders o
  ON c.id = o.customerId
WHERE o.customerId IS NULL;

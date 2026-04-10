-- Problem: 175. Combine Two Tables
-- Link: https://leetcode.com/problems/combine-two-tables/
-- Approach: LEFT JOIN Persons with Addresses to include all persons and their address info if available

SELECT p.id,
       p.firstName,
       p.lastName,
       a.city,
       a.state
FROM Person p
LEFT JOIN Address a
  ON p.id = a.personId;

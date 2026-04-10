-- Problem: 1965. Employees With Missing Information
-- Link: https://leetcode.com/problems/employees-with-missing-information/
-- Approach: Use LEFT JOIN + UNION to find rows that exist in only one of the two tables

-- Select employee IDs that exist in only one of the two tables: Employees or Salaries
SELECT e.employee_id
FROM Employees e
LEFT JOIN Salaries s
  ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Salaries s
LEFT JOIN Employees e
  ON e.employee_id = s.employee_id
WHERE e.employee_id IS NULL

ORDER BY employee_id;

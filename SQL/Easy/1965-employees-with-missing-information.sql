-- Problem: 1965. Employees With Missing Information
-- Link: https://leetcode.com/problems/employees-with-missing-information/
-- Approach: Use FULL OUTER JOIN to find rows that exist in only one of the two tables

-- Select employee IDs that exist in only one of the two tables: Employees or Salaries
SELECT 
COALESCE(e.employee_id, s.employee_id) AS employee_id -- Pick the non-null ID from either table
FROM Employees e
FULL OUTER JOIN Salaries s
  ON e.employee_id = s.employee_id -- Match by employee_id
WHERE 
  e.employee_id IS NULL OR    -- Row came only from Salaries (no match in Employees)
  s.employee_id IS NULL -- Row came only from Employees (no match in Salaries)
ORDER BY employee_id;  -- Sort the results in ascending order
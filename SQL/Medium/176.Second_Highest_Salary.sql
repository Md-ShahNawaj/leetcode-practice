-- Problem: 176. Second Highest Salary
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/second-highest-salary/

-- Table: Employee(id INT, salary INT)

-- Goal:
-- Return the second highest distinct salary from the Employee table.
-- If no second highest salary exists, return NULL.

-- Approach:
-- 1. First find the highest salary using a subquery: (SELECT MAX(salary) FROM Employee)
-- 2. Then get the highest salary that is *less than* that max — this gives us the second highest.
-- 3. Use MAX again to return a single value.

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary) FROM Employee
);

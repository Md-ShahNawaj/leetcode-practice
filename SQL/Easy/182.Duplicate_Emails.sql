-- Problem: 182. Duplicate Emails
-- Link: https://leetcode.com/problems/duplicate-emails/
-- Approach: Group by email and keep only duplicates

SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

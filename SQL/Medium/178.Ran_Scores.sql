-- Problem: 178. Rank Scores
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/rank-scores/

-- Table: Scores(id INT, score DECIMAL)

-- Goal:
-- Assign a rank to each score, ordered from highest to lowest.
-- If multiple rows have the same score, they should share the same rank.

-- Approach:
-- Use the DENSE_RANK() window function to rank scores in descending order.
-- DENSE_RANK ensures no gaps in rank values for ties (e.g., 1, 2, 2, 3).

SELECT
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores;

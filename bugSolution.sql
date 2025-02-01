To address NULL comparisons, use the `IS NULL` operator instead of `=`.  To handle NULLs in aggregate functions, use functions like `COALESCE` to replace NULLs with a suitable value (e.g., 0) before performing calculations.  For example:

-- Problematic query
SELECT AVG(salary) FROM employees WHERE department = 'Sales';

-- Corrected query
SELECT AVG(COALESCE(salary, 0)) FROM employees WHERE department = 'Sales';

-- Problematic NULL comparison
SELECT * FROM employees WHERE manager_id = NULL;

--Corrected NULL comparison
SELECT * FROM employees WHERE manager_id IS NULL;
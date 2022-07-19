
--Runtime: 1482 ms, faster than 6.04% of MySQL online submissions for Calculate Special Bonus.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Calculate Special Bonus.
select
    employee_id,
    case
        when mod(employee_id,2)=1 and name not like "M%" then salary
        else 0
    end as bonus
from Employees
order by employee_id asc


--Runtime: 880 ms, faster than 28.01% of MySQL online submissions for Calculate Special Bonus.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Calculate Special Bonus.
select
    employee_id,
    if ((substr(name,1,1)!='M') & (employee_id%2=1), salary, 0) bonus
from Employees
order by employee_id


--Runtime: 680 ms, faster than 44.33% of MySQL online submissions for Calculate Special Bonus.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Calculate Special Bonus.
SELECT
    employee_id,
    salary AS bonus
FROM Employees
WHERE MOD (employee_id, 2) = 1 AND lower(name) NOT LIKE 'm%'
UNION
SELECT
    employee_id,
    salary*0 AS bonus
FROM Employees
WHERE MOD (employee_id, 2) = 0 OR lower(name) LIKE 'm%'
ORDER by employee_id ASC;


--Runtime: 603 ms, faster than 62.82% of MySQL online submissions for Calculate Special Bonus.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Calculate Special Bonus.
SELECT
    employee_id,
    salary AS bonus
FROM Employees
WHERE (substr(name,1,1)!='M') & (employee_id%2=1)
UNION
SELECT
    employee_id,
    salary*0 AS bonus
FROM Employees
WHERE (substr(name,1,1)='M') | (employee_id%2=0)
ORDER by employee_id ASC;


--Runtime: 468 ms, faster than 14.72% of MySQL online submissions for Swap Salary.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Swap Salary.
update Salary
set sex = case
            when sex!='m' then 'm'
            else 'f'
        end

--Runtime: 445 ms, faster than 16.85% of MySQL online submissions for Swap Salary.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Swap Salary.
update Salary
set sex = case sex
            when 'm' then 'f'
            else 'm'
        end


--Runtime: 293 ms, faster than 45.19% of MySQL online submissions for Swap Salary.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Swap Salary.
update salary set sex = if (sex = "m", "f", "m");


--Runtime: 357 ms, faster than 30.23% of MySQL online submissions for Swap Salary.
--Memory Usage: 0B, less than 100.00% of MySQL online submissions for Swap Salary.
update salary set sex = CHAR(ASCII('m') + ASCII('f')- ASCII(sex))


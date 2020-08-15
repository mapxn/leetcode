--
-- @lc app=leetcode id=596 lang=mysql
--
-- [596] Classes More Than 5 Students
--

-- @lc code=start
# Write your MySQL query statement below
with t1 as (
    select
         class
        ,count(1) as cnt
    from (
        select
            *
        from courses
        group by 1,2
    ) t0
    group by class
)
select
    class
from t1
where cnt >= 5;
-- @lc code=end


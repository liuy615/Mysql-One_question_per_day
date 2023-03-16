# 题目37
# 37、查询课程不及格的学生

# 思路：
	1. 不及格的学生：是一门不及格就认定为不及格还是全部不及格视为不及格

# 解题：
select *
from student
where s_id in (
	select s_id
	from score
	where s_score<60
	group by s_id);

# 小结：
	1. 连续不出错第一题
	2. 这里查询的是有一门不及格的学生
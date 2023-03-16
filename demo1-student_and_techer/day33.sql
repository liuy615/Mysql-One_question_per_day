# 题目33
# 33、查询平均成绩大于等于85的所有学生的学号、姓名和平均成绩

# 思路：
	1. 分组

# 解题：
select st.s_id, st.s_name,平均成绩
from student st inner join (
	select s_id,avg(s_score) 平均成绩
	from score
	group by s_id) sc
on st.s_id = sc.s_id
where 平均成绩 >=85;

# 小结：
	1. 连续不出错第8题
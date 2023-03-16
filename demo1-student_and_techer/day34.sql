# 题目34
# 34、查询课程名称为"数学"，且分数低于60的学生姓名和分数

# 思路：
	1. 联表或者子查询都可以

# 解题：
select st.s_name, sc.s_score
from student st inner join (
	select s_id,s_score
	from score
	where s_score<60 and c_id in (
		select c_id
		from course
		where c_name = "数学")) sc 
on st.s_id=sc.s_id;


# 小结：
	1. 连续不出错第9题
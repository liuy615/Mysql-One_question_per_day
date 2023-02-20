# 题目24
# 24、查询学生平均成绩及其名次

# 思路：
	1. 名次需要用到开窗函数的order by
	2. 平均成绩用group by函数

# 解题：
select irank,sc.s_id,st.s_name,平均成绩
from student st
right join (
	select s_id,round(avg(s_score), 2) 平均成绩,
	row_number() over(order by avg(s_score) desc) as irank
	from score
	group by s_id) as sc on st.s_id=sc.s_id;


# 小结：
	1. select查询的必须是表里面有的字段
	2. 聚合函数的字段需要注意是否group by
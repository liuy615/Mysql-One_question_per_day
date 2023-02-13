# 题目16
# 检索"01"课程分数小于60，按分数降序排列的学生信息

# 思路：
	1.查询01课程小于60的数据
	2.联表，以课程表为主表
	3.降序排列

# 解题：
select st.*,sc.s_score 
from student st
inner join (select * 
	from score 
	where c_id=01 and s_score<60) sc 
on sc.s_id= st.s_id
order by sc.s_score desc;

# 时间复杂度：student表一次，score一次
# 小结：
	1. order by 排序函数的使用

# 题目5
# 5、查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩

# 思路：
	1. 首先时联表操作，学生表，课程表
	2. group by的使用，选课总数就是计算分组中有多少列

# 解题：
select st.s_id,st.s_name,选课总数,总成绩
from student st left join 
	(select s_id,count(s_id) 选课总数, sum(s_score) 总成绩 from score group by s_id) sc
	on st.s_id=sc.s_id
;

# 总结：
	1. 简单的联表操作
	2. 简单的group by 使用
	3. 简单的聚合函数使用

# 题目14
# 14、查询没学过"张三"老师讲授的任一门课程的学生姓名

# 思路：
	1. 查询学过张三老师课的s_id
	2. 排除这些s_id 就可以了

# 解题：
select * from student where s_id not in (
	select s_id from score where c_id in (
		select c_id from course where t_id=(
			select t_id from teacher where t_name="张三")));

# 时间复杂度：四张表各查一次
#小结：
	1. 当遇到正面不好结的题目时，可以考虑从反方向解题
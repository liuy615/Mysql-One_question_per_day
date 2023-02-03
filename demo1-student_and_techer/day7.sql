# 题目七
# 7、查询学过"张三"老师授课的同学的信息

# 思路：
	1. 张三老师在teacher表中，学生在student表中，两个表没有联系
	2. 学生表和成绩表有联系，成绩表和课程表有联系，课程表和教师表有联系
	3. 所以需要连接四张表查询

# 解题：
select * from student where s_id in
	(select s_id from score where c_id in
		(select c_id from course where t_id in
			(select t_id from teacher where t_name="张三")));



# 小结：
	1. 子查询的多层嵌套使用
	2. 在条件筛选时，应该用 in 关键字，而不是用 = ，因为=只能接收一个值
	3. 这题除了用子查询多层嵌套，还可以用多层联表查询


# 多表连接查询解题：
select * from student st left join
	score sc on st.s_id=sc.s_id left join 
		course co on sc.c_id=co.c_id left join
			teacher te on co.t_id=te.t_id
where te.t_name="张三";
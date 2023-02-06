# 题目8
# 8、查询没学过"张三"老师授课的同学的信息

# 思路：
	1. 没学过张三老师课可以是把全部表连起来，查询t_name是张三的数据
	2. 然后查询s_id不在刚才表中的数据

# 解题：
select * from student where s_id not in
	(select st.s_id
	from student st left join score sc on st.s_id=sc.s_id
		left join course co on sc.c_id=co.c_id
		left join teacher te on co.t_id=te.t_id
	where te.t_name="张三");

# 小结：
	1. 合理利用 not in 等反向思维

# 题目25
# 25、查询各科成绩前三名的记录

# 思路：
	1. 开窗函数对科目分组，成绩排序
	2. 再用where筛选irank<3的值

# 解题：
select sc.* from( 
	select s_id,c_id,s_score,
	row_number() over(partition by c_id order by s_score desc) irank
	from score) sc
where irank<=3;


# 小结：
	1. 每个子查询都必须有自己的别名
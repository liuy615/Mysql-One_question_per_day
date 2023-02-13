# 题目13
# 13、查询和"01"号的同学学习的课程完全相同的其他同学的信息

# 思路：
	1.查询出学号为1的同学学过c_id，一共有几个课程
	2.子查询查询出学过01同学课程的c_id,并且所学课程数相同的s_id
	
# 解题：
select * from student where s_id in (
	select s_id from score where (c_id in (
		select c_id from score where s_id=01)) and (s_id !=01)
	group by s_id
	having count(s_id)=(
		select count(c_id) from score where s_id=01));


# 时间复杂度：查询score表3次，student表1次
# 小结：
	1. where----group by ----having 顺序不能搞错
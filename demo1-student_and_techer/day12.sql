# 12题
# 12、查询至少有一门课与学号为"01"的同学所学相同的同学的信息

# 思路：
	1.先查出学号为01同学的c_id
	2.用子查询查询学过该门课的同学

# 解题：

select * from student where s_id in (
	select s_id from score where (c_id in (
		select c_id from score where s_id=01))
	and (s_id!=01));

# 时间复杂度：查询student表一次，score表2次

# 小结：
	1.写完sql需要检查一便，不要出错
	2.查询时间复杂度尽量低，运行速度才会块
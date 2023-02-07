# 题目10
# 10、查询学过编号为"01"但是没有学过编号为"02"的课程的同学的信息

# 思路：
	1.查询出学过编号01的s_id,和没有学过编号为02的s_id
	2.

# 解题：
select * from student
where (s_id in (select s_id from score where c_id="01"))
	and (s_id not in (select s_id from score where c_id="02"));

# 小结：
	1.联表操作也不是全能的，而且联表操作也是更费时间和内存的
	2.所以在查询之前应该要想清楚是否需要联表
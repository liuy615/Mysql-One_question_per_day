# 题目9
# 查询学过编号为"01"并且也学过编号为"02"的课程的同学信息

# 思路：
	1.先查询出学过01的学生id和学过02的学生id
	2.再用where 中的and连接起来

# 解题：
select s_id from score where c_id="01"


select * from student
where (s_id in (select s_id from score where c_id="01") )
	and (s_id in (select s_id from score where c_id="02"));


# 另一种思路：
	1. 利用in 的特性，可以查询组数中任意满足条件的数据
	2.如果满足多个条件，会返回多个s_id，在对s_id分组聚合，求出分组=2的s_id

# 解题：
select * from student where s_id in
	(select s_id from score where c_id in (1,2)
	group by s_id having count(s_id)=2);
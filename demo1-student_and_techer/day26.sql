# 题目26
# 26、查询每门课程被选修的学生数

# 思路：
	1. 对课程进行分组，计数

# 解题：
select co.c_id,co.c_name,选修人数
from course co 
inner join (
	select c_id,count(*) 选修人数
	from score
	group by c_id) sc on co.c_id=sc.c_id;


# 为了保证在企业中书写sql时不出错，所以我们在练习的时候要检查，达到不出错的地步
# 小结：
	1. 连续正确第一题
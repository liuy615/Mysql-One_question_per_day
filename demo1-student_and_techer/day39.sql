# 题目39
# 39、求每门课程的学生人数

# 思路：
	1. 分组聚合

# 解题：
select c_id, count(c_id)
from score
group by c_id;

# 小结：
	1. 连续不出错第3题
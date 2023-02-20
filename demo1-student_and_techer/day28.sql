# 题目28
# 28、查询男生、女生人数

# 思路：
	1. 分组，计数， 查询

# 解题：
select s_sex,count(*) 人数
from student
group by s_sex;

# 小结：
	1. 连续不出错第3题
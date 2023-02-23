# 题目30
# 30、查询同名同性学生名单，并统计同名人数

# 思路：
	1. 我想到的办法是对名字group by 然后count()>1的

# 解题：
select s_name,count(s_id) 人数
from student
group by s_name
having count(s_id)>1;

# 小结：
	1. 连续不出错第5题
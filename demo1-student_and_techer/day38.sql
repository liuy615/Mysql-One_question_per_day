# 题目38
# 38、查询课程编号为01且课程成绩在80分以上的学生的学号和姓名

# 思路：
	1. 多条件查询

# 解题：
select s_id,s_name
from student 
where s_id in (
	select s_id
	from score
	where c_id=01 and s_score>=80);

# 小结：
	1. 连续不出错第2题
	2. 80分以上不包括80，应该为空值
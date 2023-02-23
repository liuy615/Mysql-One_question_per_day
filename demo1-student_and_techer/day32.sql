# 题目32
# 32、查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列

# 思路：多条件排序，第一个降序第二个升序


# 解题：
select c_id,avg(s_score)
from score
group by c_id
order by avg(s_score) desc,c_id;

# 小结：
	1. 连续不出错第7题
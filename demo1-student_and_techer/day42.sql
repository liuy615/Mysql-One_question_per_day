# 题目42
# 42、查询每门课程成绩最好的前三名

# 思路：
	1. 分组排序需要用开窗函数

# 解题：
select c_id, s_score, irank,s_id
from (
	select *,row_number() over(partition by c_id order by s_score desc) as irank
	from score) t
where irank<=3;

# 小结：
 	1. 开窗函数的使用
	2. 开窗函数查询到的通常需要子查询然后查询需要的值
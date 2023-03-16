# 题目36
# 36、查询任何一门课程成绩在70分以上的学生姓名、课程名称和分数

# 思路：
	1. 联表操作
	2. 子查询找到成绩70以上的s_id

# 解题：
select st.s_name, co.c_name, sc.s_score
from student st inner join (select s_id, s_score, c_id from score where s_score>70) sc on st.s_id=sc.s_id
inner join course co on sc.c_id = co.c_id;


# 小结：
	1. 如果重点是任意一门成绩大于70的学生就需要分组
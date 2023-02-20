# 题目27
# 27、查询出只有两门课程的全部学生的学号和姓名

# 思路：
	1. 分组，对s_id分组
	2. 对分组计数，筛选出=2的数据
	3. 联表

# 解题：
select st.s_id,st.s_name
from student st
inner join (
	select s_id,count(*) 选课数
	from score
	group by s_id) sc on st.s_id=sc.s_id
where 选课数=2;

# 小结：
	1. 连续不出错2题
	2. 联表，group by 的使用
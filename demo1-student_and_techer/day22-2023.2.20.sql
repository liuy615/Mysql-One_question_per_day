# 题目22
# 22、查询所有课程的成绩第2名到第3名的学生信息及该课程成绩

# 思路：
	1. 首先可以看出是一个分组+排序的问题，选择开窗函数
	2. 对课程分组，然后排序，再联表

# 解题：
select st.*,sc.c_id,irank
from student st
right join (
	select *,
	row_number() over(partition by c_id order by s_score desc) as irank
	from score) as sc on st.s_id=sc.s_id
where irank in (2,3);

# 小结：
	1. in 里面是接的（）而不是[]
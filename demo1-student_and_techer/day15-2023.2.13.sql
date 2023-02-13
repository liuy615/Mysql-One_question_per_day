# 题目15
# 15、查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩

# 思路：
	1. 查询不及格的课程进行分组
	2. 筛选出分组大于2的s_id
	3. 再查询出不及格的同学的平均成绩
# 解题：
select st.s_id,avg(sc.s_score) 平均成绩
from student st 
inner join score sc on st.s_id=sc.s_id 
where st.s_id in(
	select s_id 
	from score 
	where s_score<60 
	group by s_id
	having (count(s_id)=2) or (count(s_id)>2))
group by st.s_id; 

# 时间复杂度：查询score表2次，student表1次

# 小结：
	1. group by 有问题，只能查询group by的字段和统计字段，但是s_name这种字段应该可以查询的
	2. 加深子查询的关联查询的理解。


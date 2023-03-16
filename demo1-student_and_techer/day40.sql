# 题目40
# 40、查询选修"张三"老师所授课程的学生中，成绩最高的学生信息及其成绩

# 思路：
	1. 查询张三老师课的c_id
	2. 赛选出成绩最高的学生

# 解题：
select st.*,s_score
from student st right join (
select s_id,s_score
from score
where c_id=(
	select c_id
	from course
	where t_id = (
		select t_id
		from teacher
		where t_name="张三"))
order by s_score desc
limit 1) sc on st.s_id = sc.s_id;

# 小结：
	1. 不用group by的情况下不能使用max，聚合等函数
	2. 想要查询最大值，只能排序然后用limit限制查询
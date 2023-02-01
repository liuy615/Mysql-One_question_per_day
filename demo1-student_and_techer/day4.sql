# 题目4
# 4、查询平均成绩小于60分的同学的学生编号和学生姓名和平均成绩(包括有成绩的和无成绩的)
# 思路：
	1. 查询和题目3相差不多，但是注意需要显示出没有成绩的信息
	2. 以学生表作为主表，去连接成绩表，就算成绩表没有信息也会显示

# 解题：
select st.s_id,st.s_name,avg_score
from student st left join 
	(select s_id,avg(s_score) as avg_score from score group by s_id) sc
	on st.s_id=sc.s_id
where avg_score is null or avg_score<60;

# 总结：
	1. 子查询时，不要漏掉关键列，比如需要的列和连接列
	2. 多条件查询时，在where中用or连接
	3. 使用group by 后不能接where，只能使用having做聚合条件筛选

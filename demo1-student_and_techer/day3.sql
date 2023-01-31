# 题目三
# 3、查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩

# 思路：
	1.两张表考虑联表操作
	2.每个同学的平均成绩考虑分组，group by

# 解题：
select st.*,avg_score
from student st inner join
	(select s_id,avg(s_score) as avg_score from score group by s_id) sc on st.s_id=sc.s_id
where avg_score>60 or avg_score=60;


# 总结：
	1. where中的条件只能一个一个写，不能写>=
	2. 多表连接时需要注意如果有相同的列名，需要指明是哪个表的，不然会报错
	3. 使用group by时需要注意只能查询聚合函数使用，不能单独查询某个值
	4. group by 可以配合 avg()，sum()，等聚合函数使用
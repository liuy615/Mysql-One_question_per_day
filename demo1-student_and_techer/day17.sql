# 做到先构思，在解题，最后检验，要做到语法一次不错，尽量加快查询速度

# 那么我们开始今天的练习吧！
# 题目17
# 17、按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩

# 思路：
	1. 第一点是需要通过分组求平均值，并按照平均值排序
	2. 以该表作为主表连接score表，展示所有成绩

# 解题：


select s1.s_id,s1.平均成绩,s2.c_id,s2.s_score
from (
	select  s_id,avg(s_score) 平均成绩
	from score
	group by s_id
	order by 平均成绩 desc
	) s1 left join score s2 on s1.s_id=s2.s_id



# 行列转换 case 字段 when 判断 then 取值 else 取值 end
select
	st.s_id,
	ifnull(round(avg(s_score),2),0) as 平均成绩,
	sum(case c_id when 1 then s_score else 0 end) as 语文,
	sum(case c_id when 2 then s_score else 0 end) as 数学,
	sum(case c_id when 3 then s_score else 0 end) as 英语
from student st
left join score sc on st.s_id=sc.s_id
group by st.s_id
order by 平均成绩 desc;


# 小结：
	1. case when then else end 的用法
	2. ifnull()函数的用法

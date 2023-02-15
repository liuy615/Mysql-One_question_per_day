# 题目21
# 21、查询不同老师所教不同课程平均分从高到低显示

# 思路：
	1. group by 老师和课程

# 解题：
select te.t_name,co.c_name,round(avg(sc.s_score),2) 平均成绩
from teacher te
inner join course co on te.t_id=co.t_id
inner join score sc on sc.c_id=co.c_id
group by te.t_name,co.c_name
order by avg(sc.s_score) desc; 

# 小结：
	1. 多条件的分组，没有难度
# 题目18
# 查询各科成绩最高分、最低分和平均分，以如下形式显示：
课程ID，课程name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
– 及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90

# 思路：
	1. 首先是分组函数group by
	2. 其次是case when then else end 的用法

select 
c_id, max(s_score) 最大值,min(s_score) 最小值,avg(s_score) 平均值,
concat(round(sum(case when s_score >= 60 then 1 else 0 end) / count(*) * 100, 2), '%') as 及格率,
concat(round(sum(case when s_score between 70 and 80 then 1 else 0 end) / count(*) * 100,2),"%") as 中等率,
concat(round(sum(case when s_score between 80 and 90 then 1 else 0 end) / count(*)*100,2),"%") as 优良率,
concat(round(sum(case when s_score >=90 then 1 else 0 end)/count(*)*100,2),"%") as 优秀率
from score
group by c_id;

# 小结：
	1. 在case函数结合聚合函数和逻辑函数的使用

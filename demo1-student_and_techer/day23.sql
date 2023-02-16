# 题目23
# 23、统计各科成绩各分数段人数：课程编号,课程名称,[100-85],[85-70],[70-60],[0-60]及所占百分比

# 思路：
	1. 初步想法应该是case when then else end方法
	2. 但是需要分组，可以直接分组，然后用case方法

# 解题：
select co.c_id,co.c_name,
sum(case when s_score between 85 and 100 then 1 else 0 end) as '[100-85]',
sum(case when s_score between 85 and 100 then 1 else 0 end) / count(*) as 百分比,
sum(case when s_score between 70 and 85 then 1 else 0 end) as '[100-85]',
sum(case when s_score between 70 and 85 then 1 else 0 end) / count(*) as 百分比,
sum(case when s_score between 60 and 70 then 1 else 0 end) as '[100-85]',
sum(case when s_score between 60 and 70 then 1 else 0 end) / count(*) as 百分比,
sum(case when s_score between 0 and 60 then 1 else 0 end) as '[100-85]',
sum(case when s_score between 0 and 60 then 1 else 0 end) / count(*) as 百分比
from score sc
inner join course co on sc.c_id=co.c_id
group by co.c_id,co.c_name;

# 小结：
	1. 对case when 的详细了解
	2. as后需要接字符串或者数字，不能接列表
	3. group by 后面可以使用case when 相当于聚合函数
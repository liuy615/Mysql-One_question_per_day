# 题目6
# 6、查询"李"姓老师的数量

# 思路：
	1. 简单的一个模糊匹配查询
	2. like的使用

# 解题：
select count(*) as 李姓老师数量
from teacher
where t_name like "李%"

# 小结：
	1. 模糊匹配的通配符：
	2. 聚合函数的使用：count(*),查询有多少条数据
# 题目31
# 31、查询1990年出生的学生名单

# 思路：
	1. 时间序列函数的使用
	2. year()返回对应时间的年份

# 解题：
select *
from student
where year(s_birth)=1990;

# 小结：
	1. 连续不出错练习第6题
	2. 时间序列函数year()可以返回对应年份
	3. 除了year(),还有month(),day(),quarter(),week()
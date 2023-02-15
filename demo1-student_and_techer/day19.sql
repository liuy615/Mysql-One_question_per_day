# 题目19
# 按各科成绩进行排序，并显示排名

# 思路：
	1. 从题中提取到分组，排序。可以考虑使用开窗函数
	2. 开窗函数作为子表需要查到排名
	3. 然后连到主表上

# 解题：
select st.s_name ,sc.*
from student st 
right join(
	select *,
	row_number() over(partition by c_id order by s_score desc) as rank1
	from score) as sc on st.s_id=sc.s_id;

# 小结：
	1. 开窗函数rank(),row_number(),dense_number()的使用
	2. rank是关键字，不可用于别名设置
	3. 开窗函数查询的表一般作为子表，排序完成之后再用子查询或者联表操作
	4. 在联表操作的时候，注意应该是开窗函数的表作为主表
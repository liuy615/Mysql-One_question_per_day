# 题目35
# 35、查询所有学生的课程及分数情况

# 思路：
	1. 联表
	2. 所有学生，所以应该以学生表作为主表
	3. 用case when then编写

# 解题：
select st.s_id,
	sum(case c_id when 1 then s_score else 0 end) as 语文,
	sum(case c_id when 2 then s_score else 0 end) as 数学,
	sum(case c_id when 3 then s_score else 0 end) as 英语
from student st left join score sc on st.s_id=sc.s_id
group by st.s_id;

# 小结：
	1. case when then end 使用不熟练
	2. 这个语法可以用来对分组里面的数据进行操作，也可以进行行列转换

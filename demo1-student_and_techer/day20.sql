# 题目20
# 查询学生的总成绩并进行排名

# 思路：
	1. 我有一种思路，对学生group by，再对成绩求和，然后排序
	2. 开窗函数的思路： group by s_id order by sum(s_score) dese 

# 普通解法：
select st.*,sc.总成绩
from student st 
left join(
	select s_id, sum(s_score) 总成绩
	from score 
	group by s_id) sc on st.s_id=sc.s_id
order by sc.总成绩 desc;

# 开窗函数解法：
select sc.irank,sc.s_id,st.s_name,总成绩
from student st
right join (
select s_id,sum(s_score) 总成绩,
row_number() over(order by sum(s_score) desc) as irank
from score
group by s_id) sc on st.s_id=sc.s_id;


# 小结： 
	1. 开窗函数可以多一列排名，而普通order by函数只是排序
	2. 开窗函数可以和group by函数一起使用，互相不影响
	3. 还是需要掌握好各种函数和注意不要语法出错，写完需要检查一下
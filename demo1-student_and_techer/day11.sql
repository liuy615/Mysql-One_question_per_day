# 题目11
# 11、查询没有学全所有课程的同学的信息

# 思路：
	1. 我第一想到的就是分组聚合，然后统计count(*)是否等于课程总数
	2. 所以需要先计算出有多少课程

# 解题：
select * from student where s_id not in
	(select s_id from score 
	group by s_id
	having count(*)=(select count(*) from course));

# 小结：
	1.group by的用法
	2.mysql5.7版本更新之后，group by统计的列也是查询的列
	3.在查询score表时，没有s_id=8的学生，所以将她漏掉了
	4.在查询时应该要考虑到细节，防止漏掉重要数据。
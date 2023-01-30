第一题
1、查询"01"课程比"02"课程成绩高的学生的信息及课程分数







思路：
	1.同一张表中不同列为条件进行比较筛选，应该想到查询出不同的条件单独作为临时表然后联表查询进行比较
	2.筛选出课程1的成绩，然后在筛选出课程2的成绩，两张临时表进行连接
	3.联表时考虑内连接还是外连接还是全连接。
代码：
select st.*,sc.score1,sc.score2
from student  st right join 
	(select s1.s_id,s1.s_score score1,s2.s_score score2
		from (select * from score where c_id="01")  s1 inner join (select * from score where c_id="02") s2
		on s1.s_id=s2.s_id
		where s1.s_score>s2.s_score) sc
	on st.s_id=sc.s_id;
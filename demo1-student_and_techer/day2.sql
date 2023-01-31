# 题目2
# 2、查询"01"课程比"02"课程成绩低的学生的信息及课程分数


# 第二种思路
  1.首先我们比较确定的就是在同一张表中不同列作为条件比较需要进行联表
  2.那么竟然需要联表，我们就直接采用三张表连接为一张大的临时表包含我们需要的所有信息，直接查询即可
  3.好处就是只需要做一次连表操作，不用子查询操作，坏处就是当表中无用数据过大时会比子查询速度慢。



# 解题：
select st.*,sc1.s_score as score1,sc2.s_score as score2
from student st inner join
  (select * from score where c_id=01) sc1 on st.s_id=sc1.s_id
  inner join
  (select * from score where c_id=02) sc2 on st.s_id=sc2.s_id
where sc1.s_score<sc2.s_score;

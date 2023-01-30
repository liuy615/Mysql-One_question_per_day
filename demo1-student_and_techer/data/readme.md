 # 这个文件用于保存项目需要用到的数据
### 图片中是数据库建立好之后各个表之间的关系
## 1. 创建数据库

```
drop database if exists mysql_test cascade;
create database demo_student;
use demo_student;
```

## 2. 学生表
### 创建学生表
```
create table student (
    s_id int,
    s_name varchar(8),
    s_birth date,
    s_sex varchar(4)
);
```
### 插入数据
```
insert into student (s_id,s_name,s_birth,s_sex) values 
(1,'赵雷','1990-01-01','男'),
(2,'钱电','1990-12-21','男'),
(3,'孙风','1990-05-20','男'),
(4,'李云','1990-08-06','男'),
(5,'周梅','1991-12-01','女'),
(6,'吴兰','1992-03-01','女'),
(7,'郑竹','1989-07-01','女'),
(8,'王菊','1990-01-20','女');
```
## 3. 课程表
### 创建课程表
```
create table course (
    c_id int,
    c_name varchar(8),
    t_id int
);
```
### 插入数据
```
insert into course values
(1,'语文',2),
(2,'数学',1),
(3,'英语',3);
```
## 4. 分数表
### 创建分数表

```
create table score (
    s_id int,
    c_id int,
    s_score int
);
```
### 插入数据
```
insert into score values
(1,1,80),
(1,2,90),
(1,3,99),
(2,1,70),
(2,2,60),
(2,3,65),
(3,1,80),
(3,2,80),
(3,3,80),
(4,1,50),
(4,2,30),
(4,3,40),
(5,1,76),
(5,2,87),
(6,1,31),
(6,3,34),
(7,2,89),
(7,3,98);
```
## 5. 教师表
### 创建教师表
```
create table teacher (
    t_id int,
    t_name varchar(8)
);
```
### 插入数据
```
insert into teacher values
(1,'张三'),
(2,'李四'),
(3,'王五');
```

## 6. 各表关系图
![image](https://user-images.githubusercontent.com/87409672/215433875-d7c29d42-31be-4279-a3bd-1ffd6dc0ed66.png)


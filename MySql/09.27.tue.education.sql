use education;

# 전체 교수 리스트 출력
select * from professor;
# 서울사는 교수 몇명?
select count(*) from professor where paddress = '서울';
# 전체 교수 리스트를 이름 오름차순으로 정렬하여 출력
select * from professor order by pname asc;
# 전체 교수 리스트를 이름 내림차순으로 정렬하여 출력
select * from professor order by pname desc;
# 전체 교수 리스트를 학과별로 정렬하고 이름순으로 정렬하여 출력
select * from professor order by pdept, pname;
# 국문학과 교수 리스트를 이름 순서로 출력
select * from professor where pdept = '국문학과' order by pname;
# 각 학과별 교수는 몇명인지 구하기
select pdept, count(*) from professor group by pdept;
# Like 검색 - 김씨 성의 교수이름만 출력
select * from professor where pname like '김%';
# 김이 들어간 교수이름만 출력
select * from professor where pname like '%김%';

# MySQL 과목을 강의하는 교수의 이름, 전화번호와 강의실을 검색
select p.pname, p.pphone, c.croom
from professor as p, course c, lecture l
where c.cname = 'MYSQL' and
c.ccode = l.lccode and l.lpcode = p.pcode;

# 김구 교수님이 강의하는 과목명, 강의시간과 강의실을 검색
select p.pname, c.cname, c.ctime, c.croom
from professor as p, course c, lecture l
where p.pname = '김구' and
c.ccode = l.lccode and p.pcode = l.lpcode;

# 각 학생이 수강 신청한 과목에 대해서 학생이름, 과목명, 강의실, 강의시간을 검색
select s.sname, c.cname, c.croom, c.ctime
from student as s, course c, register r
where c.ccode = r.rccode and s.scode = r.rscode;

#
select * from course;
select sum(ctime) from course; # ctime의 합계
select avg(ctime) from course; # ctime의 평균
select count(ctime) from course;
select count(*) from course;

# 각 학생이 신청한 총 학점을 검색 (학생이름, 전공, 신청학점 합계)
select s.sname, s.sdept, sum(r.score)
from student s, register r
where s.scode = r.rscode group by s.scode;

# 김구 교수님의 이름을 하은용 교수님으로 변경하기
select * from professor;
update professor
set pname = '하은용'
where pcode = 'p001';

# 강의 시간이 2인 과목들의 강의시간을 한시간 증가시키고 강의실을 Lab1으로 변경
select ctime, croom from course;

update course
set ctime = ctime + 1, croom = 'Lab1'
where ctime = 2;
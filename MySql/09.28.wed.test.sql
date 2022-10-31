use test;

select max(daily_typing_pages) from employee_tbl;

# employee_tbl 에서 최대 타이핑 페이지를 출력한다.(이름별 / name, typing pages)
select name, max(daily_typing_pages)
from employee_tbl
group by name;

select sqrt(3); # 루트3

select sin(45); 

select rand(); # 랜덤 출력

select * from employee_tbl order by rand(); # 랜덤으로 정렬

select concat(id, name, workdate) from employee_tbl; # 테이블을 합쳐서 보여준다

select adddate('2002-01-12', interval 31 day); # 지정 날짜에 31일 더해서 출력
select adddate('2002-01-12', 31);
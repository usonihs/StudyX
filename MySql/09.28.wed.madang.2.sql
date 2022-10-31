use madang;

# 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이를 출력
select c.name, b.bookname, b.price, (b.price - o.saleprice)
from customer as c, book b, orders o
where c.name = '박지성' and c.custid = o.custid and b.bookid = o.bookid;

# 마당 도서의 총 갯수?
select count(bookid)
from book;

# 모든 고객의 이름, 주소 출력하기
select name, address
from customer;

# 2014년 7월4일부터 7월7일 사이에 주문 받은 도서의 주문번호 출력
select orderid
from orders
where orderdate between '2014-07-04' and '2014-07-07';

# 2014년 7월4일부터 7월7일 사이에 주문 받은 도서를 제외한 주문번호 출력
select orderid
from orders
where orderdate not between '2014-07-04' and '2014-07-07';

# 성이 김씨인 고객의 이름과 주소를 출력
select name, address
from customer
where name like '김%';
# 성이 김씨이고 이름이 '아'로 끝나는 고객의 이름과 주소를 출력
select name, address
from customer
where name like '김%아';

# 주문하지 않은 고객의 이름 출력
select c.name from customer c
where c.name not in(
select name
from orders o
where c.custid = o.custid);

# 주문 금액의 총액과 주문의 평균 금액
select sum(saleprice), avg(saleprice)
from orders;
select name, sum(saleprice), avg(saleprice)
from customer c, orders o
where c.custid = o.custid group by c.custid;

# 고객의 이름과 고객별 구매액 출력
select c.name, sum(o.saleprice)
from customer c, orders o
where c.custid = o.custid group by c.custid;

# 고객의 이름과 고객이 구매한 도서 목록 출력
select c.name, b.bookname
from customer c, book b, orders o
where c.custid = o.custid and b.bookid = o.bookid order by c.custid;

select curdate(); # 오늘 날짜 출력
select curdate() + 1; # 오늘 날짜 +1 출력
select curtime(); # 현재 시간 출력
select curtime() + 1; # 현재 시간 +1초 출력
select datediff('2022-01-01', curdate()); # d-day 출력
select dayname('2022-09-28'); # 요일 출력
select now(); # 오늘 날짜 및 현재 시간 출력

select abs(-2); # 절댓값
select ceiling(3.46); # 올림
select floor(7.55); # 내림
select round(5.60887); # 반올림
select mod(29,3); # 나머지값
select power(3,4); # 3의 4제곱
select round(5.60887, 2); # 소수점 3번째 자리에서 반올림후 소수 두번째 자리 까지 출력
select truncate(5.60887, 2); # 소수점 2번째 이후로 버림
select left('abcde', 3); # 'abcde'의 왼쪽 세개의 문자 출력
select right('abcde', 3); # 'abcde'의 오른쪽 세개의 문자 출력
select trim('     abc       '); # 앞뒤의 공백빼고 출력
select trim(both 'x' from 'xxxapplexxx'); # 앞뒤의 x를 지운후 출력
select trim(leading 'x' from 'xxxapplexxx'); # 앞의 x를 지운후 출력
select trim(trailing 'x' from 'xxxapplexxx'); # 뒤의 x를 지운후 출력
select strcmp('abc', 'abc'); # 문자가 같은지 확인후 같으면 0 출력
select strcmp('abc', 'def'); # 문자가 같은지 확인후 틀리면 -1 출력
select substring('abcdefg', 2); # 2번째 문자부터 출력
select substring('abcdefg', 2, 5); # 2번째 문자부터 5개 출력

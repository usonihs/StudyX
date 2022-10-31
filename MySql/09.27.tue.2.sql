select distinct(publisher) from book; # distinct = 중복된것은 합쳐서 보여준다

use madang;

# 도서번호가 1인 도서의 이름
select bookname from book where bookid = 1;

# 가격이 20,000원 이상인 도서의 이름
select bookname from book where book.price >= 20000;

# 박지성의 총 구매액은 얼마인가?
select sum(o.saleprice)
from orders o, customer c
where c.name = '박지성' and c.custid = o.custid;

# 박지성이 구매한 도서의 수는?
select count(o.custid)
from customer c, orders o
where c.name = '박지성' and c.custid = o.custid;

# 박지성이 구매한 도서의 출판사수는 ?
select count(distinct(b.publisher))
from book b, customer c, orders o
where c.name = '박지성' and c.custid = o.custid and b.bookid = o.bookid;

# 합쳐서 출력
select name, sum(o.saleprice), count(o.custid), count(distinct(b.publisher))
from book b, customer c, orders o
where c.name = '박지성' and c.custid = o.custid and b.bookid = o.bookid;

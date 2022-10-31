use ShoesX;

SELECT * FROM ShoesX.shoes;
# 신발 데이터 입력
insert into shoes
(shoesname, brand, price, stock, stockdate)
values ('nike air', 'nike', 230000, 50, null);

insert into shoes
(shoesname, brand, price, stock, stockdate)
values('newBalance', 'balanceblack', 250000, 40, '2022-08-15');


insert into shoes
(shoesname, brand, price, stock, stockdate)
values ('proactive', 'prospecs', 20000, 30, null);

update shoes 
set brand = 'newBalance', shoesname = 'balanceblack'
where shoesid = 2;

update shoes
set shoesname = 'nike white air', stock = 30
where shoesid = 1;

update shoes
set price = 100000
where shoesid = 3;

update shoes
set stock = 20, stockdate = '2022-03-01'
where shoesid = 3;

update shoes
set stock = stock + 50
where shoesid = 3;

# 고객 등록
select * from ShoesX.customer;

insert into customer (custid, realid, name, password, phone, custdate)
values (1, 'yubee', '유비', 1234, '010-1111-2222', '2022-09-28');

insert into customer (custid, realid, name, password, phone, custdate)
values (2, 'kwanwoo', '관우', 2234, '010-1111-2223', '2022-09-29');

insert into customer (custid, realid, name, password, phone, custdate)
values (3, 'jangbee', '장비', 3234, '010-1111-2224', '2022-09-30');

update customer
set password = '8978', custdate = now()
where custid = 1;

update customer
set password = '2234'
where realid = 'kwanwoo';

update customer
set password = '3234'
where realid = 'jangbee';

update customer
set deletedate = now()
where realid = 'jangbee';

# 고객의 id와 password를 확인하여 로그인 확인 과정
select strcmp('yoobee', realid), strcmp('2222', password)
from customer
where realid = 'yubee';

select strcmp('yubee', realid), strcmp('8978', password)
from customer
where realid = 'yubee';

select brand, shoesname, price, stock
from shoes;

# 유비가 현재일자에 nike 제품 5개를 구매했다. 결과값으로 결제금액을 보여주기
select * from orders;

insert into orders
(custid, shoesid, saleprice, orderdate, quantity)
values (1, 1, 230000, now(), 5);

update shoes
set stock = stock - 5
where shoesid = 1;

select saleprice * quantity
from orders;

# 유비가 현재일자에 prospecs 제품 2개를 구매했음
insert into orders
(custid, shoesid, saleprice, orderdate, quantity)
values (1, 3, 100000, now(), 2);

update shoes
set stock = stock -2
where shoesid = 3;

# 유비가 현재일자에 newBalance 제품 3개를 구매했음
insert into orders
(custid, shoesid, saleprice, orderdate, quantity)
values (1, 2, 250000, now(), 3);

update shoes
set stock = stock -3
where shoesid = 2;

# 관우가 현재일자에 newBalance 제품 5개 구매했음
insert into orders
(custid, shoesid, saleprice, orderdate, quantity)
values (2, 2, 250000, now(), 5);

update shoes
set stock = stock -5
where shoesid = 2;

# jangbee / 3234 가 로그인 시도
select strcmp('jangbee', realid), strcmp('3234', password)
from customer
where custid = 3 and deletedate is not null;

select count(*)
from customer
where realid = 'jangbee' and password = '3234'
and deletedate is null;

# 현재일자 판매금액의 합은?
select sum(saleprice*quantity)
from orders
where substring(orderdate, 1, 10) = curdate();

# 고객 id별 매출금액을 매출금액 순으로 출력하기
select custid, sum(saleprice*quantity)
from orders group by custid order by sum(saleprice*quantity) desc;

# 제품별 매출금액 순으로 출력
select shoesid, sum(saleprice*quantity)
from orders group by shoesid order by sum(saleprice*quantity) desc;
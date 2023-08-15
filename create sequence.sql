select count (id) from "Order" where "Order".Customerid=2;
select count (customerid ) as"count",firstname from "Order" ,"customer" where "Order".CustomerId=Customer.id group by firstname ;
select count (customerid ) as"count",firstname from "Order" ,"customer" where "Order".CustomerId=Customer.id and "order".orderDAte<'2013'group by firstname order by firstname DESC; 
select count (customerid ) as"count",firstname from "Order" ,"customer" where "Order".CustomerId=Customer.id and "order".orderDAte<'2013-01-01'group by firstname having count (CustomerId)>10 order by firstname DESC; 
Order by FirstName DESC;
select Max (TotalAmount ) as Total_price, firstname  , lastName from "Order" o ,"customer" c where o.CustomerId=  c.Id group by firstname,lastName ; 
select companyName , avg( UnitPrice) from supplier , product where "product".SupplierId =supplier.Id group by companyName;
select country, count (companyName) as companyCount  from Supplier  group by country;
select sum (TotalAmount) as profit from "order";


-- name of customer who has the highest product quantity 
select Max (Quantity ) as HQ, firstname , lastName from OrderItem ,customer, product,"Order" 
where orderitem.ProductId= Product.Id and orderitem.OrderId= "order".Id and  "order".customerid=customer.id 
group by firstname,lastName order by HQ desc;




select*from "customer" where firstname like'a%';
SELECT * FROM "customer" WHERE phone like '%555%';

SELECT * FROM customer WHERE customer.id BETWEEN 1 AND 3;

SELECT firstname +' '+
lastname "customer full name"
FROM "customer";


create sequence countBy1
as decimal(3, 0)
start with 125
increment by 25
minvalue 100
maxvalue 200
cycle
cache 3 ;
select next value for countBy1 ;


create sequence countBy12
start with 0
increment by 1
maxvalue 10;
select * from sys.sequences where name ='countBy1';

create sequence countBy11
as decimal(3, 0)
start with 125
increment by 25
minvalue 100
maxvalue 200
cycle
cache 3 ;
select next value for countBy11 ;

create sequence countBy111
start with 1
increment by 1;
insert "Order"(Id , OrderNumber,TotalAmount) values (next value for countBy11,'tire',2);
insert "Order"(Id , OrderNumber,TotalAmount) values (next value for countBy11,'seat',1);
select*from customer where id =5 ;
select*from customer where FirstName ='Thomas' ;
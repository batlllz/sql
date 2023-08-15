--calling a function 
create or alter function circle_area (@p_radius numeric(10,2))
RETURNS NUMERIC(8,2)
AS 
BEGIN 
DECLARE @V_PI NUMERIC(8,2)= PI();
 DECLARE @V_AREA NUMERIC (8,2);
 SET @V_AREA=@V_PI * POWER (@p_radius ,2);
 RETURN @V_AREA;
 END;

 SELECT dbo.circle_area(4) as area;







 create or alter function dbo.customer_id  (@customerId int)
 returns nvarchar(40)as

BEGIN 
DECLARE @FNAME NVARCHAR (40);
DECLARE @LNAME NVARCHAR (40);
DECLARE @NAME NVARCHAR (80);

select @FNAME = FIRSTNAME , @LNAME = LASTNAME 
from Customer where id = @customerId;
set @NAME =@FNAME + ' ' + @LNAME
return @NAME ;
END ;

select dbo.customer_id(10) as "name" ;





create or alter function getcustomerbycountry (@country NVARCHAR(50))
returns table
as 
return
select Id,FIRSTNAME,LASTNAME , CITY FROM CUSTOMER 
WHERE COUNTRY =@country;
SELECT * FROM DBO.getcustomerbycountry('USA');





create or alter function COMPANYPRODUCT (@ID INT)
returns table
as 
return
select Product.Id,COMPANYNAME, PRODUCTNAME FROM Supplier , Product WHERE  Product.SupplierId= Supplier.Id AND Supplier.Id= @ID ;
SELECT * FROM DBO.COMPANYPRODUCT(2) ;





create or alter function TOTALSALE (@YEAR DATETIME)
returns table
as 
return
select  YEAR(ORDERDATE) AS "YEAR",CUSTOMER.ID, FIRSTNAME,LASTNAME ,SUM(TOTALAMOUNT) AS"TOTALAMOUNT" FROM CUSTOMER , "Order"  WHERE "Order".CUSTOMERID =CUSTOMER.ID AND YEAR(ORDERDATE) =@YEAR 
GROUP BY CUSTOMER.ID ,FIRSTNAME,LASTNAME , YEAR(ORDERDATE) ;
SELECT*FROM DBO.TOTALSALE(2012);
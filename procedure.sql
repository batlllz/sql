/*create  procedure read_products
@pcity as nvarchar (40) as
---begin 
--declare @city_name nvarchar (40) = @pcity ;
--select*from Supplier where City=@city_name;
--end----
---exec read_products 'New Orleans'; */





/*create OR ALTER procedure product_details
@id int ,
@productName nvarchar(50) output,
@unitPrice decimal (12,2) output
as
begin
select @productName = productname , @unitPrice = unitPrice
from Product where id = @id
END 

BEGIN 
DECLARE @NAME NVARCHAR (50);
DECLARE @PRICE decimal (12,2);
EXEC product_details 11, @NAME OUTPUT , @PRICE OUTPUT;
PRINT @NAME;
PRINT @PRICE ;
END
*/




---dafault input
/* create OR ALTER procedure CUSTOMER_details
@id int =10 ,
@FIRSTNAME nvarchar(40) output,
@LASTNAME nvarchar(40) output,
@PHONENUMBER nvarchar(20) output
as
begin
select @FIRSTNAME = FIRSTNAME , @LASTNAME = LASTNAME , @PHONENUMBER= PHONE
from Customer where id = @id
END 

BEGIN 
DECLARE @FNAME NVARCHAR (40);
DECLARE @LNAME NVARCHAR (40);
DECLARE @FHONE nvarchar(20);

EXEC CUSTOMER_details default  , @FNAME OUTPUT , @LNAME OUTPUT , @FHONE OUTPUT ;
PRINT @FNAME;
PRINT @LNAME ;
PRINT @FHONE
END*/





create OR ALTER procedure type_of_num
@num int , @type nvarchar (20) output
as
begin
if @num %2=0
print 'even';
else
print 'odd';
end

begin
declare @typenum nvarchar (20);
exec  type_of_num 9  , @typenum output;
end





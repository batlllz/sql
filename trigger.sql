--city

create or alter trigger customerecheck on customer for update 
as 
begin
declare @old_city nvarchar (40);
declare @new_city nvarchar (40);
select @old_city =city from deleted;
select @new_city =city from inserted;
if @old_city != @new_city
begin
print 'the old city not equal new city ';
rollback;
end
end

update Customer set City ='Berlin' where id =1;
update Customer set City ='London' where id =1;




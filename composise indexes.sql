--create composise indexes--


select firstname from Customer  ;

---create index ix_customer_FK on customer(firstname , lastname) include (city)---;
select firstname lastname from Customer   ;

drop index ix_customer_FK on customer  ; -- (on) index inside the table --- 

select firstname lastname from Customer where firstname='thomes'  ;
select firstname lastname from Customer where firstname='Georg'and lastname='Pipps' and City='Salzburg'  ;
select *from Customer;

drop index ix_customer_FK on customer  ;
select firstname lastname from Customer where firstname='Georg'and lastname='Pipps' and City='Salzburg'  ;
create index ix_customer_FK on customer(firstname )include (city);
select firstname , City from Customer where  lastname='Pipps' ;

---convert (target_dta_type , experssion,[style])


select convert (varchar (13) , Getdate() ,1);
select year ('2022-22-22' );
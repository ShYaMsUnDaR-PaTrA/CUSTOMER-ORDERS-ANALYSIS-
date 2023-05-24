create table customers
(
customer_id number(4) not null,
first_name varchar(20) not null,
last_name varchar(10) not null,
email_address varchar(30) not null,
phone_number number(10) not null,
constraint customer_id_ck primary key(customer_id),
constraint phone_number_ph check(length(phone_number)=10)
)
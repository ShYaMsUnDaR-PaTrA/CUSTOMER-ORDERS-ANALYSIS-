create table orders
(
order_id number(4) not null,
customer_id number(4) not null,
order_date date not null,
total_amount number(7,2) not null,
constraint order_id_ok primary key(order_id),
constraint total_amount_tk check(total_amount>0),
constraint customer_idck foreign key(customer_id)
references customers(customer_id)
)
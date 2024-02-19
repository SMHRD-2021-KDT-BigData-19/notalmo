create table test(id varchar(10));
select * from test;

create table product_ex(
	id_x int auto_increment,
	src varchar(3000) not null,
	link varchar(3000) not null,
	name varchar(1000) not null,
	sale int not null,
	rating DECIMAL(2,1) not null,
	total int not null,
	privary key (id_x)
);

select * from product_ex;



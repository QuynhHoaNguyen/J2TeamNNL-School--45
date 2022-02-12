create table tbl_admin
(
	idAdmin char (15) primary key,
	name nvarchar (50),
	email nchar (50),
	pass nchar (20),
	image_admin varchar(50),
	phone numeric(10),
	birth date,
	address_admin nvarchar (200),
	created_at timestamp,
	updated_at datetime,
)

create table tbl_customer
(
	idCustomer char (15) primary key,
	name nvarchar (50),
	email nchar (50),
	pass nchar (20),
	image_customer varchar(50),
	birth date,
	phone numeric(10),
	address_customer nvarchar (200),
	created_at timestamp,
	updated_at datetime,
)

create table tbl_address
(
	idAddress char (15) primary key,
	idCustomer char (15),
	addressS nvarchar (200),
	foreign key (idCustomer) references tbl_customer,
)

create table tbl_forgot_pass
(
	idFogotPass char (15) primary key,
	email nchar (50),
	token nchar (50),
	created_at timestamp,
)

create table banner
(
	idBanner char (15) primary key,
	title nvarchar(50),
	image_banner varchar(50),
	position char (20),
	created_at timestamp,
	time_start datetime,
	time_end datetime,
)
--drop table tbl_account
create table tbl_category
(
	idCategory char (15) primary key,
	name nvarchar (50),
)

create table tbl_product
(
	idProduct char (15) primary key,
	name nvarchar (50),
	idCategory char (15),
	title nvarchar(50),
	description_product nvarchar (200),
	image_product varchar(50),
	price int,
	quantity numeric,
	created_at timestamp,
	updated_at datetime,
	foreign key (idCategory) references tbl_category,
)

create table tbl_order
(
	idOrder char (15) primary key,
	idCustomer char (15),
	idAdmin char (15),
	Address_order char (15),
	status_order nvarchar(25),
	total_price int,
	created_at timestamp,
	updated_at datetime,
	foreign key (idAdmin) references tbl_admin,	
	foreign key (idCustomer) references tbl_customer,
)

create table tbl_order_detail
(
	idOrderDetail char (15) primary key,
	idOrder char (15),
	idProduct char (15),
	quantily numeric,
	price int,
	foreign key (idProduct) references tbl_product,
	foreign key (idOrder) references tbl_order,
)

create table tbl_feedback
(
	idFeedback char (15) primary key,
	idCustomer char (15),
	idProduct char (15),
	comment nvarchar (250),
	ratingStar float,
	created_at timestamp,
	updated_at datetime,
	foreign key (idCustomer) references tbl_customer,
	foreign key (idProduct) references tbl_product,
)
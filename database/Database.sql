create table customer
(
	customerID int primary key,
	userName varchar(100),
	password varchar(100),
	created datetime,
	name nvarchar(255),
	address nvarchar(255),
	phone varchar(45),
	email varchar(255),
	notes text,
	customerType varchar(45),
	totalPaid decimal(10,0),
	constraint customer_dn unique(email,phone,userName)
)
go

create table productCategory
(
	productCategoryID int primary key,
	name nvarchar(255),
)
go

create table product
(
	productID int primary key,
	productCategoryID int foreign key references productCategory(productCategoryID),
	name nvarchar(255),
	description text,
	inventory int,
	isActive bit,
	unitPrice decimal(10,0),
	size nvarchar(45),
	image varchar(1000),
)
go

create table discount
(
	discountID int primary key,
	name nvarchar(255),
	productID int foreign key references product(productID),
	description text,
	isActive bit,
	startDate datetime,
	expirationDate datetime,
	rewardType nvarchar(45),
	reward decimal(10,0)
)
go

create table shipArea
(
	shipAreaID int primary key,
	name nvarchar(255),
	shippingRate int,
	description text
)
go

create table orders
(
	orderID int primary key,
	customerID int foreign key references customer(customerID),
	created datetime,
	notes text,
	total decimal(10,0),
	isPaid bit
)
go

create table orderDelivery
(
	orderDeliveryID int primary key,
	status nvarchar(255),
	name nvarchar(255),
	address nvarchar(255),
	phone varchar(45),
	email varchar(255),
	shipAreaID int foreign key references shipArea(shipAreaID),
	orderID int foreign key references orders(orderID)
)
go

create table orderDetail
(
	orderDetailID int,
	productID int foreign key references product(productID),
	orderID int foreign key references orders(orderID),
	quantity int,
	constraint pk_orderDetail primary key (orderDetailID)
)
go

create table admin
(
	adminID nvarchar(50) primary key,
	password nvarchar(255)
)
go

--insert dữ liệu
--bảng ADMIN
insert into admin(adminID, password) values ('ad01','1234');
insert into admin(adminID, password) values ('ad02','12345');
insert into admin(adminID, password) values ('ad03','12346');

--bảng CUSTOMER
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (1,'HongNhu','123456',20/1/2016,'Hồ Hồng Như','11 Lê Hồng Phong, Quận 1, Tp. HCM','1637641872','hongnhu@gmail.com','','KH thân thiết', 500);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (2,'BichThuy','1234abcd',15/12/2017,'Ngô Thị Bích Thủy','71 Vạn Hạnh, Hóc Môn, Tp. HCM','1657362829','bichthuy@gmail.com','','Khách vãng lai',200);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (3,'ChiThanh','bdgfhsgd',43435,'Nguyễn Chí Thành','KTX khu B, Dĩ An, Bình Dương','1658749135','chithanh@gmail.com','','Khách vãng lai',100);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (4,'TrucThuong','aabbcc',42433,'Nguyễn Thị Trúc Thương','KTX khu A, Thủ Đức, Tp. HCM','962765839','tructhuong@gmail.com','','KH thân thiết',2000);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (5,'NgocHuy','nghtuya',42047,'Ngô Ngọc Huy','14/3 Quốc lộ 13, Bình Thạnh, Thủ Đức, Tp. HCM','921764238','ngochuy@gmail.com','','KH thân thiết',2500);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (6,'TuThien','1596bt',14/9/2015,'Trần Tự Thiên','18/2 đường 12, Bình Thạnh, Thủ Đức, Tp. HCM','1626919625','tuthien@gmail.com','','KH thân thiết',5000);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (7,'VanA','124hsfdb',43081,'Nguyễn Văn A','14 Nguyễn Thị Minh Khai, Bình Định','1258735267','vana@gmail.com','','Khách vãng lai',100);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (8,'ThiB','jfhsdd',15/12/2015,'Nguyễn Thị B','13 Nguyễn Ảnh Thủ, Hóc Môn, Tp. HCM','1458461937','thib@gmail.com','','Khách vãng lai',291);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (9,'ThanhTruc','jfgyddw',36896,'Ngô Thanh Trúc','123 Tô Ký, Bình Dương','231657345','thanhtruc@gmail.com','','Khách vãng lai',364);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (10,'KimLong','363ghdf',13/1/2015,'Trần Kim Long','23 Tô Vĩnh Diện, Bến Tre','124573523','kimlong@gmail.com','','KH thân thiết',3947);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (11,'ThanhHung','jhf334',41980,'Ngô Thanh Hùng','23 Trung Chánh, Hóc Môn, Tp. HCM','2136544137','thanhhung@gmail.com','','KH thân thiết',2543);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (12,'VanC','jfgyrdsd',41976,'Trần Văn C','453 Tánh Linh, Bình Thuận','14384638','vanc@gmail.com','','KH thân thiết',657);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (13,'KimAnh','654hgdb',41643,'Trần kim Anh','654 Trảng Bom, Đồng Nai','23475272','kimanh@gmail.com','','KH thân thiết',3540);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (14,'LinhLinh','7653hhf',42990,'Trần Linh Linh','29 Biên Hòa, Đồng Nai','1457632836','linhlinh@gmail.com','','KH thân thiết',654);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (15,'HoangPhuong','342gdvc',42197,'Trần Hoàng Phương','29 Thạnh Lộc, Quảng Nam','1653827946','hoangphuong@gmail.com','','Khách vãng lai',453);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (16,'ChiAnh','645sgfb',41611,'Nguyễn Chí Anh','25 Lộc An, Long Xuyên','921876493','chianh@gmail.com','','Khách vãng lai',56);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (17,'AnhTam','bfg323',41429,'Trần Anh Tâm','65 chợ Trạm, Long An','1637461872','anhtam@gmail.com','','Khách vãng lai',65);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (18,'TrucMai','765bdgs',42259,'Phạm Trúc Mai','Thái Bình Trung, Kiến Tường, Long An','9126452871','trucmai@gmail.com','','Khách vãng lai',76);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (19,'VanHien','hgff231',17/8/2013,'Phạm Văn Hiến','12 Trần Đình Trọng, Ninh Bình','9658314723','vanhien@gmail.com','','Khách vãng lai',65);
insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (20,'ThiDuyen','hhgjes',41982,'Đoàn Thị Duyên','323 Nguyễn Thái Sơn, Quận 4, Tp. HCM','1657358249','thiduyen@gmail.com','','KH thân thiết',876);

--bảng PRODUCTCATEGORY
insert into productCategory(productCategoryID,name) values (1,'Dress');
insert into productCategory(productCategoryID,name) values (2,'Short');
insert into productCategory(productCategoryID,name) values (3,'Denim');

--bảng PRODUCT
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (1,1,'Naomi Backless Zip Detail Neon Bodycon Dress','COLOUR: yellow',50,1,15,' size S, M, L','images/p-1.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (2,1,'Lill Open Back Sports Trim Bodycon Dress','COLOUR: ',50,1,15,'size S - M - L','images/p-2.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (3,1,'Rosie Mesh Off The Shoulder Skater Dress','COLOUR: red',50,0,18,'size S - M - L','images/p-3.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (4,1,'Fliss Lace Flared Sleeve Halterneck Skater Dress','COLOUR: white ',50,1,25,'size S - M - L - XL - XXL','images/p-4.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (5,1,'Amy One Shoulder Contrast Ruffle Midi Dress','COLOUR: pink',50,1,22,'size S - M - L','images/p-5.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (6,1,'Jade Stripe Ruffle Crochet Trim Shift Dress','colour: blue',50,1,20,'size M','images/p-6.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (7,1,'Kelly Ruffle Cold Shoulder Midi Dress','COLOUR: yellow',50,1,20,'size M','images/p-7.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (8,1,'Skye Sweetheart Off Shoulder Bodycon Dress','COLOUR: BERRY',50,1,18,'size M,L','images/p-8.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (9,2,'Nadia Ruffle Crepe Skort','COLOUR: ORANGE',50,0,14,'size M,L','images/p-9.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (10,3,'Gemma All Over Ripped 7/8th Jeans','colour: blue',50,1,25,'size M,L','images/p-10.jpg');
insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (11,3,'Tina Fray Hem Denim Dungaree Shorts','COLOUR: PINK',50,1,20,'size M,L','images/p-11.jpg');


--bảng DISCOUNT
insert into discount(discountID,name,productID, description, isActive, startDate, expirationDate, rewardType, reward) values (1,'Thẻ giảm giá',1,'Giảm tổng tiền khi thanh toán',0,'1/03/2018','1/4/2018','',10);

--bảng SHIPAREA
insert into shipArea(shipAreaID, name, shippingRate, description) values (1,'Quận 1, Tp. HCM',15,'Giao 1-2 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (2,'Quận 4, Tp. HCM',15,'Giao 1-2 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (3,'Hóc Môn',20,'Giao 2-3 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (4,'Thủ Đức',20,'Giao 2-3 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (5,'Bình Dương',25,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (6,'Bến Tre',30,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (7,'Bình Thuận',30,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (8,'Đồng Nai',25,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (9,'Long Xuyên',20,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (10,'Long An',20,'Giao 3-4 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (11,'Bình Định',40,'Giao 5-6 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (12,'Quảng Nam',40,'Giao 5-6 ngày sau khi đặt hàng');
insert into shipArea(shipAreaID, name, shippingRate, description) values (13,'Nình Bình',40,'Giao 6-7 ngày sau khi đặt hàng');

--bảng ORDERS
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (2,10,'9/2/2015','',123000,1);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (5,20,'2/12/2015','',125000,1);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (6,15,'8/12/2015','Gọi trước khi giao',90000,1);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (10,20,'1/4/2017','Gọi trước khi giao',45000,1);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (11,1,'7/8/2017','',100500,0);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (12,15,'3/12/2017','',150000,0);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (13,10,'12/12/2017','Gọi trước khi giao',278012,1);
insert into orders(orderID, customerID,  created, notes, total, isPaid) values (15,9,'11/3/2018','',864200,1);

--bảng ORDERDELIVERY
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (2,'Đã giao','OD02','23 Tô Vĩnh Diện, Bến Tre','124573523','kimlong@gmail.com',6,2);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (5,'Đã giao','OD05','323 Nguyễn Thái Sơn, Quận 4, Tp. HCM','1657358249','thiduyen@gmail.com',2,5);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (6,'Đã giao','OD06','29 Thạnh Lộc, Quảng Nam','1653827946','hoangphuong@gmail.com',12,6);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (10,'Đã giao','OD10','323 Nguyễn Thái Sơn, Quận 4, Tp. HCM','1657358249','thiduyen@gmail.com',2,10);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (11,'Đã giao','OD11','11 Lê Hồng Phong, Quận 1, Tp. HCM','1637641872','hongnhu@gmail.com',1,11);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (12,'Đã giao','OD12','29 Thạnh Lộc, Quảng Nam','1653827946','hoangphuong@gmail.com',12,12);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (13,'Đã giao','OD13','23 Tô Vĩnh Diện, Bến Tre','124573523','kimlong@gmail.com',6,13);
insert into orderDelivery(orderDeliveryID, status, name, address, phone, email, shipAreaID, orderID) values (15,'Đã giao','OD15','123 Tô Ký, Bình Dương','231657345','thanhtruc@gmail.com',5,15);

--bảng ORDERDETAIL
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(8,1,2,2);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(1,2,5,3);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(2,1,6,1);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(3,2,10,10);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(4,2,11,1);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(5,2,12,3);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(6,1,13,5);
insert into orderDetail(orderDetailID, productID, orderID, quantity) values(7,2,15,2);

--TRIGGER--
--1. bang admin: 4 ky tu <= password <= 8 ky tu
CREATE TRIGGER ad_pwd on admin
for insert, update
as
declare @ps nvarchar(255)
begin
	select @ps = password
	from inserted 

	if (len(@ps) < 4 or len(@ps) > 8)
		begin
			print N'Nhập lại password từ 4 đến 8 ký tự';
			rollback tran;
		end
end

insert into admin(adminID,password) values ('ad10','1234567890');

-- 2. bang customer: 4 ky tu <= password <= 8 ky tu
CREATE TRIGGER cus_pwd on customer
for insert, update
as
declare @ps nvarchar(255)
begin
	select @ps = password from inserted
	if (LEN(@ps) < 4 or LEN(@ps) > 8)
		begin
			print N'Nhập lại password từ 4 đến 8 ký tự';
			rollback tran;
		end
end

insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (21,'GiaHuy','123456789',19/5/2018,'Phạm Ngô Gia Huy','34 Nguyễn Thị Cẩm, Quận 1, Tp. HCM','0957937154','giahuy@gmail.com','','KH thân thiết', 600);

--3.Bảng customer:Quy dinh: totalPaid của khách hàng >= 500$ sẽ là khách hàng thân thiết
drop trigger cus_ttPaid
CREATE TRIGGER cus_ttPaid on customer
for insert, update
as
declare @totalPaid decimal(10,0), @customerID int
begin
	select @totalPaid = totalPaid from inserted
	if @totalPaid >= 500
		begin
			update customer
			set customerType = 'KH thân thiết'
			where customerID = @customerID
		end
end

insert into customer(customerID, userName, password, created, name, address, phone, email, notes, customerType, totalPaid) values (22,'GiaHung','lkofoptj',18/5/2018,'Phạm Gia Hùng','32 Trần Đình Trọng, Quận 4, Tp. HCM','095793843','giahung@gmail.com','','Khách vãng lai', 600);

update customer
set customerType = 'KH thân thiết'
where customerID='22'

--4. Bảng discount: 1. Ràng buộc: ngày bắt đầu < ngày kết thúc
drop trigger dis_date;
CREATE TRIGGER dis_date on discount
for insert, update
as
declare @startDate datetime, @expirationDate datetime
begin
	select @startDate = startDate from inserted
	select @expirationDate = expirationDate from inserted
	if (@startDate > @expirationDate)
	begin
		print N'Sai thời gian khuyến mãi';
		rollback tran;
	end
end

insert into discount(discountID,name,productID, description, isActive, startDate, expirationDate, rewardType, reward) values (2,'Phiếu khuyến mãi',3,'Tặng kèm sản phẩm',1,'01/06/2018','01/03/2018','',8);

--5. Bảng Discount: Sản phẩm được áp dụng khuyến mãi phải còn hàng trong kho
drop trigger dis_prod;
CREATE TRIGGER dis_prod on discount
for insert, update
as
declare @productID int
begin
	select @productID = productID from inserted
	if (select prd.isActive
		from product prd, discount dis
		where prd.productID = dis.productID 
			and @productID = prd.productID) = 0
		begin
			print N'Sản phẩm không còn tồn tại';
			rollback tran;
		end
end

insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (13,3,'Tina Fray Hem Denim Dungaree Shorts','COLOUR: PINK',0,0,20,'size M,L','images/p-11.jpg');
insert into discount(discountID,name,productID, description, isActive, startDate, expirationDate, rewardType, reward) values (4,'Phiếu khuyến mãi',13,'Tặng kèm sản phẩm',1,'01/06/2018','01/07/2018','',8);

--6. Bảng Discount: Giá trị của quà tặng kèm phải <= 10$
CREATE TRIGGER dis_reward on discount
for insert, update
as
declare @reward decimal(10,0)
begin
	select @reward = reward from inserted
	if (@reward > 10) 
	begin
		print N'Giá trị của quà tặng kèm phải <= 10$';
		rollback tran;
	end
end

insert into discount(discountID,name,productID, description, isActive, startDate, expirationDate, rewardType, reward) values (10,'Quà tặng kèm',10,'Tặng kèm sản phẩm khi mua hàng',1,'01/07/2018','01/08/2018','',11);

--7. Bảng product: Số lượng tồn kho của mỗi sản phẩm phải luôn luôn >0. Ngược lại, sản phẩm không còn hoạt động
drop trigger prd_inv
CREATE TRIGGER prd_inv on product
for insert, update
as
declare @inventory int, @isActive bit, @productID int
begin
	select @inventory = inventory from inserted
	if (@inventory <= 0)
	begin
		print N'Số lượng hàng tồn kho đã hết';
		
		update product
		set @isActive = 0
		where productID = @productID
		
		rollback tran;
	end
end

insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (14,2,'Tina Fray Hem Denim Dungaree Shorts','COLOUR: PINK',0,1,20,'size M,L','images/p-11.jpg');

--8. Bảng Product: Giá của mỗi sản phẩm phải luôn luôn lớn hơn 0
drop trigger prd_price
CREATE TRIGGER prd_price on product
for insert, update
as
declare @unitPrice decimal(10,0)
begin
	select @unitPrice = unitPrice from inserted
	if (@unitPrice <= 0)
		begin
			print N'Giá của sản phẩm phải lớn hơn 0';
			rollback tran;
		end
end

insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) values (16,2,'Tina Fray Hem Denim Dungaree Shorts','COLOUR: PINK',10,1,0,'size M,L','images/p-11.jpg');

--9. Bảng order: Ngày tạo hóa đơn phải lớn hơn hoặc bằng ngày tạo tài khoản của khách hàng
drop trigger ord_2
CREATE TRIGGER ord_2 on orders
for insert, update
as
declare @created datetime, @ctmCreated datetime, @ordCreated datetime
begin
	select @created = created from inserted
	
	select @ctmCreated = created from customer
	select @ordCreated = created from orders
	
	select @ordCreated = (select created from orderDetail orD, orders ors
							where orD.orderID = ors.orderID)
	from orders
	
	if (@ordCreated >= @ctmCreated)
	begin
		print N'Ngày tạo hóa đơn phải lớn hơn hoặc bằng ngày tạo tài khoản';
		rollback tran;
	end
end

--10.Bảng order: Tổng tiền hóa đơn phải lớn hơn 0
drop trigger ord_total
CREATE TRIGGER ord_total on orders
for insert, update
as
declare @total decimal(10,0)
begin
	select @total = total from inserted
	if (@total <= 0)
		begin
			print N'Tổng tiền hóa đơn phải lớn hơn 0';
			rollback tran;
		end
end

--11. Bảng oderDelivery: Tính từ ngày tạo hóa đơn đến ngày hiện tại, nếu lớn hơn 7 thì hóa đơn sẽ bị hủy
CREATE TRIGGER oDel_stats on orderDelivery
for insert, update
as
declare @status nvarchar(255), @orderID int, @created datetime
begin
	select @orderID = orderID from inserted
	
	select @created = (select created
					from orderDelivery orDe, orders ord
					where orDe.orderID = ord.orderID)
	
	select DATEDIFF(DAY, @created, GETDATE()) AS 'Dem'
	If ('Dem' > 7)
		begin
			print N'Hóa đơn phải bị hủy';
			rollback tran;
		end
end

--12. Bảng shipArea: Phí ship phải lớn hơn 0
CREATE TRIGGER shipA_rate on shipArea
for insert, update
as
declare @shippingRate int
begin
	select @shippingRate = shippingRate from inserted
	if (@shippingRate <= 0)
		begin
			print N'Phí ship phải lớn hơn 0';
			rollback tran;
		end
end

insert into shipArea(shipAreaID, name, shippingRate, description) values (14,'Nình Bình',0,'Giao 6-7 ngày sau khi đặt hàng');

--13. Bảng orderDetail: Số lượng đặt hàng phải lớn hơn 0
CREATE TRIGGER ordD_quan on orderDetail
for insert, update
as
declare @quantity int
begin
	select @quantity = quantity from inserted
	if (@quantity <= 0)
		begin
			print N'Sô lượng đặt hàng phải lớn hơn 0';
			rollback tran;
		end
end

--14. Bảng orderDetail:Số lượng đặt hàng phải nhỏ hơn hoặc bằng số lượng tồn kho
drop trigger ordD_quan 
CREATE TRIGGER ordD_quan on orderDetail
for insert, update
as
declare @quantity int, @inventory int, @productID int
begin
	select @quantity = quantity from inserted
	if (select prd.inventory
		from product prd
		where @productID = productID) < @quantity
		begin
			print N'Số lượng tồn kho không đáp ứng đủ';
			rollback tran;
		end
end

--15. Bảng orderDetail: Giá trị inventory (số lượng tồn) của Product giảm theo quantity (số lượng mua) của OrderDetail tương ứng. Nếu xóa một OrderDetail thì giá trị inventory của sản phẩm đó được khôi phục lại như cũ.
create trigger ins_orD on orderDetail
for insert
as
begin tran
	declare @productID int, @quantity int
	select @productID = productID, @quantity = quantity from inserted
	update product
	set inventory = inventory - @quantity
	where @productID = productID
	if (@@ERROR <> 0)
	begin
		print 'Error'
		rollback tran
		return
	end
	commit tran
end

--16. Khi thêm mới hoặc cập nhập một dòng dữ liệu của DISCOUNT nếu giá trị expirationDate nhỏ hơn ngày của hệ thống thì isActive tự động chuyển sang 0.
Create trigger ins_dis on discount
for insert, update
as
begin
	declare @discountID int, @expirationDate datetime
	select @discountID = discountID, @expirationDate = expirationDate
	from inserted
	if (@expirationDate < GETDATE())
	begin
		update discount set isActive = 0 
		where discountID = @discountID
		if (@@ERROR <> 0)
		begin
			print 'Error'
			rollback tran
			return
		end
	end
end

--17. Bảng product: Khi thêm mới hoặc cập nhập một dòng dữ liệu của PRODUCT nếu giá trị inventory = 0 thì isActive tự động chuyển sang 0.
create trigger ins_prd on product
for insert, update
as
begin
	declare @productID int, @inventory datetime
	select @productID = productID, @inventory = inventory
	from inserted
	if (@inventory < 0)
	begin
		update product set isActive = 0 
		where productID = @productID
		if (@@ERROR <> 0)
		begin
			print 'Error'
			rollback tran
			return
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
------PROCEDURE--------------------------------------------------------------------------------------------------------
--productcatory----------------------------------------------------------
--1. Xoa danh muc san pham***------
create proc sp_catalog_del
	@Pdid int
as
begin
	declare @tonkho int;
	set @tonkho =(select sum(inventory) 
		from product pd,productCategory pc 
		where pd.productCategoryID=pc.productCategoryID 
			and pc.productCategoryID=@pdid)
	if(@tonkho > 0 )
		begin
			print 'loai san pham co khach hang dat'
			rollback;
		end
	else
		begin
			delete productCategory where productCategoryID=@Pdid;
			delete product where productCategoryID =@pdid;
		end
end

---2. lay danh sach san pham theo ma loai san pham---
Drop proc sp_product_category_listed

Create Proc sp_product_category_listed
As
Begin
	Print N'danh sach san pham theo loai san pham la:'
	Select  pd.productCategoryID,pd.productID,pd.name
	from product pd 
	group by pd.productCategoryID,pd.productID,pd.name
End


-------------------product------------------------------------------------------------------
---3. xoa san pham ---
create proc sp_product_del
 @masp int
 as
begin
if exists (select * from orderDetail where productID=@masp)
begin
print 'san pham dang nam trong don hang chua the xoa'
rollback
end
else 
	begin
		delete from product where productID =@masp;
		delete from orderDetail where productID =@masp;
		delete from discount where productID =@masp;
		end
end



---4. them san pham----****
create proc sp_product_ins
	@masp int ,
	@malsp int ,
	@tensp nvarchar(255),
	@mota text,
	@soluongins int,
	@hd bit,
	@gia decimal(10,0),
	@kichco nvarchar(45),
	@hinhanh varchar(1000)
as 
begin
if exists (select* 
			from product 
			where productID=@masp)
	begin
		update product 
		set inventory=inventory+ @soluongins 
		where productID = @masp
		print 'update san pham thanh cong'
	end
else 
	begin
		insert into product(productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image) 
		values (@masp,@malsp,@tensp,@mota,@soluongins,@hd,@gia,@kichco,@hinhanh)
		print 'them san pham moi thanh cong' 
	end
end 


---5. tiem kiem san pham theo ten san pham---
Create Proc sp_product_name_info
@tensp1 nvarchar(255)
As
Begin
	Print N'san pham can tra cuu la:'
	Select productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image
	from product pd
	where name like '%'+@tensp1+'%'
End

--6. cập nhật quantity của sản phẩm
--nếu orderDilivery có status = 'T' => inventory = inventory - quantity
--nếu orderDivivery có status = 'F' => inventory = inventory + quantity
drop proc update_quantity_product
create proc update_quantity_product 
as
begin
	declare @order_id bigint;
	declare @status nvarchar;
	declare @quantity int, @product_id int;
	--khai báo cursor
	declare cs_DSO cursor for (select orderID, status from orderDelivery)
	--mở cursor
	open cs_DSO 
	fetch next from cs_DSO into @order_id, @status
	while @@FETCH_STATUS = 0
	begin
		set @quantity = (select quantity from orderDetail where orderID = @order_id)
		set @product_id = (select productID from orderDetail where orderID = @order_id)
		if (@status = 'T')
			begin 
				update product
				set inventory = inventory - @quantity 
				where productID = @product_id
			end
		else
			begin
				update product
				set inventory = inventory + @quantity 
				where productID = @product_id
			end
		--đọc dòng tiếp theo
		fetch next from cs_DSO into @order_id, @status
	end
	--đóng cursor
	close cs_DSO
	--giải phóng cursor
	deallocate cs_DSO
end

------------------------custommer------------------------------------------------------
-------7. xoa khach hang***----
create proc sp_Customer_Delete
	@maKH int
as
begin
	if exists(select * 
				from orders od,customer cs 
				where od.customerID = cs.customerID 
					and od.customerID=@maKH)
				begin
					print 'khach hang dang mua hang'
					rollback;
				end
	else 
		begin
		  delete customer 
		  where customerID=@maKH;
		  print 'xoa khach hang thanh cong'
		end 
end

----8. danh sach khach hang theo nhom khach hang than thiet***----
Create Proc sp_customer_listed
As
Begin
	Print N'danh sach khach hang là:'
	Select cs.customerType,customerID,userName
	from customer cs
	where cs.customerType ='KH thân thiết'
	group by cs.customerType,userName,customerID
End


----9. cap nhat khach hang than thiet----
create proc sp_customer_upd
@makh int
as
begin
	declare @thongke decimal(10,0);
	set @thongke = (select sum(total) 
					from orders,customer 
					where orders.customerID = customer.customerID 
						and orders.customerID = @makh)
	if(@thongke > 150000)
	begin
	update customer set
	customerType=N'KH thân thiết'
	where customerID = @makh
	end
	else 
	print N'khong du dieu kien'
	rollback;
end

--cập nhật trạng thái login và logout
create proc manager_login_account @username nvarchar(255)
as
begin
	declare @notes nvarchar(10);
	select  @notes = notes from  customer where email = @username;
	if (@notes = 'false')
		begin
			update customer
			set notes = 'true'
			where email = @username

			--select * from customer where email = @username
		end
end
drop proc manager_login_account
--exec manager_login_account 'hongnhu@gmail.com'
select * from customer
update customer
set notes = 'false'
create proc manager_logout_account @username nvarchar(255)
as
begin
	declare @notes nvarchar(10);
	select  @notes = notes from  customer where email = @username;
	update customer
	set notes = 'false'
	where email = @username;
		
end
----------------------order------------------------------------------------------------
-----10. xoa don hang***----
create proc sp_order_Del
	@maHD int
as
begin
if exists (select * 
			from orders os, orderDelivery od 
			where os.orderID =od.orderID and od.orderID=@maHD)
begin
print N'don hang da chuyen toi bo phan ship hang!!!'
rollback;
end
else
	begin
		delete orders where orderID=@maHD
		delete orderDetail where orderID=@maHD
		delete orderDelivery where orderID=@maHD
	end
end


---11. them don hang ---
create proc sp_order_ins
@maHD int, @ngaytao datetime, @soluongthem int,@ghichu text,@hd bit,@masp int, @makh int
as 
	begin 
declare @soluongkho int;
set @soluongkho=(select inventory
from product
where productID =@masp)
if (@soluongthem>@soluongkho)
begin 
	delete from orders where orders.orderID=@maHD;
	print'khong du hang de them vao hoa don.Vui long nhap hang them'
	rollback;
end
else if exists(select* from product pd,orderDetail od,orders os where pd.productID=od.productID and od.orderID=os.orderID) 
	begin 
	declare @v_cost int;
	declare @tongcong decimal(10,0)
	set @v_cost = @soluongthem*(select unitPrice from product where productID=@masp)
	update orders set @tongcong=total =total+@v_cost where orderID=@maHD
	end 
else 
	begin 
	insert into orders(orderID,customerID,created, notes, total, isPaid)
	values (@maHD,@makh,@ngaytao,@ghichu,@tongcong,@hd)
	end
end


--------------------------------------orderdetail------------------------------------------------------------
---12. them chi tiet don hang---
create proc sp_order_detail_ins
@maHD int, @masp int, @soluongthem int,@maCTHD int
as 
begin
declare @soluongkho int;
declare @soluongdonhang int;
set @soluongdonhang=(select sum(quantity)
from orders os , orderDetail od
where os.orderID=od.orderID and productID =@masp)
set @soluongkho=(select inventory
from product
where productID =@masp)
if (@soluongthem>(@soluongkho-@soluongdonhang))
begin 
	delete from orders where orders.orderID=@maHD;
	print('Them don hang that bai!!!')
	rollback;
end
else 
	begin 
	update orderDetail set quantity=quantity + @soluongthem  where orderID=@maHD
	declare @v_cost int;
	declare @tongcong decimal(10,0)
	set @v_cost = @soluongthem*(select unitPrice from product where productID=@masp)
	update orders set @tongcong=total =total+@v_cost where orderID=@maHD
	end 
end


---13. lay danh sach chi tiet don hang theo ma san pham---
Create Proc sp_order_detail_MAHD_listed
As
Begin
	Print N'danh sach san pham theo loai san pham la:'
	Select  od.productID, od.orderID, od.orderDetailID, od.quantity
	from orderDetail od
	group by od.orderID,od.orderDetailID,od.quantity,od.productID
End

--------------------------------------THONG KE--------------------------------------------
---14. danh sach san pham co so luong ton kho lon hon 20,khong con ban tren web -> tien hanh lam hang khuyen mai----

Create Proc sp_product_listed_KM
As
Begin
	Print N'san phan lam hang khuyen mai:'
	Select productID,productCategoryID, name, description, inventory, isActive, unitPrice, size, image
	from product pd
	where pd.isActive = 0 and pd.inventory >20
End

---15. thong ke doanh thu theo ngay---
create proc sp_TongTien_ngay @nam int,@thang int
as
select day(created) as ngay ,SUM(total) as tongtien
from orders
where YEAR(created)=@nam and month(created)=@thang
group by day(created)


---16. thong ke doanh thu theo thang va nam----
create proc sp_TongTien @nam int
as
select MONTH(created) as Thang ,SUM(total) as tongtien
from orders
where YEAR(created)=@nam 
group by MONTH(created);

--------17. THONG KE CO BAO NHIEU KHACH HANG THAN THIET VA DANG MUA HANG VS HOA DON LON HON 200.000------
CREATE PROC SP_CUSTOMER_TOTAL
AS 
BEGIN
SELECT COUNT(od.customerID) 
FROM customer CS, orders OD 
WHERE CS.customerID = OD.customerID AND customerType ='KH thân thiết'
having sum(od.total)>200000 
END 
-------
-----------------------------------------SHIPAREA----------------------------------------------------------------------------------------------------
-------18. them khu vuc ship -----------------------
create proc spShipArea
	@name nvarchar(255),
	@shipRate int,
	@description text
	as
begin tran
	if exists (select shipAreaID
				from  shipArea
				where name= @name)
	begin
		print N'khu vực đã tồn tại'
		rollback tran
		return
	end
	else 
	begin
		declare @shipAreaID int
		set @shipAreaID = 1
		while (1=1)
		begin
if(exists(select * from shipArea 
where shipAreaID = @shipAreaID))
				set @shipAreaID = @shipAreaID + 1
			else
				break
		end
insert shipArea values(@shipAreaID, @Name, @shipRate, @description)		
		if (@@ERROR <>0)
			begin
				print N'Không thể thêm dữ liệu'
				rollback tran
				return
			end	
		else 
			begin
				print N'Thêm dữ liệu thành công'
			end	
	end
commit tran

-------------------------------DISCOUNT-----------------------------------------------
------19. them chuong trinh khuyen mai ----
create proc spDiscount_ins
	@name nvarchar(225),
	@productID int,
	@description text,
	@isActive bit,
	@startDate datetime,
	@expirationDate datetime,
	@rewardType nvarchar(45),
	@reward decimal(10,0)
as	
	begin tran
	if exists (select discountID
				from  discount
	where name = @name and startDate = @startDate and expirationDate = @expirationDate)
	begin
		print N'Chương trình khyến mãi đã có'
		rollback tran
		return
	end
	else 
	begin
		declare @discountID int
		set @discountID = 1
		while (1=1)
		begin
		if(exists(select * from discount 
		where discountID = @discountID))
				set @discountID = @discountID + 1
			else
				break
		end
			insert discount values(@discountID, @name,@productID, @description, @isActive, @startDate, @expirationDate, @rewardType, @reward)		
		if (@@ERROR <>0)
			begin
				print N'Không thể thêm dữ liệu'
				rollback tran
				return
			end	
		else 
			begin
				print N'Thêm dữ liệu thành công'
			end	
	end
commit tran


------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------XỬ LÝ ĐỒNG THỜI-----------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------
--------1. lost update (Mất dữ liệu cập nhật)
---transaction 1----
set tran isolation level repeatable read
begin tran 
declare @soluong int
select @soluong = inventory from product where productID =1
waitfor delay '00:00:10'
set @soluong =@soluong + 5
update product set inventory = @soluong where productID =1
select productID, inventory
from product 
where productID = 1
commit tran

----tran saction 2----
begin tran 
declare @soluong int
select @soluong = inventory from product where productID =1
waitfor delay '00:00:1'
set @soluong =@soluong + 10
update product set inventory = @soluong where productID =1
select productID, inventory
from product 
where productID = 1
commit tran
-------2. doc du lieu chua commit
----transaction 1--
begin tran 
update product set inventory =100
where productID = 1
waitfor delay '00:00:10'
rollback tran
select * from product
----transaction 2--
begin tran
set tran isolation level read uncommitted 
select productID, inventory from product where productID = 1
commit tran
---------3. giao tac doc khong the lap lai -----
---------transaction1-------------
set tran isolation level repeatable read
begin tran
select * from productCategory where productCategoryID = 1
waitfor delay '00:00:10'

select * from productCategory where productCategoryID = 1
commit tran
---------transaction2-------------
begin tran
update productCategory set name = 'quan ao mua dong' where productCategoryID =1
commit tran
--------4. phantom (Bóng ma)-----------------------------
---------transaction 1------------
set tran isolation level serializable
begin tran 
declare @ten nvarchar (225)
declare @masp int
			
select name, productID
from product where productCategoryID = 1

waitfor delay '00:00:10'

select name, productID
from product where productCategoryID = 1
commit tran
---------transaction 2------------
begin tran
insert into product(productID,productCategoryID,name,description,inventory,isActive,unitPrice,size,image) values (3,1,'dam trang cao cap', 'chat lieu vai thun mat me vao ngay he',100,1,120,'size S,M','image/p-3.jpg')
commit tran

---------------DEADLOCK----------------------------
---------khi 2 transaction chay đồng thời -- Transaction1 đang giữ Exclusive Lock của của bảng product-----
----------transaction2 thì giữ Exclusive Lock cùa bảng productCategory---- 
----------khi transaction1 cần update bảng productcategory xảy ra deadlock do Exclusive Lock đang được giữ bởi transaction 2
----------giải quyết: cho transaction1 chay trước, giai phóng khóa, transaction2 nhận được khóa từ transaction 1 tiến hành update dữ liệu
-------------transaction1 -----------------
Create Proc sp_DeadLock1
As
Begin 
	Begin Tran
		Update product Set name ='Deadlock1' where productID = 1
		Waitfor delay '00:00:10'
		Update productCategory Set name='Deadlock1' where productCategoryID =1
	Commit Tran
End

-------------transaction2 -----------------
Create Proc sp_DeadLock2
As
Begin 
	Begin Tran
		Update productCategory Set name='Deadlock2' where productCategoryID =1
		Waitfor delay '00:00:10'
		Update product Set name ='Deadlock2' where productID = 1
	Commit Tran
End

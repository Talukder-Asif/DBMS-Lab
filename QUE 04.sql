create database que4;
use que4;

create table Supplier(
	suplierID int primary key auto_increment,
    supplierName varchar(50),
    supplierContact varchar(50)
);

insert into Supplier(supplierName, supplierContact)
values
('Jhon Doe', '01554541524' ),
('Jane Smith', '01985244514245' ),
('Emiily Johnson', '0145754574' ),
('Mike Brown', '0175441541' );

select * from Supplier;


create table Product(
	productID int primary key auto_increment,
    productName varchar(50),
    productCategory varchar(50),
    supplierId int,
    foreign key (supplierID) References Supplier(suplierID)
);
select * from Product;

insert into Product(productName, productCategory, supplierId)
values
('T-Shart', 'Mens', 1),
('Phone', 'tech', 2),
('T-pant', 'Mens', 3);

select * from Product;


create table Inventory(
	productID int primary key ,
	foreign key (productID) References Product(productID),
    productQuanttity int
);

insert into Inventory(productID, productQuanttity)
values
( 1, 5),
( 2, 10),
( 3, 18);

select * from Inventory;

create table Transaction(
	transactionID int primary key auto_increment,
    productID int,
	foreign key (productID) References Product(productID),
	transactionType varchar(50),
    transactionQuantity int,
    transactionDate Date
);

insert into Transaction(productID, transactionType, transactionQuantity, transactionDate)
values
( 1, 'sale', 2, '2021.05.14'),
( 3, 'purchase',5, '2021.03.11'),
( 2, 'sale', 2, '2021.07.18');

select * from Transaction;


select P.productName,
P.productCategory,
S.supplierName,
I.productQuanttity,
T.transactionType,
T.transactionQuantity,
T.transactionDate
from Product P
join Supplier S on P.supplierId = S.suplierID
join Inventory I on P.productID = I.productID
join Transaction T on P.productID = T.productID ;


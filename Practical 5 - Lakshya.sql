USE NP40Book
go

CREATE DATABASE NewNp40Book
go


-- QN 4
CREATE TABLE Bookcat
(
BookCat char(2) not null,
Description varchar(100) not null,
Constraint bookcategory primary key(BookCat)
)
go

-- QN 5
CREATE TABLE Publisher
(
PublisherID smallint NOT NULL,
Name varchar(50) NOT NULL,
Constraint PK_publisherid primary key(PublisherID)
)
go

-- QN 6
CREATE TABLE Book
(
ISBN char(10) NOT NULL,
Title varchar(200) NOT NULL,
YearPublish  char(4)  NOT NULL,
PublisherID smallint NULL,
BookCat char(2) NULL,
constraint FK_bookcat foreign key(BookCat) references BookCat(BookCat),
constraint FK_publisherid foreign key(PublisherID) references Publisher(PublisherID),
constraint PK_ISBN primary key(ISBN)
)
go

-- QN 7
insert into Bookcat
select * from NP40Book.dbo.BookCategory
go

insert into Publisher
select * from NP40Book.dbo.Publisher
go

insert into Book
select * from NP40Book.dbo.Book
go

-- QN 8
insert into Book(ISBN,Title,YearPublish,PublisherID,BookCat)
values
('0385605196','Not the end of the world','2002','4','F'),
('0385605196','The Devil wears Prada','2003','4','F');
go

-- QN 9
insert into Publisher(PublisherID,Name)
values('9','Pearson Prentics Hall');
go

insert into Book(ISBN,Title,YearPublish,PublisherID,BookCat)
values('981244579X','Database','2003',9,'NF');
go

-- QN 10
update Publisher
set Name = 'Happy Day'
where Name like 'Doubleday';
go

-- QN 11
update Bookcat
set Description = 'Comedy'
where Description like 'Children';
go

-- QN 12
update Book
set PublisherID = (select PublisherID from Publisher where Name = 'Addison Wesley'),
BookCat = 'NF'
where Title like 'Database Systems';
go

select b.Title, b.YearPublish, b.PublisherID, p.Name, b.BookCat from Book b
inner join Publisher p 
ON b.PublisherID = p.PublisherID
where b.Title = 'Database Systems';
go

-- QN 13
update Book
set Book.PublisherID = p.PublisherID
from Book b
inner join Publisher p ON p.Name = 'Heinz'
where b.Title = 'The Best of Catherine Lim';
go

-- QN 14
delete from Book
where ISBN = '0072126949';
go

-- QN 15
delete from Book
where PublisherID = 9;
go

delete from Publisher
where PublisherID = 9;
go
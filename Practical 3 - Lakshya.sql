use NP40Book

-- Q1
select b.ISBN, bc.CopyNo, b.Title, bc.RentalRate from BookCopy bc JOIN Book b ON bc.ISBN = b.ISBN;
GO

-- Q2
select b.ISBN, b.Title, bc.BookCat from Book b JOIN BookCategory bc ON b.BookCat = bc.BookCat order by Title asc;
go

-- Q3
select b.BranchNo, b.Address, s.Name from Branch b INNER JOIN Staff s ON b.MgrID = s.StaffID;
go

-- Q4 List the StaffID, Name and DateJoin for all the staff who work for supervisor 'May May'.
select s.StaffID, s.Name, s.DateJoin from Staff s INNER JOIN Staff sc ON s.SupervisorID = sc.StaffID WHERE sc.Name = 'May May';
go

-- Q5
select l.ISBN, b.Title, l.DateOut from Loan l INNER JOIN Book b ON l.ISBN = b.ISBN 
INNER JOIN Member m ON l.MemberID = m.MemberID WHERE m.Name = 'Kumar' 
ORDER BY l.DateOut asc;
go

-- Q6
select b.ISBN, b.Title, a.Name from Book b INNER JOIN BookAuthor ba ON b.ISBN = ba.ISBN 
INNER JOIN Author a ON ba.AuthorID = a.AuthorID 
ORDER BY b.Title ASC;
go

-- Q7
select COUNT(l.LoanNo), SUM(l.RentalRate) from Loan l INNER JOIN Member m ON l.MemberID = m.MemberID WHERE m.Name = 'Jeremy Law';
go

-- Q8

SELECT DISTINCT s.Name from Staff  as s INNER JOIN Staff as sup ON s.StaffID = sup.SupervisorID
ORDER BY sup.Name ASC;
go

-- Q9
SELECT
    B.ISBN,
    B.Title,
    B.YearPublish
FROM
    Book AS B
INNER JOIN
    Publisher AS P ON B.PublisherID = P.PublisherID
INNER JOIN
    BookCategory AS BC ON B.BookCat = BC.BookCat
WHERE
    P.Name = 'Arrow Books'
    AND BC.Description = 'Fiction'
ORDER BY
    B.YearPublish ASC;
GO

-- Q10

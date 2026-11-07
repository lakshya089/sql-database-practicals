/*
PRACTICAL 1

Name: Lakshya
Student No.: s10273110D
Class: P10
*/

USE NP40Book
GO

-- Q1
SELECT * FROM Staff
GO

-- Q2
SELECT * FROM Book
GO

-- Q3 
SELECT StaffID, Name, Gender FROM Staff
GO

-- Q4
SELECT ISBN, Title, PublisherID, BookCat FROM Book
GO

-- Q5
SELECT SupervisorID FROM Staff
GO

-- Q6
SELECT DISTINCT SupervisorID FROM Staff
GO

-- Q7
SELECT ISBN, CopyNo, RentalRate, RentalRate*0.98 AS "New RantalRate" FROM BookCopy
GO

-- Q8
SELECT * FROM Staff ORDER BY Name ASC
GO

-- Q9
SELECT * FROM Staff ORDER BY Name DESC
GO

-- Q10
SELECT BranchNo, Name, Salary FROM Staff ORDER BY BranchNo ASC
GO

-- Q11
SELECT * FROM Member WHERE BranchNo = 1
GO

-- Q12
SELECT * FROM Book WHERE BookCat = 'C'
GO

-- Q13
SELECT * FROM Member WHERE BranchNo = 1 OR BranchNo = 2
GO

-- Q14
SELECT * FROM Book WHERE (BookCat = 'C' OR BookCat = 'F') AND YearPublish > 2000
GO

-- Q15
SELECT * FROM BookCopy WHERE Status = 'D' AND RentalRate > 5
GO

-- Q16
SELECT * FROM Member WHERE DateJoin BETWEEN '2020-01-01' AND '2020-12-30' 
GO

-- Q17
SELECT * FROM Staff WHERE DOB NOT BETWEEN '1994-01-01' AND '1996-06-30' ORDER BY DOB ASC
GO

-- Q18
SELECT * FROM Book WHERE BookCat = 'C' OR BookCat = 'F'
GO

-- Q19
SELECT * FROM Member WHERE BranchNo IN (1,3)
GO

-- Q20
SELECT * FROM Member WHERE Name LIKE '%Tan%'
GO

-- Q21
SELECT * FROM Book WHERE Title LIKE 'DATABASE%'
GO

-- Q22
SELECT * FROM Book WHERE Title LIKE '%DATABASE'
GO

-- Q23
SELECT * FROM Staff WHERE SupervisorID IS NULL
GO

-- Q24
SELECT * FROM Book WHERE BookCat NOT IN ('C','F') OR BookCat IS NULL
ORDER BY YearPublish DESC, BookCat ASC
GO
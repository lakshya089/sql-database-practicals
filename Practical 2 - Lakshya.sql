USE NP40Book
go

-- Q1a
select GETDATE()
go

-- q1b
select MONTH(GETDATE())
go

-- q1c
select FORMAT(GETDATE(),'dddd dd mmm yyyy')
go

-- q1d
select YEAR(GETDATE())
go

--q1e
select FORMAT(GETDATE(),'dddd')
go

-- q2
select MemberID, Name,DateJoin,DATEDIFF(Year,DateJoin,GETDATE()) AS Years_of_Membership From Member ORDER by Years_of_Membership ASC
go

-- q3
select LoanNo, ISBN, CopyNo, MemberID, DATEDIFF(Day,DateDue,DateReturn) AS [Number of days Overdue] FROM Loan WHERE DateReturn > DateDue ORDER BY [Number of days Overdue] DESC
go

-- q4
select StaffID, Name, Gender, DOB FROM Staff WHERE MONTH(DOB) = 2 ORDER BY Name ASC
GO

-- q5
select COUNT(StaffID) FROM Staff
go

-- q6
select COUNT(SupervisorID) FROM Staff
go

-- q7
select COUNT(DISTINCT SupervisorID) FROM Staff
go

-- q8
select COUNT(EmailAddr) FROM Member WHERE EmailAddr IS NOT NULL
go

-- q9
select COUNT(MemberID) - COUNT(EmailAddr) FROM Member
go

-- q10
select MIN(RentalRate) FROM BookCopy
go

-- q11
select COUNT(LoanNo), SUM(RentalRate) FROM Loan WHERE YEAR(DateOut) = 2020
go

-- q12
select COUNT(StaffID), SUM(Salary)*12 AS [Total Annual Salary Payout]  FROM Staff
go

-- q13
select LoanNo, DateDue, DATEADD(day, 10, DateDue) AS [New DateDue] FROM Loan ORDER BY [New DateDue] ASC
go

-- q14
select Name, ISNULL(EmailAddr, 'Email Address Not Available') AS [Email Address] From Member
go

-- q15
select Name, Address, ContactNo From Member WHERE EmailAddr IS NULL AND YEAR(DateJoin) < 2020
go
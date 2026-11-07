use NP40Book;
go

-- Q1
select BranchNo, Count(MemberID) as 'Number of Members' from Member
group by BranchNo;
go

-- q2
select ISBN, count(CopyNo) as 'Number of Copies' from BookCopy
group by ISBN order by count(CopyNo) desc;
go

-- q3
select ISBN, count(CopyNo) as 'Number of Copies' from BookCopy
group by ISBN
having count(CopyNo) > 2 ;
go

-- q4
select BookCat, PublisherID, count(ISBN) from Book
group by BookCat,PublisherID;
go

-- q5
select BranchNo, SupervisorID, count(StaffID) as 'Number of Female Stafs' from Staff
where Gender = 'F' and SupervisorID is not null
group by BranchNo,SupervisorID;
go

-- q6
select p.Name, count(b.ISBN) as 'Number of Books' from Publisher p INNER JOIN Book b ON
p.PublisherID = b.PublisherID
group by p.Name
order by count(b.ISBN) desc;
go

-- q7
select l.ISBN, l.CopyNo, l.DateOut from Loan l INNER JOIN Member m
on l.MemberID = m.MemberID
where m.Name = 'Kumar';
go

-- q8
select Title, YearPublish from Book 
where ISBN IN (select ISBN from BookCopy);
go

-- q9
select ISBN, Title from Book 
where ISBN NOT IN 
(select ISBN from Loan);
go

-- q10
select Name, Salary from Staff
where Salary IN (select MAX(Salary) from Staff);
go

-- q11
select MemberID, Name, Gender from Member
where MemberID in (select MemberID from Loan
group by MemberID having count(ISBN) > 5);
go
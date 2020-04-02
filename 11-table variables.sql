declare @media money

select @media = AVG(p.ListPrice)
from AdventureWorks.[Production].[Product] p

-- temporary tables
declare @tabella table (
	Name nvarchar(50),
	ListPrice money
)

insert into @tabella
select p.Name, p.ListPrice
from AdventureWorks.[Production].[Product] p
where p.ListPrice > @media

-- qui posso fare un'elaborazione anche lunga

select *
from @tabella

go

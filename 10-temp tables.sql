declare @media money

select @media = AVG(p.ListPrice)
from AdventureWorks.[Production].[Product] p

-- temporary tables
create table #prodotti_costosi (
	Name nvarchar(50),
	ListPrice money
)

insert into #prodotti_costosi
select p.Name, p.ListPrice
from AdventureWorks.[Production].[Product] p
where p.ListPrice > @media

-- qui posso fare un'elaborazione anche lunga


drop table #prodotti_costosi

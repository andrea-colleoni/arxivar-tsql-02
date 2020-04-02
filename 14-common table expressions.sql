with prodotti_cari (nome, prezzo, giorni) 
as
(
select 
	p.Name, 
	p.ListPrice,
	p.DaysToManufacture
from AdventureWorks.[Production].[Product] p
where p.ListPrice > 1000
)
-- qui posso fare un'elaborazione anche lunga

select *
from prodotti_cari
where nome like 'R%'

go

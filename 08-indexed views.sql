create or alter view vw_top3_products
with schemabinding -- fa sì che i dati recuperati dalla vista vengano salvato nell'mdf
as
select 
	[ProductID]
	,[Name]
	,[ProductNumber]
	,[MakeFlag]
	,[ListPrice]
	,[Size]
	,rank
from (
SELECT [ProductID]
		,[Name]
		,[ProductNumber]
		,[MakeFlag]
		,[ListPrice]
		,[Size]
		,Rank() OVER (partition by Size order by ListPrice desc) rank
FROM [Production].[Product]
where Size is not null) q
where rank <= 3
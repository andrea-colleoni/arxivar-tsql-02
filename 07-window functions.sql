select *
from (SELECT [ProductID]
		  ,[Name]
		  ,[ProductNumber]
		  ,[MakeFlag]
		  ,ROW_NUMBER() OVER (partition by MakeFlag order by ProductID) rownum
	  FROM [AdventureWorks].[Production].[Product]
	  ) q
where q.rownum <= 10
order by Name
GO

select *
from (
SELECT [ProductID]
		,[Name]
		,[ProductNumber]
		,[MakeFlag]
		,[ListPrice]
		,[Size]
		,Rank() OVER (partition by Size order by ListPrice desc) rank
FROM [AdventureWorks].[Production].[Product]
where Size is not null) q
where rank <= 3

GO

SELECT [ProductID]
		,[Name]
		,[ProductNumber]
		,[MakeFlag]
		,[ListPrice]
		,[Size]
		,Dense_rank() OVER (order by ListPrice desc) rank
FROM [AdventureWorks].[Production].[Product]
where Size is not null

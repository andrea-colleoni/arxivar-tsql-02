/*
select 
	@var1, 
	p.ListPrice,
	p.DaysToManufacture
from AdventureWorks.[Production].[Product] p
where 
	p.ListPrice > 1000
	--and p.Name Like concat(@var1, '%')
*/
declare @var1 nvarchar(max)
declare @var2 int

set @var1 = ' p.Name '
set @var2 = '1'
-- attenzione a sql injection!!

declare @sql nvarchar(max),
		@params nvarchar(max)

-- set @sql = 'select @column from AdventureWorks.[Production].[Product] p where ProductID = @ProductID'-- => NO! + cast(@var2 as varchar)
set @sql = N'select ' + @var1 + ' from AdventureWorks.[Production].[Product] p where ProductID = @ProductID'-- => NO! + cast(@var2 as varchar)
set @params = '@ProductID int, @column nvarchar(max)' -- i parametri si riferiscono ai valori, 
-- non possono essere utilizzati per gli identificatori!!

exec sp_executesql @sql, @params, @ProductID = @var2, @column = @var1
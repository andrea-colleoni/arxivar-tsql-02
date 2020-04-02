declare @var1 int,
		@var2 varchar(10)


set @var1 = 10

set @var2 = CAST(@var1 as varchar)

print @var2

set @var2 = '100'

set @var1 = CAST(@var2 as int)

print @var1
/*
set @var2 = '1oo'

set @var1 = CAST(@var2 as int)

print @var1
*/
set @var2 = CONVERT(varchar, @var1)

print @var2

print convert(varchar, getdate(), 23) -- ISO 8601
--- scalari => insistono su una riga del dataset alla volta, usano 0 o più argomenti e producono un valore

declare @var1 datetime

set @var1 = getdate()

print dateadd(day, -1000, @var1)
print dateadd(hour, -1000, @var1)

set @var1 = '2020-03-31T12:00:00'

print datediff(minute, @var1, getdate())

print datepart(weekday, getdate())

go
print '------------------------------------'

declare @var1 varchar(max)


set @var1 = 'abcdefghijklmnop'

print charindex('b', @var1)

SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
  FROM [AdventureWorks].Production.[Product]
  where charindex('a', name) > 0
		--and name like '%a'

go

declare @search varchar(100)

set @search = '    Adjustable RACE   '
		
SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
  FROM [AdventureWorks].Production.[Product]
  where trim(lower(Name)) = trim(lower(@search))
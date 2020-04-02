-- cursori
declare @prodid int,
		@name varchar(50),
		@number nvarchar(25)

declare curs_prodotti cursor for
SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
FROM [AdventureWorks].Production.[Product]
--where 0=1

open curs_prodotti

fetch next from curs_prodotti
into @prodid, @name, @number

print @@fetch_status

while(@@FETCH_STATUS = 0)
begin
	print CONCAT(@prodid, ' ', @name, ' ', @number)

	fetch next from curs_prodotti
	into @prodid, @name, @number
end

close curs_prodotti

deallocate curs_prodotti

GO


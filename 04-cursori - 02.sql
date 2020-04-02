-- cursori
declare @prodid int,
		@name varchar(50),
		@number nvarchar(25)

declare curs_prodotti cursor for
SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
FROM [AdventureWorks].Production.[Product]
where ProductID = 1

open curs_prodotti

fetch next from curs_prodotti
into @prodid, @name, @number

if(@@FETCH_STATUS = 0) -- se sono riuscito  spostarmi sull'unica riga che mi aspetto
begin
	print CONCAT(@prodid, ' ', @name, ' ', @number)
end

close curs_prodotti

deallocate curs_prodotti

GO


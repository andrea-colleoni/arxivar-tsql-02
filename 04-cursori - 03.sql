-- cursori
declare @prodid int,
		@name varchar(50),
		@number nvarchar(25)


SELECT @prodid=[ProductID]
      ,@name=[Name]
      ,@number=[ProductNumber]
FROM [AdventureWorks].Production.[Product]
where ProductID = 1

if(@prodid is not null) -- se sono riuscito  spostarmi sull'unica riga che mi aspetto
begin
	print CONCAT(@prodid, ' ', @name, ' ', @number)
end

GO
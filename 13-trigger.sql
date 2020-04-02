INSERT INTO [dbo].[persone]
           ([nome]
           ,[cognome]
           ,[numero_ci])
     VALUES
           ('anna'
           ,'rossi'
           ,'345678765')
GO

USE [arxivar-tsql-02]
GO

UPDATE [dbo].[persone]
   SET [nome] = 'modificato'
 WHERE id = 2
GO

delete from persone
where 1=0

select *
from persone
where 1=0

delete from [dbo].[persone]
WHERE id = 2

declare @price money

select @price = ListPrice
from AdventureWorks.Production.Product

print @price

-- sql standard => funzionale
-- t-sql => estensioni procedurali 

declare @variabile int

set @variabile = 1 -- imposta il valore di una variabile
select @variabile = 1
print @variabile
select @variabile

select p.Name
FROM [AdventureWorks].[Production].[Product] p
where p.ProductID = @variabile

declare @testo nvarchar(MAX)

set @testo = N'testo
si può andare a capo....'

declare @data date

set @data = '2020-04-02' -- ISO 8601 (date)
-- CAST (implicito) di varchar su date

print @data
-- CAST (implicito) di date su varchar

-- print 'il valore della variabile è ' + @variabile
PRINT 'il valore della variabile è ' + cast(@variabile as varchar)
-- CAST esplicito
print CONCAT('il valore della variabile è ', @variabile)

print getdate()
declare 
		@var1 int,
		@var2 int,
		@var3 int


set @var1 = 10

print @var1

go -- termina in batch corrente di operazioni
-- qui temina anche lo scope delle variabili dichiarate in questo bacth

print @var1

go
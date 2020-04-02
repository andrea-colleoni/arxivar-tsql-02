declare @var1 int

set @var1 = 0

begin try
	print (10 / @var1)
end try
begin catch
	SELECT  
		ERROR_NUMBER() AS ErrorNumber  
		,ERROR_SEVERITY() AS ErrorSeverity  
		,ERROR_STATE() AS ErrorState  
		,ERROR_PROCEDURE() AS ErrorProcedure  
		,ERROR_LINE() AS ErrorLine  
		,ERROR_MESSAGE() AS ErrorMessage;  
end catch

print 'tutto ok!'

begin try 
	exec sp_ProceduraConErrori @par = 150
end try
begin catch	
	if ERROR_NUMBER() = 50100
	begin
		exec sp_ProceduraConErrori @par = 50
	end
end catch

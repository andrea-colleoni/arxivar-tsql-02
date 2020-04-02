USE [arxivar-tsql-02]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[sp_PrimaProcedure]
		@color = N'Black'

SELECT	'Return Value' = @return_value

GO

EXEC [dbo].[sp_PrimaProcedure]
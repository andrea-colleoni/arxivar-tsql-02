select [dbo].[fn_TestCorso]('ciao ciao', 3)

select *
from exec sp_PrimaProcedure  -- NON posso!!!

select *
from [dbo].[fn_InlineTable](1000)

select *
from [dbo].[fn_MultiStatementTableFn](1000)
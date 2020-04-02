begin transaction

UPDATE [dbo].[persone]
   SET [numero_ci] = 1000
 -- WHERE <Search Conditions,,>


 commit
 rollback

 begin transaction
 delete * from persone

-- bulk insert
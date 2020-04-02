begin transaction

INSERT INTO [dbo].[persone]
           ([nome]
           ,[cognome]
           ,[numero_ci])
     VALUES
           ('mario1'
           ,'verdi'
           ,'00007656')

INSERT INTO [dbo].[persone]
           ([nome]
           ,[cognome]
           ,[numero_ci])
     VALUES
           ('mario2'
           ,'verdi'
           ,'00007656')

INSERT INTO [dbo].[persone]
           ([nome]
           ,[cognome]
           ,[numero_ci])
     VALUES
           ('mario3'
           ,'verdi'
           ,'00007656')
rollback
commit

SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,CASE 
		WHEN [MakeFlag] = 0 THEN 'No'
		WHEN [MakeFlag] = 1 THEN 'Sì'
	   END Flag
	  ,ISNULL(Color, 'Default')
	  ,COALESCE(Size, cast(Weight as varchar), '0')
  FROM [AdventureWorks].Production.[Product]





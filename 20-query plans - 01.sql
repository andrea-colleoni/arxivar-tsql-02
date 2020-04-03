CREATE TABLE ExPlanOperator
( ID INT IDENTITY (1,1),
  First_Name VARCHAR(50),
  Last_name VARCHAR(50),
  Address VARCHAR(MAX)
 )
 GO
 INSERT INTO ExPlanOperator VALUES ('AA','BB','CC')
 GO 1000
  INSERT INTO ExPlanOperator VALUES ('DD','EE','FF')
 GO 1000


CREATE INDEX IX_ExPlanOperator_ID ON ExPlanOperator (ID)
DROP INDEX IX_ExPlanOperator_ID on ExPlanOperator
CREATE CLUSTERED INDEX IX_ExPlanOperator_ID ON ExPlanOperator (ID)

CREATE INDEX IX_ExPlanOperator_FirstName on ExPlanOperator(First_Name)

 select First_Name
 from ExPlanOperator
 --where id < 5
 where First_Name = 'AA'
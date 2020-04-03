CREATE TABLE ExPlanOperator_P2
( ID INT IDENTITY (1,1),
  EmpFirst_Name VARCHAR(50),
  EmpLast_name VARCHAR(50),
  EmpAddress VARCHAR(MAX),
  EmpPhoneNum varchar(50)
 )
 GO
 INSERT INTO ExPlanOperator_P2 VALUES ('AB','BA','CB','123123')
 GO 1000
  INSERT INTO ExPlanOperator_P2 VALUES ('DA','EB','FC','456456')
 GO 1000
 INSERT INTO ExPlanOperator_P2 VALUES ('DC','EA','FB','789789')
 GO 1000

CREATE INDEX IX_ExPlanOperator_P2_EmpFirst_Name ON ExPlanOperator_P2 (EmpFirst_Name)
CREATE CLUSTERED INDEX IX_ExPlanOperator_P2_ID on ExPlanOperator_P2 (ID)

CREATE INDEX IX_ExPlanOperator_P2_EmpFirst_Name ON ExPlanOperator_P2 (EmpFirst_Name) 
INCLUDE (ID,EmpLast_name, EmpAddress, EmpPhoneNum) WITH (DROP_EXISTING = ON)



 SELECT *
 FROM ExPlanOperator_P2 
 --WHERE EmpFirst_Name = 'BB'
--ORDER BY EmpLast_name desc
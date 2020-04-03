/*
Missing Index Details from SQLQuery21.sql - acolleoni-pre01.AdventureWorks (ACOLLEONI-PRE01\andre (62))
The Query Processor estimates that implementing the following index could improve the query cost by 95.1534%.
*/


USE [AdventureWorks]
GO
CREATE NONCLUSTERED INDEX ix_suggerito_da_queryplan
ON [Person].[Person] ([FirstName])
INCLUDE ([Title],[LastName])
GO


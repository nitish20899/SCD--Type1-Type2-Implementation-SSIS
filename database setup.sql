Create database [Cust]
GO

USE [Cust]
GO

CREATE TABLE [dbo].[SCD_Cust_Source](
	[CustId] [int] NOT NULL,
	[CustName] [nvarchar](50) NULL,
	[SSN] [nvarchar](100) NULL
)  
GO

CREATE TABLE [dbo].[SCD_Cust_Destination](
	[CustId] [int] NOT NULL,
	[CustName] [nvarchar](50) NULL,
	[SSN] [nvarchar](100) NULL
)  
GO

ALTER TABLE SCD_Cust_Destination
ADD Active BIT NOT NULL DEFAULT (1)


INSERT INTO [dbo].[SCD_Cust_Source] ([CustId], [CustName], [SSN]) VALUES (1, 'Mahesh', '120-458-8888')
INSERT INTO [dbo].[SCD_Cust_Source] ([CustId], [CustName], [SSN]) VALUES (2, 'Suresh', '888-666-3333')
GO

/* ALTER TABLE SCD_Cust_Destination
DROP COLUMN Active1; */

SELECT * FROM SCD_Cust_Source;
SELECT * FROM SCD_Cust_Destination;
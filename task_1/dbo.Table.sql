CREATE TABLE [dbo].[Table]
(
	[First name] NVARCHAR(50) NOT NULL , 
    [last name] NVARCHAR(50) NOT NULL, 
    [Gender] NCHAR(1) NOT NULL, 
    [Counrty] NVARCHAR(50) NOT NULL, 
    [ID] INT NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY ([ID])
)

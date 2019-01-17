CREATE TABLE [dbo].[Persons]
(
	[ID] INT Identity  NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [Surname] VARCHAR(50) NOT NULL, 
    [Date of Birth] DATE NOT NULL
)

GO

CREATE INDEX [IX_Persons_name_surname] ON [dbo].[Persons] ([Name], [Surname])

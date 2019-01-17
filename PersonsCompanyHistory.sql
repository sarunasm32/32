CREATE TABLE [dbo].[PersonsCompanyHistory]
(
	[PersonID] INT NOT NULL, 
    [DateFrom] DATE NOT NULL, 
    [DateUntil] DATE NOT NULL, 
    [CompanyName] NCHAR(10) NOT NULL, 
    [Salary] MONEY NULL, 
    CONSTRAINT [FK_PersonsCompanyHistory_Persons] FOREIGN KEY ([PersonID]) REFERENCES [Persons]([ID])
		
   
)

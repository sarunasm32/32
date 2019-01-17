CREATE VIEW [dbo].[PersonsCompanysView] as
SELECT Persons.ID,Persons.Name, Persons.Surname, Persons.[Date of Birth], PersonsCompanyHistory.CompanyName,
	   PersonsCompanyHistory.DateFrom,PersonsCompanyHistory.DateUntil, PersonsCompanyHistory.Salary

FROM [Persons] 
Left Join PersonsCompanyHistory On PersonsCompanyHistory.PersonID=Persons.ID

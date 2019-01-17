CREATE PROCEDURE [dbo].[InsertNewEmployment]
@PersonID int,
@DateFrom date,
@DateUntil date,
@Companyname nchar(10),
@Salary money
AS
	Insert INTO PersonsCompanyHistory (PersonID,DateFrom,DateUntil,CompanyName,Salary)
	Values (@PersonID,@DateFrom,@DateUntil,@Companyname,@Salary)
RETURN 0

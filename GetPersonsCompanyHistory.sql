CREATE FUNCTION [dbo].[GetPersonsCompanyHistory]
(
	@Surname varchar(50)
)
RETURNS @returntable table
(
	name varchar(50),
	surname varchar(50),
	companyName nchar(10),
	dateFrom date,
	dateuntil date,
	salary money


)
AS
BEGIN
	INSERT @returntable
	SELECT PersonsCompanysView.name,PersonsCompanysView.surname,PersonsCompanysView.companyname,PersonsCompanysView.datefrom,PersonsCompanysView.dateuntil,PersonsCompanysView.salary from PersonsCompanysView
	where PersonsCompanysView.Surname like @surname+'%'
	RETURN
END

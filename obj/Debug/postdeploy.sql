/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [Database2]
GO

INSERT INTO [dbo].[Persons]
           ([Name]
           ,[Surname]
           ,[Date of Birth])
     VALUES
           ('Simonas','antanaitis','1996-03-03'),
('Vytautas', 'Jakutis','1998-05-05'),
('Vygaile','Jakutiene','1999-05-02'),
('Monika','Vilhlemiene','1987-05-03'),
('Ugne','Aliejunaite','1979-02-11'),
('antanas','Nedzinskas','1936-07-09'),
('Jonas','Sodaitis','1945-05-09'),
('Raminta','Sodaitiene','1974-09-25'),
('Git','Duncan','1996-05-15')
GO


select * 
into #tempas
from( 
select (select id from persons where name ='Simonas' and Surname='Antanaitis') as id ,'2017-03-03' as date_from,'2018-09-27' as date_till ,'sanitex' as company,5000 as salary
union all
select (select id from persons where name ='Vytautas' and Surname='Jakutis') as id ,'2014-06-02' as date_from,'2018-12-20' as date_till ,'seraja' as company,800 as salary
union all
select (select id from persons where name ='Vygaile' and Surname='jakutiene') as id ,'2012-05-01' as date_from,'2019-01-01' as date_till ,'limedika' as company,1000 as salary
union all
select (select id from persons where name ='Monika' and Surname='Vilhlemiene') as id ,'2017-01-01' as date_from,'2018-12-20' as date_till ,'autohause' as company,0 as salary
union all
select (select id from persons where name ='ugne' and Surname='Aliejunaite') as id ,'2000-06-12' as date_from,'2018-12-20' as date_till ,'koyarelo' as company,5000 as salary
union all
select (select id from persons where name ='antanas' and Surname='nedzinskas') as id ,'1996-06-12' as date_from,'2018-09-01' as date_till ,'sanitex' as company,300 as salary
union all
select (select id from persons where name ='jonas' and Surname='sodaitis') as id ,'1999-02-03' as date_from,'2018-09-03' as date_till ,'autohouse' as company,3000 as salary
union all
select (select id from persons where name ='raminta' and Surname='sodaitiene') as id ,'2019-01-03' as date_from,'2019-01-06' as date_till ,'limedika' as company,300 as salary
union all
select (select id from persons where name ='git' and Surname='duncan') as id ,'2015-02-03' as date_from,'2019-01-12' as date_till ,'limedika' as company,5000 as salary

) x

INSERT INTO PersonsCompanyHistory ([PersonID]
           ,[DateFrom]
           ,[DateUntil]
           ,[CompanyName]
           ,[Salary])
SELECT id,date_from,date_till,company,salary
FROM #tempas

-- ended deploiment


GO

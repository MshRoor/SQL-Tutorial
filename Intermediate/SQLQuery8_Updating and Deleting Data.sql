Select *
from SQLTutorial.dbo.EmployeeDemographics

Update SQLTutorial.dbo.EmployeeDemographics
Set EmployeeID = 1012, Age = 31, Gender = 'Female'
Where FirstName = 'Holly' And LastName = 'Flax'

Delete From SQLTutorial.dbo.EmployeeDemographics
where EmployeeID = 1005

Insert into SQLTutorial.dbo.EmployeeDemographics VALUES
(1005, 'Toby', 'Flenderson', 32, 'Male')
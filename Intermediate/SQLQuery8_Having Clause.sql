Select JobTitle, Count(JobTitle)
from SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
Having Count(JobTitle) > 1

Select JobTitle, AVG(Salary)
from SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
Having Avg(Salary) > 45000
Order by AVG(Salary)

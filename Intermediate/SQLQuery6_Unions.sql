--select *
--from SQLTutorial..EmployeeDemographics
--full outer join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	on	SQLTutorial..EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--select *
--from SQLTutorial..EmployeeDemographics
--union --joins the two tables and removes duplicates
--select *
--from SQLTutorial.dbo.WareHouseEmployeeDemographics
--order by EmployeeID

select *
from SQLTutorial..EmployeeDemographics
union all --does not remove duplicates
select *
from SQLTutorial.dbo.WareHouseEmployeeDemographics
order by EmployeeID

--DON'T DO THE FOLLOWING
select EmployeeID, FirstName, Age
from SQLTutorial..EmployeeDemographics
union
select *
from EmployeeSalary
order by EmployeeID
--select *
--from EmployeeDemographics
--full outer join SQLTutorial.dbo.WareHouseEmployeeDemographics
--	on	EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--select *
--from EmployeeDemographics
--union --joins the two tables and removes duplicates
--select *
--from SQLTutorial.dbo.WareHouseEmployeeDemographics
--order by EmployeeID

select *
from EmployeeDemographics
union all --does not remove duplicates
select *
from SQLTutorial.dbo.WareHouseEmployeeDemographics
order by EmployeeID

--DON'T DO THE FOLLOWING
select EmployeeID, FirstName, Age
from EmployeeDemographics
union
select *
from EmployeeSalary
order by EmployeeID
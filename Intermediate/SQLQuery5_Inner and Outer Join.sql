--select *
--from EmployeeDemographics

--select *
--from EmployeeSalary

--select *
--from EmployeeDemographics
--inner join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select *
--from EmployeeDemographics
--full outer join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select *
--from EmployeeDemographics
--left outer join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select *
--from EmployeeDemographics
--right outer join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--from EmployeeDemographics
--left outer join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--from EmployeeDemographics
--right outer join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--from EmployeeDemographics
--inner join EmployeeSalary
--	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--where FirstName <> 'Michael'
--order by salary desc

select JobTitle, Avg(Salary) as AvgSalesmanSalary
from EmployeeDemographics
inner join EmployeeSalary
	on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle = 'Salesman'
group by JobTitle



Drop Table If Exists #temp_Employee
Create Table #temp_Employee(
EmployeeID int,
JobTitle varchar(50),
Salary int,
)

Select *
From #temp_Employee

Insert into #temp_Employee Values 
(1001, 'HR', 45000)

Insert into #temp_Employee
Select *
From SQLTutorial..EmployeeSalary

Select *
From #temp_Employee

Drop Table If Exists #temp_Employee2
Create Table #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

Insert into #Temp_Employee2
Select JobTitle, Count(JobTitle), AVG(Age), Avg(Salary)
From SQLTutorial..EmployeeDemographics As Demo
Join SQLTutorial..EmployeeSalary As Sal
	On Demo.EmployeeID = Sal.EmployeeID
Group by JobTitle

Select *
From #Temp_Employee2


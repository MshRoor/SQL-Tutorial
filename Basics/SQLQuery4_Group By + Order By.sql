/*
Group by, Order by
*/

select Gender, count(Gender) as GenderCount
from EmployeeDemographics
group by Gender

select Gender, Age, count(Gender) as GenderCount
from EmployeeDemographics
group by Gender, Age

select Gender, Age, count(Gender) as GenderCount
from EmployeeDemographics
where Age > 35
group by Gender, Age

select Gender, Age, count(Gender) as GenderCount
from EmployeeDemographics
group by Gender, Age
order by Age DESC --by default it is set to ASC

select *
from EmployeeDemographics
order by 4 desc, 5 asc --you can specify columns with their column numbers
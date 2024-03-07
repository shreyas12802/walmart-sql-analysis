	select * 
from PortfolioProject..WalmartSales

--Find number of unique cities

Select City
From PortfolioProject..WalmartSales
Group by City

--Find where each branch is located

Select Branch, Max(City) As City
From PortfolioProject..WalmartSales
Group by Branch
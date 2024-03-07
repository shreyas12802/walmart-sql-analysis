select * 
from PortfolioProject..WalmartSales	


--Number of sales made in each time of the day per weekday

select Time_of_day, sum(Quantity) As total_sales 
from PortfolioProject..WalmartSales	
Group by Time_of_day
order by Total_sales desc

-- Which type of customer brings in max revenue

select [Customer type], sum(Total) As total_revenue 
from PortfolioProject..WalmartSales	
Group by [Customer type]
order by Total_revenue desc

--Which city has the largest tax percent/ VAT (Value Added Tax)?

select City, sum([Tax 5%]) As total_tax 
from PortfolioProject..WalmartSales	
Group by City
order by Total_tax desc

--Which customer type pays the most in VAT?
select [Customer type], sum([Tax 5%]) As total_tax 
from PortfolioProject..WalmartSales	
Group by [Customer type]
order by Total_tax desc

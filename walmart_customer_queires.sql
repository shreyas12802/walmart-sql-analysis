--How many unique customer types does the data have?

Select Distinct [Customer type]
from PortfolioProject..WalmartSales	

--How many unique payment methods does the data have?

Select Distinct Payment
from PortfolioProject..WalmartSales	

--What is the most common customer type?

Select [Customer type], Count([Customer type]) as No_of_customers
from PortfolioProject..WalmartSales	
group by [Customer type]

--Which customer type buys the most?

Select [Customer type], sum(Quantity) as Sales
from PortfolioProject..WalmartSales	
group by [Customer type]
order by Sales desc

--What is the gender of most of the customers?

Select Gender, count(gender) as count_gen
from PortfolioProject..WalmartSales	
group by Gender


--What is the gender distribution per branch?

Select Branch, Gender, count(gender) as count_gen
from PortfolioProject..WalmartSales	
group by Branch,Gender

--Which time of the day do customers give most ratings?

Select Time_of_day, avg(Rating) as avg_rat
from PortfolioProject..WalmartSales	
group by Time_of_day
order by avg_rat desc


--Which time of the day do customers give most ratings per branch?

Select Time_of_day,Branch, avg(Rating) as avg_rat
from PortfolioProject..WalmartSales	
group by Time_of_day,Branch
order by avg_rat desc

--Which day fo the week has the best avg ratings?

Select Day, avg(Rating) as avg_rat
from PortfolioProject..WalmartSales	
group by Day
order by avg_rat desc

--Which day of the week has the best average ratings per branch?

Select Day,Branch, avg(Rating) as avg_rat
from PortfolioProject..WalmartSales	
group by Day,Branch
order by avg_rat desc

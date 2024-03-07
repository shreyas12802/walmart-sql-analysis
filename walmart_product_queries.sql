select * 
from PortfolioProject..WalmartSales

--Find out number of unique products

Select [Product line]
From PortfolioProject..WalmartSales
Group by [Product line]

--Find out most common method of payment

Select [Payment], sum(Total) As [Payment_value]
From PortfolioProject..WalmartSales
Group by [Payment]
order by [Payment_value] desc

--Find out the most selling product line
Select [Product line], sum(Quantity) as [Product_sales]
From PortfolioProject..WalmartSales
Group by [Product line]
order by [Product_sales] desc


--Find out total revenue by month
Select Month, sum(Total) As Month_total
From PortfolioProject..WalmartSales
Group by Month
order by Month_total desc

-- Find the month with the largest cogs
Select Month, sum(cogs) As Month_total
From PortfolioProject..WalmartSales
Group by Month
order by Month_total desc

-- Product line with most revenue
Select [Product line], sum(Total) as [Product_revenue]
From PortfolioProject..WalmartSales
Group by [Product line]
order by [Product_sales] desc

-- Find out which city has the largest revenue
Select [City], sum(Total) as [Product_sales]
From PortfolioProject..WalmartSales
Group by [City]
order by [Product_sales] desc

--Product line with the most tax
Select [Product line], sum([Tax 5%]) as [Product_tax_total]
From PortfolioProject..WalmartSales
Group by [Product line]
order by [Product_tax_total] desc

-- Fetch each product line and add a column to those product line showing "Good", "Bad". Good if its greater than average sale
Select avg(Quantity) as Avg_sale
From PortfolioProject..WalmartSales

Select [Product line],avg(Quantity) As avg_quantity,
Case
	When avg(Quantity)>5.51 Then 'Good'
	Else 'bad'
End As Remark
From PortfolioProject..WalmartSales
Group by [Product line]

-- which branch sold more than the average sales

Select [Branch],avg(Quantity) As avg_quantity,
Case
	When avg(Quantity)>5.51 Then 'Above'
	Else 'below'
End As Remark
From PortfolioProject..WalmartSales
Group by [Branch]

-- What is the most common product line by gender?

Select [Product line],Gender,count(Gender) As cnt_gen
From PortfolioProject..WalmartSales
Group by [Product line],Gender
order by cnt_gen desc

--What is the average rating of each product line?
	
Select [Product line],avg(Rating) As average_rating
From PortfolioProject..WalmartSales
Group by [Product line]
order by average_rating desc


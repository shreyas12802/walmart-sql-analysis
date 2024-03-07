select * 
from PortfolioProject..WalmartSales	

Alter Table PortfolioProject..WalmartSales
Drop Column Time

--Add new column to calculate time of day

Alter Table PortfolioProject..WalmartSales
Add Time_of_day varchar(50)

Update PortfolioProject..WalmartSales
Set Time_of_day = (
Case
	When Time_calc >='04:00:00' And Time_calc <'11:00:00' Then 'Morning'
	When Time_calc >='11:00:00' And Time_calc <'16:00:00' Then 'Afternoon'
	When Time_calc >='16:00:00' And Time_calc <'21:00:00' Then 'Evening'
	When Time_calc >='21:00:00' Or Time_calc <'04:00:00' Then 'Night'
End)

-- ADD a day column

Alter Table PortfolioProject..WalmartSales
Add Day varchar(50)

Update PortfolioProject..WalmartSales
Set day = (
Case
    When DATEPART(WEEKDAY, Date) = 2 Then 'Monday'
	When DATEPART(WEEKDAY, Date) = 3 Then 'Tuesday'
	When DATEPART(WEEKDAY, Date) = 4 Then 'Wednesday'
	When DATEPART(WEEKDAY, Date) = 5 Then 'Thursday'
	When DATEPART(WEEKDAY, Date) = 6 Then 'Friday'
	When DATEPART(WEEKDAY, Date) = 7 Then 'Saturday'
	When DATEPART(WEEKDAY, Date) = 1 Then 'Sunday'
End	)

-- Add month column

Alter Table PortfolioProject..WalmartSales
Add Month varchar(50)

Update PortfolioProject..WalmartSales
Set Month = (
Case
	When MONTH(Date) = 1 Then 'January'
	When MONTH(Date) = 2 Then 'February'
	When MONTH(Date) = 3 Then 'March'
	When MONTH(Date) = 4 Then 'April'
	When MONTH(Date) = 5 Then 'May'
	When MONTH(Date) = 6 Then 'June'
	When MONTH(Date) = 7 Then 'July'
	When MONTH(Date) = 8 Then 'August'
	When MONTH(Date) = 9 Then 'September'
	When MONTH(Date) = 10 Then 'October'
	When MONTH(Date) = 11 Then 'November'
	When MONTH(Date) = 12 Then 'December'
End)

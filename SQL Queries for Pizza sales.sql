--SELECT * FROM pizza_sales
-- 1 SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales

-- 2 SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value FROM pizza_sales

-- 3 SELECT SUM(quantity) AS 'Total pizza sold' FROM pizza_sales

-- 4 SELECT COUNT(DISTINCT order_id) AS 'Total Orders' FROM pizza_sales

-- 5 SELECT CAST (CAST(SUM(quantity) AS decimal(10,2)) / 
--	   CAST(COUNT(DISTINCT order_id) AS decimal (10,2)) AS decimal (10,2)) AS 'Avg Pizza per Order' FROM pizza_sales

/*6 Daily Trend for Total Orders
	SELECT DATENAME(DW, order_date) AS Order_Day, COUNT(DISTINCT order_id) AS Total_Orders
	FROM pizza_sales
		GROUP BY DATENAME(DW, order_date)*/
/*7 Monthly Trend
	SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) AS Total_orders
	FROM pizza_sales
		GROUP BY DATENAME(MONTH, order_date)*/

/*8 % of sales by pizza category
	SELECT pizza_category, SUM(total_price) as Total_Sales, SUM(total_price) * 100 / 
	(SELECT SUM(total_price) FROM pizza_sales) AS PCT
	FROM pizza_sales
	GROUP BY pizza_category */

/*9 % of sales by pizza size	
	SELECT pizza_size, SUM(total_price) as Total_Sales, CAST(SUM(total_price) * 100 / 
	(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) PCT
	FROM pizza_sales
	GROUP BY pizza_size
	ORDER BY pizza_size*/

/*10 Top 5 and Bottom 5(DESC) best sellers pizza
	SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue  FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY Total_Revenue */

/*10 Top 5(DESC) and Bottom 5 best sellers pizza by revenue
	SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Quantity  FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY Total_Quantity DESC */

/*Top 5(DESC) and Bottom 5 best sellers pizza by revenue
SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders  FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY Total_Orders */
	






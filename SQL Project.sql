use ss;
select * from superstore;

#1.Top Sales per Customer

select customer_ID,customer_name as name , round(sum(sales)) as Total_sales
from superstore group by customer_ID , customer_name 



#2.Average Discount by Product Category

select  Category ,avg(Discount) as Average_discount
from superstore group by Category






#3.Top 5 Cities by Total Sales

select City , sum(sales) as Total_sales
from superstore group by City 
order by Total_sales desc limit 5;





 #4.Product with sales greater than $5000
 
 select Product_Name , round(sum(sales)) as Total_sales
from superstore group by Product_Name
having Total_sales > 5000



 #5.Number of Orders per Shipping Mode
 
 select Ship_Mode , count(Order_id) as Total_Orders   
 from superstore group by Ship_Mode
 
 
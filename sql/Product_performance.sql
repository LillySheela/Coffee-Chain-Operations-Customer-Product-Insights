USE coffeeshop;
WITH store_index AS (SELECT sales_outlet_id,POSITION(" " IN store_address) AS ind FROM sales_outlet)
SELECT 
s.product_ID,
s.transaction_date,
p.product,
p.product_group,
p.product_category,
p.product_type,
SUM(s.quantity) AS quantity,
ROUND(SUM(s.line_item_amount),2) AS sales,
s.sales_outlet_id,
SUBSTRING(so.store_address, s_i.ind+1) AS store_street,
so.store_city
FROM sales s JOIN product p
ON s.product_id=p.product_id
JOIN sales_outlet so
ON s.sales_outlet_id=so.sales_outlet_id
JOIN store_index s_i
ON s.sales_outlet_id=s_i.sales_outlet_id
GROUP BY 1,2,3,4,5,6,9,10,11;

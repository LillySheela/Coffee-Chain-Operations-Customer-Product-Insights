WITH cte AS (
SELECT customer_id,SUM(cc) AS freq
FROM(
SELECT customer_id,transaction_date, COUNT(customer_id) AS cc
 FROM sales
GROUP BY customer_id,transaction_date) temp
GROUP BY customer_id)
SELECT c.customer_id,c.home_store,so.store_address,so.store_city,
		c.cust_name,c.customer_email,
        c.loyalty_card_number,
        CASE 
        WHEN c.gender='M' THEN 'Male'
        WHEN c.gender='F' THEN 'Female'
        ELSE 'Not Disclosed' END AS gender,
        c.customer_since,c.birthdate,
        CASE 
        WHEN c.birthdate >='1946-01-01' AND c.birthdate <='1964-12-31'
			THEN 'Baby Boomers'
		WHEN c.birthdate >='1965-01-01' AND c.birthdate <='1979-12-31'
			THEN 'Gen X'
		WHEN c.birthdate >='1980-01-01' AND c.birthdate <='1989-12-31'
			THEN 'Older Millenials'
		WHEN c.birthdate >='1990-01-01' AND c.birthdate <='1994-12-31'
			THEN 'Younger Millenials'
		WHEN c.birthdate >='1995-01-01'
			THEN 'Gen Z'
	    END AS cust_category,
        s.product_id,p.product,p.product_type,p.product_category,
        cte.freq AS purchase_frequency
	FROM customer c 
    JOIN sales_outlet so ON c.home_store=so.sales_outlet_id
    JOIN sales s ON c.customer_id=s.customer_id
    JOIN product p ON s.product_id=p.product_id
    JOIN cte ON c.customer_id=cte.customer_id;
    
        
        
        
            
SELECT pi.sales_outlet_id,so.store_address,so.store_city,
		pi.transaction_date,pi.product_id,p.product,p.product_type,
        pi.start_of_day AS quantity_made,pi.quantity_sold,ROUND((waste/start_of_day)*100) AS wastage,
        DAYNAME(transaction_date) AS day,
        CASE
			WHEN  DAYNAME(transaction_date) IN ("Saturday","Sunday") THEN "Weekend"
            ELSE "Weekday"
		END AS day_categ
FROM pastry_inventory pi INNER JOIN sales_outlet so
ON pi.sales_outlet_id=so.sales_outlet_id
JOIN product p
ON pi.product_id=p.product_id;

SELECT
        c.first_name,
        c.last_name,
        c.email_address,
        COUNT(o.order_id) AS total_orders,
        SUM(o.total_amount) AS total_money_spent
    FROM
        customers c, orders o 
    where  c.customer_id = o.customer_id
    GROUP BY
       c.customer_id,
       c.first_name,
       c.last_name,
       c.email_address,
	 c.phone_number
   ORDER BY
       total_money_spent DESC
   ;
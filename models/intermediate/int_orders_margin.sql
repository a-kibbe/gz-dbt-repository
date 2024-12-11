SELECT
    orders_id
    , date_date
    , ROUND(SUM(revenue),2) revenue
    , ROUND(SUM(quantity),2) quantity
    , ROUND(SUM(purchase_cost),2) purchase_cost
    , ROUND(SUM(margin),2) margin
FROM 
{{ref("int_sales_margin")}} as sales_marg
GROUP BY orders_id, date_date
ORDER BY orders_id DESC
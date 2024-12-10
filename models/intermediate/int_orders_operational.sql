SELECT
    orders_id
    , date_date
    , ROUND((margin + shipping_fee - logcost - ship_cost),2) operational_margin
FROM
{{ref("int_orders_margin")}} ord_marg
LEFT JOIN
{{ref("stg_raw__ship")}} ship
USING
    (orders_id)
ORDER BY orders_id DESC

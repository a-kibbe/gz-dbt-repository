SELECT
    orders_id
    , date_date
    , revenue
    , purchase_cost
    , ROUND((margin + shipping_fee - logcost - ship_cost),2) operational_margin
    , quantity
    , margin
    , logcost
    , ship_cost
    , shipping_fee
FROM
{{ref("int_orders_margin")}} ord_marg
LEFT JOIN
{{ref("stg_raw__ship")}} ship
USING
    (orders_id)
ORDER BY orders_id DESC

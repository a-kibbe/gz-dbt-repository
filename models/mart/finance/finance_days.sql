SELECT
    date_date
    , COUNT(orders_id) nb_transactions
    , ROUND(SUM(revenue), 1) revenue
    , ROUND((SUM(revenue)/COUNT(orders_id)),1) average_basket
    , ROUND(SUM(margin),1) margin
    , ROUND(SUM(operational_margin), 1) operational_margin
    , ROUND(SUM(purchase_cost), 1) purchase_cost
    , ROUND(SUM(shipping_fee), 1) shipping_fee
    , ROUND(SUM(logcost), 1) logcost
    , ROUND(SUM(quantity), 1) quantity
FROM
{{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC
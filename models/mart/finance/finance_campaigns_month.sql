SELECT
    CONCAT(FORMAT_DATE('%Y-%m', date_date), '-01') as datemonth
    -- CONCAT(LEFT(CAST(date_date AS STR), 7), '-01') as datemonth
    --EXTRACT(YEAR-MONTH FROM date_date) as datemonth
    --  CONCAT(EXTRACT(YEAR from date_date), '-' , EXTRACT(MONTH from date_date)) as datemonth
--    FORMAT_DATE(date_date, "%Y-%M") as datemonth
    , ROUND(SUM(ads_margin), 1) ads_margin
    , ROUND(SUM(average_basket), 1) average_basket
    , ROUND(SUM(operational_margin), 1) operational_margin
    , ROUND(SUM(ads_cost), 1) ads_cost
    , ROUND(SUM(ads_impression), 1) ads_impression
    , ROUND(SUM(ads_clicks), 1) ads_clicks
    , ROUND(SUM(quantity), 1) quantity
    , ROUND(SUM(revenue), 1) revenue
    , ROUND(SUM(purchase_cost), 1) purchase_cost
    , ROUND(SUM(margin), 1) margin
    , ROUND(SUM(shipping_fee), 1) shipping_fee
    , ROUND(SUM(logcost), 1) logcost
    , ROUND(SUM(ship_cost), 1) ship_cost
FROM
{{ ref("finance_campaign_day") }}
GROUP BY datemonth
ORDER BY datemonth DESC

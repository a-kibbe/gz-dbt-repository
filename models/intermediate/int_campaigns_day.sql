SELECT
    date_date
    , SUM(ads_cost) ads_cost
    , SUM(impression) ads_impression
    , SUM(click) ads_clicks
FROM
{{ ref ("int_campaigns") }}
GROUP BY date_date
ORDER BY date_date DESC
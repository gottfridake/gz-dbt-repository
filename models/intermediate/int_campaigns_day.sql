SELECT
    date_date
    ,SUM(ads_cost) AS ads_cost
    ,SUM(ads_impressions) AS ads_impressions
    ,SUM(ads_clicks) AS ads_clicks
FROM {{ref('int_campaigns')}}
GROUP BY date_date

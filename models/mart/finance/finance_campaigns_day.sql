SELECT
    campaign.date_date
    ,SUM(campaign.ads_cost) AS ads_cost
    ,SUM(campaign.ads_impressions) AS ads_impressions
    ,SUM(campaign.ads_clicks) AS ads_clicks
    ,SUM(finance.operational_margin) - SUM(campaign.ads_cost) AS ads_margin
FROM {{ref('int_campaigns_day')}} AS campaign
INNER JOIN 
{{ref('finance_days')}} AS finance
on campaign.date_date = finance.date_date
GROUP BY date_date
with 

source as (

    select * from {{ source('raw', 'adverts') }}

),

renamed as (

    select
    date_date
    ,paid_source
    ,campaign_key
    ,camPGN_name AS campaign_name
    ,CAST(ads_cost AS FLOAT64) AS ads_cost
    ,impression AS ads_impressions
    ,click AS ads_clicks

    from source

)

select * from renamed

with 

source as (
    select * from {{ source('raw', 'product') }}

),

renamed as (

    SELECT
    products_id
    ,CAST (purchSE_PRICE as FLOAT64) AS Purchase_price

    from source

)

select * from renamed

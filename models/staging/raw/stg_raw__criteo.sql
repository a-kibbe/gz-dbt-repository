with 

source as (

    select * from {{ source('raw', 'criteo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaign_name,
        CAST (ads_cost AS FLOAT64) ads_cost,
        impression,
        click

    from source

)

select * from renamed

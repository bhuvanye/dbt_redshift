{{ config(materialized='table') }}

with source_person_data as (
    select * from {{ source('model1', 'dbt_person_details')}}
),

final as (
    select * from source_person_data
)

select * from final
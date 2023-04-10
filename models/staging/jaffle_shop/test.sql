with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `regal-height-378500`.`dbt_bigquery`.`stg_orders`
    group by status

)

select *
from all_values
where value_field not in (
    'completed','shipped','returned'
)

{{
    config(
        materialized = "incremental"
    )
}}

select * from
{{ref('clean_customer')}}
where c_mktsegment = 'MACHINERY'

{% if is_incremental() %}
    and updated_at > (select max(updated_at) from {{this}})
{% endif %}
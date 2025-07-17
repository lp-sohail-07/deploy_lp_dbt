{{
    config(
        materialized = "table"
    )
}}

select * from
tpcds_data.dev_schema.raw_customer
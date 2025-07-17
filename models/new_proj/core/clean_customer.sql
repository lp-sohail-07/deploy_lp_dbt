{{
    config(
        materialized = "table"
    )
}}


select s.*,n.n_name as nation_name from
{{ref('stg_customer')}} s
inner join tpcds_data.dev_schema.nations n
on s.c_nationkey = n.n_nationkey
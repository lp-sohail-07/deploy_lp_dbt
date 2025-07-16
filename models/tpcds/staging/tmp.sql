{{
    codegen.generate_source(
        name="tpcds",
        database_name = "tpcds_data",
        schema_name = "RAW_SCHEMA",
        generate_columns = 'true'
    )
}}
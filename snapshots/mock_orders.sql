{% snapshot mock_orders %}

{{
    config(
      target_database='developer_poc',
      target_schema='hew_poc_snapshot',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from {{ source('hew_shop', 'mock_orders') }}

{% endsnapshot %}
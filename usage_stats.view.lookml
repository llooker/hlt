- view: usage_stats
  fields:

  - dimension: android
    type: number
    value_format_name: id
    sql: ${TABLE}.android

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: ios
    type: number
    sql: ${TABLE}.ios

  - dimension: stat_type
    type: string
    sql: ${TABLE}.stat_type

  - measure: count
    type: count
    drill_fields: []


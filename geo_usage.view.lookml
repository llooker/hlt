- view: geo_usage
  fields:

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: geo
    type: string
    sql: ${TABLE}.geo

  - dimension: usage
    type: number
    sql: ${TABLE}.usage

  - measure: usage_total
    type: sum
    sql: ${usage}
    
  - measure: count
    type: count
    drill_fields: []


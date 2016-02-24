- view: net_promotor_score
  fields:

  - dimension: company
    type: string
    sql: ${TABLE}.company

  - dimension_group: date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.date

  - dimension: percent
    type: number
    sql: ${TABLE}.percent
    
  - measure: percent_score
    type: sum
    sql: ${percent}
    value_format: '#0.0%'

  - measure: count
    type: count
    drill_fields: []


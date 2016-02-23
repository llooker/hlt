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

  - measure: count
    type: count
    drill_fields: []


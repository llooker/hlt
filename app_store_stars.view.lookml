- view: app_store_stars
  fields:

  - dimension: app_name
    type: string
    sql: ${TABLE}.app_name

  - dimension_group: last_updated
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_updated

  - dimension: star1
    type: number
    sql: ${TABLE}.star1

  - dimension: star2
    type: number
    sql: ${TABLE}.star2

  - dimension: star3
    type: number
    sql: ${TABLE}.star3

  - dimension: star4
    type: number
    sql: ${TABLE}.star4

  - dimension: star5
    type: number
    sql: ${TABLE}.star5

  - dimension: store
    type: string
    sql: ${TABLE}.store

  - measure: count
    type: count
    drill_fields: [app_name]


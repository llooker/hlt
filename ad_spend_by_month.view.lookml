- view: ad_spend_by_month
  fields:

  - dimension: amount_spent
    type: number
    sql: ${TABLE}.amount_spent

  - dimension: app
    type: string
    sql: ${TABLE}.app

  - dimension: campaign_name
    type: string
    sql: ${TABLE}.campaign_name

  - dimension: campaign_type
    type: string
    sql: ${TABLE}.campaign_type

  - dimension: clicks
    type: number
    sql: ${TABLE}.clicks

  - dimension: cost_per_result
    type: number
    sql: ${TABLE}.cost_per_result

  - dimension: cpc
    type: number
    sql: ${TABLE}.cpc

  - dimension: cpc_all_usd
    type: number
    sql: ${TABLE}.cpc_all_usd

  - dimension: cpm_cost_per_1000
    type: number
    sql: ${TABLE}.cpm_cost_per_1000

  - dimension: ctr
    type: number
    sql: ${TABLE}.ctr

  - dimension: ctr_2
    type: number
    sql: ${TABLE}.ctr_2

  - dimension: delivery
    type: string
    sql: ${TABLE}.delivery

  - dimension: ends
    type: string
    sql: ${TABLE}.ends

  - dimension: frequency
    type: number
    sql: ${TABLE}.frequency

  - dimension: impressions
    type: number
    sql: ${TABLE}.impressions

  - dimension: link_clicks
    type: number
    sql: ${TABLE}.link_clicks

  - dimension_group: month
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.month

  - dimension: reach
    type: number
    sql: ${TABLE}.reach

  - dimension_group: reporting_ends
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.reporting_ends

  - dimension_group: reporting_starts
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.reporting_starts

  - dimension: result_type
    type: string
    sql: ${TABLE}.result_type

  - dimension: results
    type: number
    sql: ${TABLE}.results

  - dimension: video_yesno
    type: string
    sql: ${TABLE}.video_yesno

  - measure: count
    type: count
    drill_fields: [campaign_name]


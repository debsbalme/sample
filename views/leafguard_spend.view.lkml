view: leafguard_spend {
  sql_table_name: `johnson-and-johnson-339515.complete_data.Leafguard_Spend`
    ;;

  dimension: campaign_objective_type {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: Account {
    type: string
    sql: ${TABLE}.Accountname ;;
  }

  measure: cost {
    sql: ${TABLE}.cost ;;
    type: sum
    value_format: "$#,##0"
  }

  measure: CPL {
    sql: ${TABLE}.cost /NULLIF(${TABLE}.leads,0) ;;
    type: sum
    value_format: "$#,##0"
  }


  dimension_group: date {
    type: time
    description: "%E4Y-%m-%d"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  measure: leads {
    sql: ${TABLE}.leads ;;
    type: sum
    value_format: "#,##0"
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: targeting_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.WEEK ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

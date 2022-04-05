view: leafguard_spend {
  sql_table_name: `johnson-and-johnson-339515.complete_data.LeafguardSpend`
    ;;

  dimension: campaign_objective_type {
    type: string
    sql: ${TABLE}.campaign_objective_type ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  measure: cost {
    sql: ${TABLE}.cost ;;
    type: sum
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
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: targeting_type {
    type: string
    sql: ${TABLE}.Targeting_Type ;;
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

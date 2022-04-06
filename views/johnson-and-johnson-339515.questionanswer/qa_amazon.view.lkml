view: qa_amazon {
  sql_table_name: `johnson-and-johnson-339515.questionanswer.qa_amazon`
    ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

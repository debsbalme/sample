view: amazon {
  sql_table_name: `johnson-and-johnson-339515.all_flattened_aspects.amazon`
    ;;

  dimension: aspect {
    type: string
    sql: ${TABLE}.aspect ;;
  }

  dimension: aspect_sentiment {
    type: string
    sql: ${TABLE}.aspect_sentiment ;;
  }

  dimension: aspect_sentiment_number {
    type: string
    sql: ${TABLE}.aspect_sentiment_number ;;
  }

  dimension: cluster_id {
    type: string
    sql: ${TABLE}.cluster_id ;;
  }

  dimension: cluster_name {
    type: string
    sql: ${TABLE}.cluster_name ;;
  }

  dimension: cluster_prototype_sentence {
    type: string
    sql: ${TABLE}.cluster_prototype_sentence ;;
  }

  dimension: cluster_size {
    type: string
    sql: ${TABLE}.cluster_size ;;
  }

  dimension: entity_gpe {
    type: string
    sql: ${TABLE}.entity_GPE ;;
  }

  dimension: entity_org {
    type: string
    sql: ${TABLE}.entity_ORG ;;
  }

  dimension: entity_person {
    type: string
    sql: ${TABLE}.entity_PERSON ;;
  }

  dimension: entity_product {
    type: string
    sql: ${TABLE}.entity_PRODUCT ;;
  }

  dimension: opinion {
    type: string
    sql: ${TABLE}.opinion ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: review_date {
    type: string
    sql: ${TABLE}.review_date ;;
  }

  dimension: review_id {
    type: string
    sql: ${TABLE}.review_id ;;
  }

  dimension: review_sentiment {
    type: string
    sql: ${TABLE}.review_sentiment ;;
  }

  dimension: review_subjectivity {
    type: string
    sql: ${TABLE}.review_subjectivity ;;
  }

  dimension: sentence {
    type: string
    sql: ${TABLE}.sentence ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: count {
    type: count
    drill_fields: [cluster_name]
  }
}

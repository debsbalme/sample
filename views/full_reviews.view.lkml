view: full_reviews {
  sql_table_name: `johnson-and-johnson-339515.complete_data.full_reviews`
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: is_syndicated {
    type: yesno
    sql: ${TABLE}.IsSyndicated ;;
  }

  measure: number_reviews {
    type: average
    value_format: "0"
     sql: CAST(${TABLE}.NumberReviews as INTEGER);;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }

  dimension: review_body {
    type: string
    sql: ${TABLE}.ReviewBody ;;
  }

  dimension: review_completed {
    type: yesno
    sql: ${TABLE}.ReviewCompleted ;;
  }

  dimension_group: review {
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
    sql: ${TABLE}.ReviewDate ;;
  }

  measure: review_length {
    type: average
    sql: ${TABLE}.ReviewLength ;;
  }

  measure: review_rating {
    type: average
    value_format: "0.00"
    sql: ${TABLE}.ReviewRating ;;
  }

  dimension: ratings_value {
    type: string
    sql: ${TABLE}.ReviewRating ;;
  }


  dimension: review_title {
    type: string
    sql: ${TABLE}.ReviewTitle ;;
  }

  dimension: review_title_completed {
    type: yesno
    sql: ${TABLE}.ReviewTitleCompleted ;;
  }

  dimension: syndication_source {
    type: string
    sql: ${TABLE}.SyndicationSource ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

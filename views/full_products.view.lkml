view: full_products {
  sql_table_name: `johnson-and-johnson-339515.complete_data.full_products`
    ;;

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.ProductName ;;
  }

  dimension: product_size {
    type: string
    sql: ${TABLE}.ProductSize ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}

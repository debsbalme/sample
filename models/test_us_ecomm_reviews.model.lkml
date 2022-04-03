connection: "us_ecomm_reviews"

# include all the views
include: "/views/**/*.view"

datagroup: test_us_ecomm_reviews_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_us_ecomm_reviews_default_datagroup

explore: full_reviews {}
explore: full_products {}

view: dim_canal_marketing {
  sql_table_name: `vertex-ia-503623.coppel.dim_canal_marketing` ;;

  dimension: canal_marketing {
    type: string
    sql: ${TABLE}.canal_marketing ;;
  }
  dimension: canal_marketing_id {
    type: number
    sql: ${TABLE}.canal_marketing_id ;;
  }
  dimension: modelo_compra {
    type: string
    sql: ${TABLE}.modelo_compra ;;
  }
  dimension: tipo_canal {
    type: string
    sql: ${TABLE}.tipo_canal ;;
  }
  measure: count {
    type: count
  }
}

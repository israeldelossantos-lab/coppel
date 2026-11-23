view: dim_canal_venta {
  sql_table_name: `vertex-ia-503623.coppel.dim_canal_venta` ;;
  drill_fields: [canal_venta_id]

  dimension: canal_venta_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.canal_venta_id ;;
  }
  dimension: canal_venta {
    type: string
    sql: ${TABLE}.canal_venta ;;
  }
  dimension: es_digital {
    type: yesno
    sql: ${TABLE}.es_digital ;;
  }
  measure: count {
    type: count
    drill_fields: [canal_venta_id]
  }
}

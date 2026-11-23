view: dim_metodo_pago {
  sql_table_name: `vertex-ia-503623.coppel.dim_metodo_pago` ;;

  dimension: es_credito_coppel {
    type: yesno
    sql: ${TABLE}.es_credito_coppel ;;
  }
  dimension: metodo_pago {
    type: string
    sql: ${TABLE}.metodo_pago ;;
  }
  dimension: metodo_pago_id {
    type: number
    sql: ${TABLE}.metodo_pago_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}

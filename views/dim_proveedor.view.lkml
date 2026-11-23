view: dim_proveedor {
  sql_table_name: `vertex-ia-503623.coppel.dim_proveedor` ;;

  dimension: confiabilidad {
    type: number
    sql: ${TABLE}.confiabilidad ;;
  }
  dimension: dias_credito_pago {
    type: number
    sql: ${TABLE}.dias_credito_pago ;;
  }
  dimension: lead_time_dias {
    type: number
    sql: ${TABLE}.lead_time_dias ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.nombre_proveedor ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  measure: count {
    type: count
  }
}

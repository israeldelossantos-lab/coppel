view: dim_centro_costo {
  sql_table_name: `vertex-ia-503623.coppel.dim_centro_costo` ;;

  dimension: cedis_id {
    type: number
    sql: ${TABLE}.cedis_id ;;
  }
  dimension: centro_costo_id {
    type: number
    sql: ${TABLE}.centro_costo_id ;;
  }
  dimension: nombre_centro_costo {
    type: string
    sql: ${TABLE}.nombre_centro_costo ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}

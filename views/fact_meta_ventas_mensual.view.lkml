view: fact_meta_ventas_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_meta_ventas_mensual` ;;

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: meta_venta_neta {
    type: number
    sql: ${TABLE}.meta_venta_neta ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}

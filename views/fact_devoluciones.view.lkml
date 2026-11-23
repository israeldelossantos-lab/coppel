view: fact_devoluciones {
  sql_table_name: `vertex-ia-503623.coppel.fact_devoluciones` ;;

  dimension: cantidad_devuelta {
    type: number
    sql: ${TABLE}.cantidad_devuelta ;;
  }
  dimension: costo_devuelto {
    type: number
    sql: ${TABLE}.costo_devuelto ;;
  }
  dimension: devolucion_id {
    type: number
    sql: ${TABLE}.devolucion_id ;;
  }
  dimension_group: fecha_devolucion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_devolucion ;;
  }
  dimension_group: fecha_venta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_venta ;;
  }
  dimension: linea_id {
    type: number
    sql: ${TABLE}.linea_id ;;
  }
  dimension: monto_devuelto {
    type: number
    sql: ${TABLE}.monto_devuelto ;;
  }
  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }
  dimension: resolucion {
    type: string
    sql: ${TABLE}.resolucion ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}

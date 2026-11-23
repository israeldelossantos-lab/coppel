view: fact_ventas_detalle {
  sql_table_name: `vertex-ia-503623.coppel.fact_ventas_detalle` ;;

  dimension: canal_venta_id {
    type: number
    sql: ${TABLE}.canal_venta_id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: costo_total {
    type: number
    sql: ${TABLE}.costo_total ;;
  }
  dimension: descuento_monto {
    type: number
    sql: ${TABLE}.descuento_monto ;;
  }
  dimension: descuento_pct {
    type: number
    sql: ${TABLE}.descuento_pct ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }
  dimension: linea_id {
    type: number
    sql: ${TABLE}.linea_id ;;
  }
  dimension: margen_bruto {
    type: number
    sql: ${TABLE}.margen_bruto ;;
  }
  dimension: precio_lista {
    type: number
    sql: ${TABLE}.precio_lista ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  dimension: venta_bruta {
    type: number
    sql: ${TABLE}.venta_bruta ;;
  }
  dimension: venta_neta {
    type: number
    sql: ${TABLE}.venta_neta ;;
  }
  measure: count {
    type: count
  }
}

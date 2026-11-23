view: fact_ordenes_compra {
  sql_table_name: `vertex-ia-503623.coppel.fact_ordenes_compra` ;;

  dimension: cantidad_pedida {
    type: number
    sql: ${TABLE}.cantidad_pedida ;;
  }
  dimension: cantidad_recibida {
    type: number
    sql: ${TABLE}.cantidad_recibida ;;
  }
  dimension: cedis_id {
    type: number
    sql: ${TABLE}.cedis_id ;;
  }
  dimension: costo_unitario {
    type: number
    sql: ${TABLE}.costo_unitario ;;
  }
  dimension: dias_retraso {
    type: number
    sql: ${TABLE}.dias_retraso ;;
  }
  dimension: entrega_a_tiempo {
    type: yesno
    sql: ${TABLE}.entrega_a_tiempo ;;
  }
  dimension: estatus_oc {
    type: string
    sql: ${TABLE}.estatus_oc ;;
  }
  dimension_group: fecha_emision {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_emision ;;
  }
  dimension_group: fecha_entrega_comprometida {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega_comprometida ;;
  }
  dimension_group: fecha_recepcion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_recepcion ;;
  }
  dimension: importe_pedido {
    type: number
    sql: ${TABLE}.importe_pedido ;;
  }
  dimension: importe_recibido {
    type: number
    sql: ${TABLE}.importe_recibido ;;
  }
  dimension: linea_oc {
    type: number
    sql: ${TABLE}.linea_oc ;;
  }
  dimension: oc_id {
    type: number
    sql: ${TABLE}.oc_id ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  measure: count {
    type: count
  }
}

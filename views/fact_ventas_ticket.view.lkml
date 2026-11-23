view: fact_ventas_ticket {
  sql_table_name: `vertex-ia-503623.coppel.fact_ventas_ticket` ;;

  dimension: campana_id {
    type: number
    sql: ${TABLE}.campana_id ;;
  }
  dimension: canal_marketing_id {
    type: number
    sql: ${TABLE}.canal_marketing_id ;;
  }
  dimension: canal_venta_id {
    type: number
    sql: ${TABLE}.canal_venta_id ;;
  }
  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: descuento_total {
    type: number
    sql: ${TABLE}.descuento_total ;;
  }
  dimension: empleado_id {
    type: number
    sql: ${TABLE}.empleado_id ;;
  }
  dimension: enganche_pct {
    type: number
    sql: ${TABLE}.enganche_pct ;;
  }
  dimension: es_cliente_nuevo {
    type: yesno
    sql: ${TABLE}.es_cliente_nuevo ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }
  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }
  dimension: metodo_pago_id {
    type: number
    sql: ${TABLE}.metodo_pago_id ;;
  }
  dimension: monto_financiado {
    type: number
    sql: ${TABLE}.monto_financiado ;;
  }
  dimension: num_lineas {
    type: number
    sql: ${TABLE}.num_lineas ;;
  }
  dimension: num_unidades {
    type: number
    sql: ${TABLE}.num_unidades ;;
  }
  dimension: plazo_meses {
    type: number
    sql: ${TABLE}.plazo_meses ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: tienda_entrega_id {
    type: number
    sql: ${TABLE}.tienda_entrega_id ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  dimension: tipo_entrega {
    type: string
    sql: ${TABLE}.tipo_entrega ;;
  }
  dimension: venta_neta {
    type: number
    sql: ${TABLE}.venta_neta ;;
  }
  dimension: venta_total {
    type: number
    sql: ${TABLE}.venta_total ;;
  }
  measure: count {
    type: count
  }
}

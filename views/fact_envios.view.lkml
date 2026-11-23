view: fact_envios {
  sql_table_name: `vertex-ia-503623.coppel.fact_envios` ;;

  dimension: cargo_envio_cliente {
    type: number
    sql: ${TABLE}.cargo_envio_cliente ;;
  }
  dimension: cedis_origen_id {
    type: number
    sql: ${TABLE}.cedis_origen_id ;;
  }
  dimension: ciudad_destino {
    type: string
    sql: ${TABLE}.ciudad_destino ;;
  }
  dimension: costo_envio {
    type: number
    sql: ${TABLE}.costo_envio ;;
  }
  dimension: dias_entrega {
    type: number
    sql: ${TABLE}.dias_entrega ;;
  }
  dimension: entregado_a_tiempo {
    type: yesno
    sql: ${TABLE}.entregado_a_tiempo ;;
  }
  dimension: envio_id {
    type: number
    sql: ${TABLE}.envio_id ;;
  }
  dimension: estado_destino {
    type: string
    sql: ${TABLE}.estado_destino ;;
  }
  dimension: estatus_envio {
    type: string
    sql: ${TABLE}.estatus_envio ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega ;;
  }
  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_envio ;;
  }
  dimension_group: fecha_pedido {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_pedido ;;
  }
  dimension_group: fecha_promesa {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_promesa ;;
  }
  dimension: intentos_entrega {
    type: number
    sql: ${TABLE}.intentos_entrega ;;
  }
  dimension: paqueteria {
    type: string
    sql: ${TABLE}.paqueteria ;;
  }
  dimension: peso_kg {
    type: number
    sql: ${TABLE}.peso_kg ;;
  }
  dimension: ticket_id {
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: tienda_entrega_id {
    type: number
    sql: ${TABLE}.tienda_entrega_id ;;
  }
  dimension: tipo_entrega {
    type: string
    sql: ${TABLE}.tipo_entrega ;;
  }
  measure: count {
    type: count
  }
}

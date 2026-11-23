view: fact_inventario_cedis_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_inventario_cedis_mensual` ;;

  dimension: cedis_id {
    type: number
    sql: ${TABLE}.cedis_id ;;
  }
  dimension: demanda {
    type: number
    sql: ${TABLE}.demanda ;;
  }
  dimension: demanda_no_surtida {
    type: number
    sql: ${TABLE}.demanda_no_surtida ;;
  }
  dimension: dias_cobertura {
    type: number
    sql: ${TABLE}.dias_cobertura ;;
  }
  dimension: en_quiebre {
    type: yesno
    sql: ${TABLE}.en_quiebre ;;
  }
  dimension: entradas {
    type: number
    sql: ${TABLE}.entradas ;;
  }
  dimension: inventario_final {
    type: number
    sql: ${TABLE}.inventario_final ;;
  }
  dimension: inventario_inicial {
    type: number
    sql: ${TABLE}.inventario_inicial ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }
  dimension: salidas_surtidas {
    type: number
    sql: ${TABLE}.salidas_surtidas ;;
  }
  dimension: valor_inventario_costo {
    type: number
    sql: ${TABLE}.valor_inventario_costo ;;
  }
  measure: count {
    type: count
  }
}

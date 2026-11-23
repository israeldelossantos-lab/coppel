view: fact_trafico_digital_diario {
  sql_table_name: `vertex-ia-503623.coppel.fact_trafico_digital_diario` ;;

  dimension: agregar_carrito {
    type: number
    sql: ${TABLE}.agregar_carrito ;;
  }
  dimension: checkout_iniciado {
    type: number
    sql: ${TABLE}.checkout_iniciado ;;
  }
  dimension: dispositivo {
    type: string
    sql: ${TABLE}.dispositivo ;;
  }
  dimension: duracion_promedio_seg {
    type: number
    sql: ${TABLE}.duracion_promedio_seg ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: fuente_trafico {
    type: string
    sql: ${TABLE}.fuente_trafico ;;
  }
  dimension: ingresos {
    type: number
    sql: ${TABLE}.ingresos ;;
  }
  dimension: ordenes {
    type: number
    sql: ${TABLE}.ordenes ;;
  }
  dimension: sesiones {
    type: number
    sql: ${TABLE}.sesiones ;;
  }
  dimension: tasa_rebote {
    type: number
    sql: ${TABLE}.tasa_rebote ;;
  }
  dimension: usuarios {
    type: number
    sql: ${TABLE}.usuarios ;;
  }
  dimension: vistas_producto {
    type: number
    sql: ${TABLE}.vistas_producto ;;
  }
  measure: count {
    type: count
  }
}

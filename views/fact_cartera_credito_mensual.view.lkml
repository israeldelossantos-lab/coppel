view: fact_cartera_credito_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_cartera_credito_mensual` ;;

  dimension: abonos {
    type: number
    sql: ${TABLE}.abonos ;;
  }
  dimension: bucket_atraso {
    type: string
    sql: ${TABLE}.bucket_atraso ;;
  }
  dimension: cargo_estimacion_preventiva {
    type: number
    sql: ${TABLE}.cargo_estimacion_preventiva ;;
  }
  dimension: castigo {
    type: number
    sql: ${TABLE}.castigo ;;
  }
  dimension: cliente_id {
    type: number
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: compras_credito {
    type: number
    sql: ${TABLE}.compras_credito ;;
  }
  dimension: cumplio_pago {
    type: yesno
    sql: ${TABLE}.cumplio_pago ;;
  }
  dimension: dias_atraso {
    type: number
    sql: ${TABLE}.dias_atraso ;;
  }
  dimension: estatus_cuenta {
    type: string
    sql: ${TABLE}.estatus_cuenta ;;
  }
  dimension: estimacion_preventiva {
    type: number
    sql: ${TABLE}.estimacion_preventiva ;;
  }
  dimension: intereses_generados {
    type: number
    sql: ${TABLE}.intereses_generados ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: pago_requerido {
    type: number
    sql: ${TABLE}.pago_requerido ;;
  }
  dimension: saldo_final {
    type: number
    sql: ${TABLE}.saldo_final ;;
  }
  dimension: saldo_inicial {
    type: number
    sql: ${TABLE}.saldo_inicial ;;
  }
  dimension: segmento_riesgo {
    type: string
    sql: ${TABLE}.segmento_riesgo ;;
  }
  dimension: tasa_interes_mensual {
    type: number
    sql: ${TABLE}.tasa_interes_mensual ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}

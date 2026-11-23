view: fact_inventario_tienda_mensual {
  sql_table_name: `vertex-ia-503623.coppel.fact_inventario_tienda_mensual` ;;

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }
  dimension: dias_inventario {
    type: number
    sql: ${TABLE}.dias_inventario ;;
  }
  dimension: entradas_unidades {
    type: number
    sql: ${TABLE}.entradas_unidades ;;
  }
  dimension: inventario_final_unidades {
    type: number
    sql: ${TABLE}.inventario_final_unidades ;;
  }
  dimension: inventario_inicial_unidades {
    type: number
    sql: ${TABLE}.inventario_inicial_unidades ;;
  }
  dimension: merma_unidades {
    type: number
    sql: ${TABLE}.merma_unidades ;;
  }
  dimension_group: mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes ;;
  }
  dimension: pct_disponibilidad {
    type: number
    sql: ${TABLE}.pct_disponibilidad ;;
  }
  dimension: skus_sin_existencia {
    type: number
    sql: ${TABLE}.skus_sin_existencia ;;
  }
  dimension: skus_surtidos {
    type: number
    sql: ${TABLE}.skus_surtidos ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  dimension: unidades_vendidas {
    type: number
    sql: ${TABLE}.unidades_vendidas ;;
  }
  dimension: valor_inventario_costo {
    type: number
    sql: ${TABLE}.valor_inventario_costo ;;
  }
  measure: count {
    type: count
  }
}

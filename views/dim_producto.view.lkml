view: dim_producto {
  sql_table_name: `vertex-ia-503623.coppel.dim_producto` ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: costo_unitario {
    type: number
    sql: ${TABLE}.costo_unitario ;;
  }
  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }
  dimension: es_importado {
    type: yesno
    sql: ${TABLE}.es_importado ;;
  }
  dimension: es_voluminoso {
    type: yesno
    sql: ${TABLE}.es_voluminoso ;;
  }
  dimension_group: fecha_lanzamiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_lanzamiento ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: margen_objetivo_pct {
    type: number
    sql: ${TABLE}.margen_objetivo_pct ;;
  }
  dimension: nombre_producto {
    type: string
    sql: ${TABLE}.nombre_producto ;;
  }
  dimension: peso_kg {
    type: number
    sql: ${TABLE}.peso_kg ;;
  }
  dimension: precio_lista {
    type: number
    sql: ${TABLE}.precio_lista ;;
  }
  dimension: producto_id {
    type: number
    sql: ${TABLE}.producto_id ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
  }
  measure: count {
    type: count
  }
}

view: dim_empleado {
  sql_table_name: `vertex-ia-503623.coppel.dim_empleado` ;;

  dimension: empleado_id {
    type: number
    sql: ${TABLE}.empleado_id ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }
  dimension_group: fecha_baja {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_baja ;;
  }
  dimension_group: fecha_ingreso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_ingreso ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }
  dimension: nombre_empleado {
    type: string
    sql: ${TABLE}.nombre_empleado ;;
  }
  dimension: puesto {
    type: string
    sql: ${TABLE}.puesto ;;
  }
  dimension: salario_mensual {
    type: number
    sql: ${TABLE}.salario_mensual ;;
  }
  dimension: tienda_id {
    type: number
    sql: ${TABLE}.tienda_id ;;
  }
  measure: count {
    type: count
  }
}

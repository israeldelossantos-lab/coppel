connection: "demos_bigquery"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

explore: dim_canal_venta {
  label: "Canales de Venta (Prueba)"
}

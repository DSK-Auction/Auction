view: gnymst {
  sql_table_name: DSK_Auction.GNYMST ;;

  dimension: aa_report_sort {
    label: "AAレポ外部ソート順"
    type: number
    sql: ${TABLE}.aa_report_sort ;;
  }

  dimension: nyusatsu_cd {
    label: "外部入札CD"
    type: number
    sql: ${TABLE}.nyusatsu_cd ;;
  }

  dimension: nyusatsu_name {
    label: "外部入札名称"
    type: string
    sql: ${TABLE}.nyusatsu_name ;;
  }

  dimension: nyusatsu_type {
    label: "入札種別"
    type: number
    sql: ${TABLE}.nyusatsu_type ;;
  }

  dimension: place_cd {
    label: "会場CD"
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [nyusatsu_name]
  }
}

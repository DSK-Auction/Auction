view: gnymst {
  sql_table_name: DSK_Auction.GNYMST ;;

  dimension: aa_report_sort {
    type: number
    sql: ${TABLE}.aa_report_sort ;;
  }

  dimension: nyusatsu_cd {
    type: number
    sql: ${TABLE}.nyusatsu_cd ;;
  }

  dimension: nyusatsu_name {
    type: string
    sql: ${TABLE}.nyusatsu_name ;;
  }

  dimension: nyusatsu_type {
    type: number
    sql: ${TABLE}.nyusatsu_type ;;
  }

  dimension: place_cd {
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [nyusatsu_name]
  }
}

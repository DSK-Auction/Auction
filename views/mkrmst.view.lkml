view: mkrmst {
  sql_table_name: DSK_Auction.MKRMST ;;

  dimension: maker_cd {
    label: "メーカーCD"
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: maker_name {
    label: "メーカー名"
    type: string
    sql: ${TABLE}.maker_name ;;
  }

  dimension: maker_name_e {
    label: "メーカー名_E"
    type: string
    sql: ${TABLE}.maker_name_e ;;
  }

  dimension: maker_sort {
    label: "メーカーソート"
    type: number
    sql: ${TABLE}.maker_sort ;;
  }

  dimension: origin_type {
    label: "国外区分"
    type: number
    sql: ${TABLE}.origin_type ;;
  }

  measure: count {
    type: count
    drill_fields: [maker_name]
  }
}

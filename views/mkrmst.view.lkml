view: mkrmst {
  sql_table_name: DSK_Auction.MKRMST ;;

  dimension: maker_cd {
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: maker_name {
    type: string
    sql: ${TABLE}.maker_name ;;
  }

  dimension: maker_name_e {
    type: string
    sql: ${TABLE}.maker_name_e ;;
  }

  dimension: maker_sort {
    type: number
    sql: ${TABLE}.maker_sort ;;
  }

  dimension: origin_type {
    type: number
    sql: ${TABLE}.origin_type ;;
  }

  measure: count {
    type: count
    drill_fields: [maker_name]
  }
}

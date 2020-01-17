view: dhsmst {
  sql_table_name: DSK_Auction.DHSMST ;;

  dimension: carmodel_cd {
    type: number
    sql: ${TABLE}.carmodel_cd ;;
  }

  dimension: carmodel_name {
    type: string
    sql: ${TABLE}.carmodel_name ;;
  }

  dimension: carmodel_sort {
    type: number
    sql: ${TABLE}.carmodel_sort ;;
  }

  dimension: maker_cd {
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [carmodel_name]
  }
}

view: kjomst {
  sql_table_name: DSK_Auction.KJOMST ;;

  dimension: place_cd {
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  dimension: place_name {
    type: string
    sql: ${TABLE}.place_name ;;
  }

  measure: count {
    type: count
    drill_fields: [place_name]
  }
}

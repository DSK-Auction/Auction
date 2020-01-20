view: kjomst {
  sql_table_name: DSK_Auction.KJOMST ;;

  dimension: place_cd {
    label: "会場CD"
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  dimension: place_name {
    label: "会場名"
    type: string
    sql: ${TABLE}.place_name ;;
  }

  measure: count {
    type: count
    drill_fields: [place_name]
  }
}

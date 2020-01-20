view: dhsmst {
  sql_table_name: DSK_Auction.DHSMST ;;

  dimension: carmodel_cd {
    label: "代表車種CD"
    primary_key: yes
    type: number
    sql: ${TABLE}.carmodel_cd ;;
  }

  dimension: carmodel_name {
    label: "代表車種名"
    type: string
    sql: ${TABLE}.carmodel_name ;;
  }

  dimension: carmodel_sort {
    label: "代表車種ソート"
    type: number
    sql: ${TABLE}.carmodel_sort ;;
  }

  dimension: maker_cd {
    label: "メーカーCD"
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [carmodel_name]
  }
}

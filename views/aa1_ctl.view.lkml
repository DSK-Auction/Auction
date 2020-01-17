view: aa1_ctl {
  sql_table_name: DSK_Auction.AA1CTL ;;

  dimension: commission_cd {
    type: number
    sql: ${TABLE}.commission_cd ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: eventday {
    type: number
    sql: ${TABLE}.eventday ;;
  }

  dimension: lane_type {
    type: number
    sql: ${TABLE}.lane_type ;;
  }

  dimension: place_cd {
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}

view: aa1_ctl {
  view_label: "オークションカレンダー"
  sql_table_name: DSK_Auction.AA1CTL ;;

  dimension: commission_cd {
    label: "開催別手数料CD"
    type: number
    sql: ${TABLE}.commission_cd ;;
  }

  dimension: primary_key {
    label: "プライマリキー"
    type: string
    primary_key: yes
    hidden: yes
    sql:concat(format("%02d",${TABLE}.place_cd),format("%04d",${TABLE}.event_count)) ;;
  }

  dimension: event_count {
    label: "開催回数"
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: event_name {
    label: "AAイベント名"
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: eventday {
    label: "開催日"
    type: number
    sql: ${TABLE}.eventday;;
  }

  dimension: eventmonth {
    label: "開催月"
    type: string
    sql: cast(ROUND(${TABLE}.eventday / 100,0) as string)  ;;
  }

  dimension: lane_type {
    label: "レーン数"
    type: number
    sql: ${TABLE}.lane_type ;;
  }

  dimension: place_cd {
    label: "会場CD"
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}

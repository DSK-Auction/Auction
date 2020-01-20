view: mn1_mst2 {
  sql_table_name: DSK_Auction.MN1MST ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: area_cd1 {
    type: number
    sql: ${TABLE}.area_cd1 ;;
  }

  dimension: area_cd2 {
    type: number
    sql: ${TABLE}.area_cd2 ;;
  }

  dimension: area_cd3 {
    type: number
    sql: ${TABLE}.area_cd3 ;;
  }

  dimension: daihyousya_birthday {
    type: number
    sql: ${TABLE}.daihyousya_birthday ;;
  }

  dimension: daihyousya_name {
    type: string
    sql: ${TABLE}.daihyousya_name ;;
  }

  dimension: daihyousya_name_kana {
    type: string
    sql: ${TABLE}.daihyousya_name_kana ;;
  }

  dimension: deliberday {
    type: number
    sql: ${TABLE}.deliberday ;;
  }

  dimension_group: entryday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.entryday ;;
  }

  dimension: establishday {
    type: number
    sql: ${TABLE}.establishday ;;
  }

  dimension_group: exitday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exitday ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fax2 {
    type: string
    sql: ${TABLE}.fax2 ;;
  }

  dimension: member_cd {
    type: number
    sql: ${TABLE}.member_cd ;;
  }

  dimension: member_cd_front {
    type: number
    sql: ${TABLE}.member_cd_front ;;
  }

  dimension: member_name {
    type: string
    sql: ${TABLE}.member_name ;;
  }

  dimension: member_name_kana {
    type: string
    sql: ${TABLE}.member_name_kana ;;
  }

  dimension: member_name_short {
    type: string
    sql: ${TABLE}.member_name_short ;;
  }

  dimension: member_type_cd {
    type: number
    sql: ${TABLE}.member_type_cd ;;
  }

  dimension: post_cd {
    type: string
    sql: ${TABLE}.post_cd ;;
  }

  dimension: pref_cd {
    type: number
    sql: ${TABLE}.pref_cd ;;
  }

  dimension: sales_cd {
    type: number
    sql: ${TABLE}.sales_cd ;;
  }

  dimension: tel {
    type: string
    sql: ${TABLE}.tel ;;
  }

  dimension: tel2 {
    type: string
    sql: ${TABLE}.tel2 ;;
  }

  measure: count {
    type: count
    drill_fields: [daihyousya_name, member_name]
  }
}

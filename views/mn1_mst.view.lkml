view: mn1_mst {
  sql_table_name: DSK_Auction.MN1MST ;;

  dimension: address1 {
    label: "住所1"
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    label: "住所2"
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: area_cd1 {
    label: "地区CD1"
    type: number
    sql: ${TABLE}.area_cd1 ;;
  }

  dimension: area_cd2 {
    label: "地区CD2"
    type: number
    sql: ${TABLE}.area_cd2 ;;
  }

  dimension: area_cd3 {
    label: "地区CD3"
    type: number
    sql: ${TABLE}.area_cd3 ;;
  }

  dimension: daihyousya_birthday {
    label: "代表者生年月日"
    type: number
    sql: ${TABLE}.daihyousya_birthday ;;
  }

  dimension: daihyousya_name {
    label: "代表者名"
    type: string
    sql: ${TABLE}.daihyousya_name ;;
  }

  dimension: daihyousya_name_kana {
    label: "代表者カナ名"
    type: string
    sql: ${TABLE}.daihyousya_name_kana ;;
  }

  dimension: deliberday {
    label: "交付年月日"
    type: number
    sql: ${TABLE}.deliberday ;;
  }

  dimension_group: entryday {
    label: "入会日"
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
    label: "設立日"
    type: number
    sql: ${TABLE}.establishday ;;
  }

  dimension_group: exitday {
    label: "退会日"
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
    label: "FAX"
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: fax2 {
    label: "FAX2"
    type: string
    sql: ${TABLE}.fax2 ;;
  }

  dimension: member_cd {
    label: "会員CD"
    primary_key: yes
    type: number
    sql: ${TABLE}.member_cd ;;
  }

  dimension: member_cd_front {
    label: "会員表CD"
    type: number
    sql: ${TABLE}.member_cd_front ;;
  }

  dimension: member_name {
    label: "会員名"
    type: string
    sql: ${TABLE}.member_name ;;
  }

  dimension: member_name_kana {
    label: "会員カナ名"
    type: string
    sql: ${TABLE}.member_name_kana ;;
  }

  dimension: member_name_short {
    label: "会員略名"
    type: string
    sql: ${TABLE}.member_name_short ;;
  }

  dimension: member_type_cd {
    label: "会員分類CD"
    type: number
    sql: ${TABLE}.member_type_cd ;;
  }

  dimension: post_cd {
    label: "郵便番号"
    type: string
    sql: ${TABLE}.post_cd ;;
  }

  dimension: pref_cd {
    label: "都道府県CD"
    type: number
    sql: ${TABLE}.pref_cd ;;
  }

  dimension: sales_cd {
    label: "営業担当職員CD"
    type: number
    sql: ${TABLE}.sales_cd ;;
  }

  dimension: tel {
    label: "TEL"
    type: string
    sql: ${TABLE}.tel ;;
  }

  dimension: tel2 {
    label: "TEL2"
    type: string
    sql: ${TABLE}.tel2 ;;
  }

  measure: count {
    type: count
    drill_fields: [daihyousya_name, member_name]
  }
}

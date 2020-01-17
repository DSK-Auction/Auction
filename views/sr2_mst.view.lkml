view: sr2_mst {
  sql_table_name: DSK_Auction.SR2MST ;;

  dimension: applicable_type {
    type: number
    sql: ${TABLE}.applicable_type ;;
  }

  dimension: auction_count {
    type: number
    sql: ${TABLE}.auction_count ;;
  }

  dimension_group: auction_endday {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.auction_endday AS TIMESTAMP) ;;
  }

  dimension: auction_price {
    type: number
    sql: ${TABLE}.auction_price ;;
  }

  dimension: auction_price_tax {
    type: number
    sql: ${TABLE}.auction_price_tax ;;
  }

  dimension: auction_re_exhibit_type {
    type: number
    sql: ${TABLE}.auction_re_exhibit_type ;;
  }

  dimension: auction_time {
    type: number
    sql: ${TABLE}.auction_time ;;
  }

  dimension: azukari_months {
    type: number
    sql: ${TABLE}.azukari_months ;;
  }

  dimension: azukari_price {
    type: number
    sql: ${TABLE}.azukari_price ;;
  }

  dimension: before_event_count {
    type: number
    sql: ${TABLE}.before_event_count ;;
  }

  dimension: before_exhibit_no {
    type: number
    sql: ${TABLE}.before_exhibit_no ;;
  }

  dimension: car_name {
    type: string
    sql: ${TABLE}.car_name ;;
  }

  dimension: carmodel_cd {
    type: number
    sql: ${TABLE}.carmodel_cd ;;
  }

  dimension_group: carryout_day {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.carryout_day AS TIMESTAMP) ;;
  }

  dimension: carryout_type {
    type: number
    sql: ${TABLE}.carryout_type ;;
  }

  dimension: cartax_cd {
    type: number
    sql: ${TABLE}.cartax_cd ;;
  }

  dimension: chohyo_hyouka {
    type: string
    sql: ${TABLE}.chohyo_hyouka ;;
  }

  dimension: chosei_price {
    type: number
    sql: ${TABLE}.chosei_price ;;
  }

  dimension: color_cd {
    type: number
    sql: ${TABLE}.color_cd ;;
  }

  dimension: color_cd2 {
    type: number
    sql: ${TABLE}.color_cd2 ;;
  }

  dimension: color_name {
    type: string
    sql: ${TABLE}.color_name ;;
  }

  dimension: color_name2 {
    type: string
    sql: ${TABLE}.color_name2 ;;
  }

  dimension: colorchange_type {
    type: number
    sql: ${TABLE}.colorchange_type ;;
  }

  dimension: commit_price {
    type: number
    sql: ${TABLE}.commit_price ;;
  }

  dimension: commit_price_tax {
    type: number
    sql: ${TABLE}.commit_price_tax ;;
  }

  dimension_group: commitday {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.commitday AS TIMESTAMP) ;;
  }

  dimension: commitstore_member_cd {
    type: number
    sql: ${TABLE}.commitstore_member_cd ;;
  }

  dimension: commitstore_sales_cd {
    type: number
    sql: ${TABLE}.commitstore_sales_cd ;;
  }

  dimension: consul_start_price {
    type: number
    sql: ${TABLE}.consul_start_price ;;
  }

  dimension: control_no {
    type: number
    sql: ${TABLE}.control_no ;;
  }

  dimension: cooler_cd {
    type: number
    sql: ${TABLE}.cooler_cd ;;
  }

  dimension: cooler_name {
    type: string
    sql: ${TABLE}.cooler_name ;;
  }

  dimension: corner_cd {
    type: number
    sql: ${TABLE}.corner_cd ;;
  }

  dimension: correct_count {
    type: number
    sql: ${TABLE}.correct_count ;;
  }

  dimension: correct_detail1 {
    type: string
    sql: ${TABLE}.correct_detail1 ;;
  }

  dimension: correct_detail2 {
    type: string
    sql: ${TABLE}.correct_detail2 ;;
  }

  dimension: correct_type {
    type: number
    sql: ${TABLE}.correct_type ;;
  }

  dimension: decision_price {
    type: number
    sql: ${TABLE}.decision_price ;;
  }

  dimension: decision_price_tax {
    type: number
    sql: ${TABLE}.decision_price_tax ;;
  }

  dimension: decision_type1 {
    type: number
    sql: ${TABLE}.decision_type1 ;;
  }

  dimension: decision_type2 {
    type: number
    sql: ${TABLE}.decision_type2 ;;
  }

  dimension: door_count {
    type: number
    sql: ${TABLE}.door_count ;;
  }

  dimension: equipment_cd1 {
    type: number
    sql: ${TABLE}.equipment_cd1 ;;
  }

  dimension: equipment_cd10 {
    type: number
    sql: ${TABLE}.equipment_cd10 ;;
  }

  dimension: equipment_cd11 {
    type: number
    sql: ${TABLE}.equipment_cd11 ;;
  }

  dimension: equipment_cd12 {
    type: number
    sql: ${TABLE}.equipment_cd12 ;;
  }

  dimension: equipment_cd2 {
    type: number
    sql: ${TABLE}.equipment_cd2 ;;
  }

  dimension: equipment_cd3 {
    type: number
    sql: ${TABLE}.equipment_cd3 ;;
  }

  dimension: equipment_cd4 {
    type: number
    sql: ${TABLE}.equipment_cd4 ;;
  }

  dimension: equipment_cd5 {
    type: number
    sql: ${TABLE}.equipment_cd5 ;;
  }

  dimension: equipment_cd6 {
    type: number
    sql: ${TABLE}.equipment_cd6 ;;
  }

  dimension: equipment_cd7 {
    type: number
    sql: ${TABLE}.equipment_cd7 ;;
  }

  dimension: equipment_cd8 {
    type: number
    sql: ${TABLE}.equipment_cd8 ;;
  }

  dimension: equipment_cd9 {
    type: number
    sql: ${TABLE}.equipment_cd9 ;;
  }

  dimension: erasurerequest_type {
    type: number
    sql: ${TABLE}.erasurerequest_type ;;
  }

  dimension: evaluation_cd {
    type: number
    sql: ${TABLE}.evaluation_cd ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: exhibit_no {
    type: number
    sql: ${TABLE}.exhibit_no ;;
  }

  dimension: exhibit_price_cancel {
    type: number
    sql: ${TABLE}.exhibit_price_cancel ;;
  }

  dimension: exhibit_price_cancel_tax {
    type: number
    sql: ${TABLE}.exhibit_price_cancel_tax ;;
  }

  dimension: exhibit_price_decision {
    type: number
    sql: ${TABLE}.exhibit_price_decision ;;
  }

  dimension: exhibit_price_decision_tax {
    type: number
    sql: ${TABLE}.exhibit_price_decision_tax ;;
  }

  dimension: exhibitcancel_type {
    type: number
    sql: ${TABLE}.exhibitcancel_type ;;
  }

  dimension: exhibitor_consultation_price {
    type: number
    sql: ${TABLE}.exhibitor_consultation_price ;;
  }

  dimension: exhibitor_consultation_price2 {
    type: number
    sql: ${TABLE}.exhibitor_consultation_price2 ;;
  }

  dimension: exhibitor_consultation_type {
    type: number
    sql: ${TABLE}.exhibitor_consultation_type ;;
  }

  dimension: first_event_count {
    type: number
    sql: ${TABLE}.first_event_count ;;
  }

  dimension: fuel_cd {
    type: number
    sql: ${TABLE}.fuel_cd ;;
  }

  dimension: fuel_name {
    type: string
    sql: ${TABLE}.fuel_name ;;
  }

  dimension: gaisou_hyouka {
    type: string
    sql: ${TABLE}.gaisou_hyouka ;;
  }

  dimension: gojitsu_buhin {
    type: number
    sql: ${TABLE}.gojitsu_buhin ;;
  }

  dimension: grade_name {
    type: string
    sql: ${TABLE}.grade_name ;;
  }

  dimension: haikiryo {
    type: number
    sql: ${TABLE}.haikiryo ;;
  }

  dimension: handle_type {
    type: number
    sql: ${TABLE}.handle_type ;;
  }

  dimension: hosyou_price {
    type: number
    sql: ${TABLE}.hosyou_price ;;
  }

  dimension: hosyousyo {
    type: number
    sql: ${TABLE}.hosyousyo ;;
  }

  dimension: importedcar_type {
    type: number
    sql: ${TABLE}.importedcar_type ;;
  }

  dimension: jyukazei_rate {
    type: number
    sql: ${TABLE}.jyukazei_rate ;;
  }

  dimension: kansuisya {
    type: number
    sql: ${TABLE}.kansuisya ;;
  }

  dimension: keepkey {
    type: number
    sql: ${TABLE}.keepkey ;;
  }

  dimension: keijidosya_type {
    type: number
    sql: ${TABLE}.keijidosya_type ;;
  }

  dimension: keishiki {
    type: string
    sql: ${TABLE}.keishiki ;;
  }

  dimension: keishiki_cd {
    type: number
    sql: ${TABLE}.keishiki_cd ;;
  }

  dimension: kibou_price {
    type: number
    sql: ${TABLE}.kibou_price ;;
  }

  dimension: lane_no {
    type: number
    sql: ${TABLE}.lane_no ;;
  }

  dimension: maker_cd {
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: maker_name {
    type: string
    sql: ${TABLE}.maker_name ;;
  }

  dimension: manual {
    type: number
    sql: ${TABLE}.manual ;;
  }

  dimension: model_nenshiki {
    type: string
    sql: ${TABLE}.model_nenshiki ;;
  }

  dimension: naisou_hyouka {
    type: string
    sql: ${TABLE}.naisou_hyouka ;;
  }

  dimension: nenshiki_ad {
    type: number
    sql: ${TABLE}.nenshiki_ad ;;
  }

  dimension: nenshiki_month {
    type: number
    sql: ${TABLE}.nenshiki_month ;;
  }

  dimension: nenshiki_year {
    type: number
    sql: ${TABLE}.nenshiki_year ;;
  }

  dimension: nyusatsu_cd {
    type: number
    sql: ${TABLE}.nyusatsu_cd ;;
  }

  dimension_group: openday {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.openday AS TIMESTAMP) ;;
  }

  dimension: place_cd {
    type: number
    sql: ${TABLE}.place_cd ;;
  }

  dimension: pref_cd {
    type: number
    sql: ${TABLE}.pref_cd ;;
  }

  dimension: re_exhibit_event_count {
    type: number
    sql: ${TABLE}.re_exhibit_event_count ;;
  }

  dimension: re_exhibit_event_number {
    type: number
    sql: ${TABLE}.re_exhibit_event_number ;;
  }

  dimension: recordbook {
    type: number
    sql: ${TABLE}.recordbook ;;
  }

  dimension: recycle_price {
    type: number
    sql: ${TABLE}.recycle_price ;;
  }

  dimension: recycleticket_type {
    type: number
    sql: ${TABLE}.recycleticket_type ;;
  }

  dimension: rikushi_cd {
    type: number
    sql: ${TABLE}.rikushi_cd ;;
  }

  dimension: run_km {
    type: number
    sql: ${TABLE}.run_km ;;
  }

  dimension: run_mater {
    type: number
    sql: ${TABLE}.run_mater ;;
  }

  dimension: run_unit {
    type: number
    sql: ${TABLE}.run_unit ;;
  }

  dimension: run_unknown {
    type: string
    sql: ${TABLE}.run_unknown ;;
  }

  dimension: shift_cd {
    type: number
    sql: ${TABLE}.shift_cd ;;
  }

  dimension: shift_name {
    type: string
    sql: ${TABLE}.shift_name ;;
  }

  dimension: shift_type {
    type: number
    sql: ${TABLE}.shift_type ;;
  }

  dimension: sokuraku_price {
    type: number
    sql: ${TABLE}.sokuraku_price ;;
  }

  dimension: start_price {
    type: number
    sql: ${TABLE}.start_price ;;
  }

  dimension: store_member_cd {
    type: number
    sql: ${TABLE}.store_member_cd ;;
  }

  dimension: syadai_no {
    type: string
    sql: ${TABLE}.syadai_no ;;
  }

  dimension: syareki_cd {
    type: number
    sql: ${TABLE}.syareki_cd ;;
  }

  dimension: syareki_name {
    type: string
    sql: ${TABLE}.syareki_name ;;
  }

  dimension: syorui_limit_day {
    type: number
    sql: ${TABLE}.syorui_limit_day ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: touroku_no_kana {
    type: string
    sql: ${TABLE}.touroku_no_kana ;;
  }

  dimension: touroku_no_no {
    type: string
    sql: ${TABLE}.touroku_no_no ;;
  }

  dimension: touroku_no_rirkushimei {
    type: string
    sql: ${TABLE}.touroku_no_rirkushimei ;;
  }

  dimension: touroku_no_type {
    type: string
    sql: ${TABLE}.touroku_no_type ;;
  }

  dimension: vehicleinspection {
    type: number
    sql: ${TABLE}.vehicleinspection ;;
  }

  dimension: vehicleinspection_type {
    type: number
    sql: ${TABLE}.vehicleinspection_type ;;
  }

  dimension: wareki_cd {
    type: number
    sql: ${TABLE}.wareki_cd ;;
  }

  dimension: yeartax_price {
    type: number
    sql: ${TABLE}.yeartax_price ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      syareki_name,
      color_name,
      car_name,
      shift_name,
      cooler_name,
      maker_name,
      fuel_name,
      grade_name
    ]
  }
}

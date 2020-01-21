view: sr2_mst {
  view_label: "出品情報"
  sql_table_name: DSK_Auction.SR2MST ;;

  dimension: applicable_type {
    label: "売切区分"
    type: number
    sql: ${TABLE}.applicable_type ;;
  }

  dimension: auction_count {
    label: "出品回数"
    type: number
    sql: ${TABLE}.auction_count ;;
  }

  dimension_group: auction_endday {
    label: "せり終了日時"
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
    label: "落札料"
    type: number
    sql: ${TABLE}.auction_price ;;
  }

  dimension: auction_price_tax {
    label: "落札料_税"
    type: number
    sql: ${TABLE}.auction_price_tax ;;
  }

  dimension: auction_re_exhibit_type {
    label: "落札再出品区分"
    type: number
    sql: ${TABLE}.auction_re_exhibit_type ;;
  }

  dimension: auction_time {
    label: "せり所要時間"
    type: number
    sql: ${TABLE}.auction_time ;;
  }

  dimension: azukari_months {
    label: "預り月数"
    type: number
    sql: ${TABLE}.azukari_months ;;
  }

  dimension: azukari_price {
    label: "預り金額"
    type: number
    sql: ${TABLE}.azukari_price ;;
  }

  dimension: before_event_count {
    label: "前回開催回数"
    type: number
    sql: ${TABLE}.before_event_count ;;
  }

  dimension: before_exhibit_no {
    label: "前回出品番号"
    type: number
    sql: ${TABLE}.before_exhibit_no ;;
  }

  dimension: car_name {
    label: "車名"
    type: string
    sql: ${TABLE}.car_name ;;
  }

  dimension: carmodel_cd {
    label: "車種CD"
    type: number
    sql: ${TABLE}.carmodel_cd ;;
  }

  dimension_group: carryout_day {
    label: "搬出日時"
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
    label: "搬出区分"
    type: number
    sql: ${TABLE}.carryout_type ;;
  }

  dimension: cartax_cd {
    label: "自動車税CD"
    type: number
    sql: ${TABLE}.cartax_cd ;;
  }

  dimension: chohyo_hyouka {
    label: "帳票表示評価"
    type: string
    sql: ${TABLE}.chohyo_hyouka ;;
  }

  dimension: chosei_price {
    label: "調整価格"
    type: number
    sql: ${TABLE}.chosei_price ;;
  }

  dimension: color_cd {
    label: "色CD"
    type: number
    sql: ${TABLE}.color_cd ;;
  }

  dimension: color_cd2 {
    label: "色CD2"
    type: number
    sql: ${TABLE}.color_cd2 ;;
  }

  dimension: color_name {
    label: "色名"
    type: string
    sql: ${TABLE}.color_name ;;
  }

  dimension: color_name2 {
    label: "色名2"
    type: string
    sql: ${TABLE}.color_name2 ;;
  }

  dimension: colorchange_type {
    label: "色替区分"
    type: number
    sql: ${TABLE}.colorchange_type ;;
  }

  dimension: commit_price {
    label: "最終応札価格"
    type: number
    sql: ${TABLE}.commit_price ;;
  }

  dimension: commit_price_tax {
    label: "最終応札価格_税"
    type: number
    sql: ${TABLE}.commit_price_tax ;;
  }

  dimension_group: commitday {
    label: "商品成約日時"
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
    label: "最終応札店会員CD"
    type: number
    sql: ${TABLE}.commitstore_member_cd ;;
  }

  dimension: commitstore_sales_cd {
    label: "最終応札店会員担当CD"
    type: number
    sql: ${TABLE}.commitstore_sales_cd ;;
  }

  dimension: consul_start_price {
    label: "商談受付価格"
    type: number
    sql: ${TABLE}.consul_start_price ;;
  }

  dimension: control_no {
    label: "管理番号"
    type: number
    sql: ${TABLE}.control_no ;;
  }

  dimension: cooler_cd {
    label: "冷房CD"
    type: number
    sql: ${TABLE}.cooler_cd ;;
  }

  dimension: cooler_name {
    label: "冷房名"
    type: string
    sql: ${TABLE}.cooler_name ;;
  }

  dimension: corner_cd {
    label: "コーナーCD"
    type: number
    sql: ${TABLE}.corner_cd ;;
  }

  dimension: correct_count {
    label: "訂正回数"
    type: number
    sql: ${TABLE}.correct_count ;;
  }

  dimension: correct_detail1 {
    label: "訂正内容1"
    type: string
    sql: ${TABLE}.correct_detail1 ;;
  }

  dimension: correct_detail2 {
    label: "訂正内容2"
    type: string
    sql: ${TABLE}.correct_detail2 ;;
  }

  dimension: correct_type {
    label: "訂正区分"
    type: number
    sql: ${TABLE}.correct_type ;;
  }

  dimension: decision_price {
    label: "成約料"
    type: number
    sql: ${TABLE}.decision_price ;;
  }

  dimension: decision_price_tax {
    label: "成約料_税"
    type: number
    sql: ${TABLE}.decision_price_tax ;;
  }

  dimension: decision_type1 {
    label: "決定区分1"
    type: number
    sql: ${TABLE}.decision_type1 ;;
  }

  dimension: decision_type2 {
    label: "決定区分2"
    type: number
    sql: ${TABLE}.decision_type2 ;;
  }

  dimension: door_count {
    label: "ドア数"
    type: number
    sql: ${TABLE}.door_count ;;
  }

  dimension: equipment_cd1 {
    label: "装備CD1"
    type: number
    sql: ${TABLE}.equipment_cd1 ;;
  }

  dimension: equipment_cd10 {
    label: "装備CD10"
    type: number
    sql: ${TABLE}.equipment_cd10 ;;
  }

  dimension: equipment_cd11 {
    label: "装備CD11"
    type: number
    sql: ${TABLE}.equipment_cd11 ;;
  }

  dimension: equipment_cd12 {
    label: "装備CD12"
    type: number
    sql: ${TABLE}.equipment_cd12 ;;
  }

  dimension: equipment_cd2 {
    label: "装備CD2"
    type: number
    sql: ${TABLE}.equipment_cd2 ;;
  }

  dimension: equipment_cd3 {
    label: "装備CD3"
    type: number
    sql: ${TABLE}.equipment_cd3 ;;
  }

  dimension: equipment_cd4 {
    label: "装備CD4"
    type: number
    sql: ${TABLE}.equipment_cd4 ;;
  }

  dimension: equipment_cd5 {
    label: "装備CD5"
    type: number
    sql: ${TABLE}.equipment_cd5 ;;
  }

  dimension: equipment_cd6 {
    label: "装備CD6"
    type: number
    sql: ${TABLE}.equipment_cd6 ;;
  }

  dimension: equipment_cd7 {
    label: "装備CD7"
    type: number
    sql: ${TABLE}.equipment_cd7 ;;
  }

  dimension: equipment_cd8 {
    label: "装備CD8"
    type: number
    sql: ${TABLE}.equipment_cd8 ;;
  }

  dimension: equipment_cd9 {
    label: "装備CD9"
    type: number
    sql: ${TABLE}.equipment_cd9 ;;
  }

  dimension: erasurerequest_type {
    label: "抹消依頼区分"
    type: number
    sql: ${TABLE}.erasurerequest_type ;;
  }

  dimension: evaluation_cd {
    label: "評価点CD"
    type: number
    sql: ${TABLE}.evaluation_cd ;;
  }

  dimension: event_count {
    label: "開催回数"
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: exhibit_no {
    label: "出品番号"
    type: number
    sql: ${TABLE}.exhibit_no ;;
  }

  dimension: exhibit_price_cancel {
    label: "出品料_流札"
    type: number
    sql: ${TABLE}.exhibit_price_cancel ;;
  }

  dimension: exhibit_price_cancel_tax {
    label: "出品料_流札_税"
    type: number
    sql: ${TABLE}.exhibit_price_cancel_tax ;;
  }

  dimension: exhibit_price_decision {
    label: "出品料_成約"
    type: number
    sql: ${TABLE}.exhibit_price_decision ;;
  }

  dimension: exhibit_price_decision_tax {
    label: "出品料_成約_税"
    type: number
    sql: ${TABLE}.exhibit_price_decision_tax ;;
  }

  dimension: exhibitcancel_type {
    label: "出品取消区分"
    type: number
    sql: ${TABLE}.exhibitcancel_type ;;
  }

  dimension: exhibitor_consultation_price {
    label: "出品店応談価格"
    type: number
    sql: ${TABLE}.exhibitor_consultation_price ;;
  }

  dimension: exhibitor_consultation_price2 {
    label: "出品店応談価格2"
    type: number
    sql: ${TABLE}.exhibitor_consultation_price2 ;;
  }

  dimension: exhibitor_consultation_type {
    label: "出品店応談区分"
    type: number
    sql: ${TABLE}.exhibitor_consultation_type ;;
  }

  dimension: first_event_count {
    label: "初回開催回数"
    type: number
    sql: ${TABLE}.first_event_count ;;
  }

  dimension: fuel_cd {
    label: "燃料CD"
    type: number
    sql: ${TABLE}.fuel_cd ;;
  }

  dimension: fuel_name {
    label: "燃料名"
    type: string
    sql: ${TABLE}.fuel_name ;;
  }

  dimension: gaisou_hyouka {
    label: "外装評価"
    type: string
    sql: ${TABLE}.gaisou_hyouka ;;
  }

  dimension: gojitsu_buhin {
    label: "後日部品"
    type: number
    sql: ${TABLE}.gojitsu_buhin ;;
  }

  dimension: grade_name {
    label: "グレード名"
    type: string
    sql: ${TABLE}.grade_name ;;
  }

  dimension: haikiryo {
    label: "排気量"
    type: number
    sql: ${TABLE}.haikiryo ;;
  }

  dimension: handle_type {
    label: "ハンドル区分"
    type: number
    sql: ${TABLE}.handle_type ;;
  }

  dimension: hosyou_price {
    label: "保証金"
    type: number
    sql: ${TABLE}.hosyou_price ;;
  }

  dimension: hosyousyo {
    label: "保証書"
    type: number
    sql: ${TABLE}.hosyousyo ;;
  }

  dimension: importedcar_type {
    label: "輸入車区分"
    type: number
    sql: ${TABLE}.importedcar_type ;;
  }

  dimension: jyukazei_rate {
    label: "重課税率"
    type: number
    sql: ${TABLE}.jyukazei_rate ;;
  }

  dimension: kansuisya {
    label: "冠水車"
    type: number
    sql: ${TABLE}.kansuisya ;;
  }

  dimension: keepkey {
    label: "キー預り"
    type: number
    sql: ${TABLE}.keepkey ;;
  }

  dimension: keijidosya_type {
    label: "軽自動車区分"
    type: number
    sql: ${TABLE}.keijidosya_type ;;
  }

  dimension: keishiki {
    label: "型式"
    type: string
    sql: ${TABLE}.keishiki ;;
  }

  dimension: keishiki_cd {
    label: "型式CD"
    type: number
    sql: ${TABLE}.keishiki_cd ;;
  }

  dimension: kibou_price {
    label: "希望価格"
    type: number
    sql: ${TABLE}.kibou_price ;;
  }

  dimension: lane_no {
    label: "レーン番号"
    type: number
    sql: ${TABLE}.lane_no ;;
  }

  dimension: maker_cd {
    label: "メーカーCD"
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: maker_name {
    label: "メーカー名"
    type: string
    sql: ${TABLE}.maker_name ;;
  }

  dimension: manual {
    label: "取説"
    type: number
    sql: ${TABLE}.manual ;;
  }

  dimension: model_nenshiki {
    label: "モデル年式"
    type: string
    sql: ${TABLE}.model_nenshiki ;;
  }

  dimension: naisou_hyouka {
    label: "内装評価"
    type: string
    sql: ${TABLE}.naisou_hyouka ;;
  }

  dimension: nenshiki_ad {
    label: "年式_西暦年"
    type: number
    sql: ${TABLE}.nenshiki_ad ;;
  }

  dimension: nenshiki_month {
    label: "年式_月"
    type: number
    sql: ${TABLE}.nenshiki_month ;;
  }

  dimension: nenshiki_year {
    label: "年式_年"
    type: number
    sql: ${TABLE}.nenshiki_year ;;
  }

  dimension: nyusatsu_cd {
    label: "外部入札CD"
    type: number
    sql: ${TABLE}.nyusatsu_cd ;;
  }

  dimension_group: openday {
    label: "公開日時"
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
    label: "会場CD"
    sql: ${TABLE}.place_cd ;;
  }

  dimension: pref_cd {
    label: "都道府県CD"
    type: number
    sql: ${TABLE}.pref_cd ;;
  }

  dimension: re_exhibit_event_count {
    label: "再出品先開催回数"
    type: number
    sql: ${TABLE}.re_exhibit_event_count ;;
  }

  dimension: re_exhibit_event_number {
    label: "再出品先出品番号"
    type: number
    sql: ${TABLE}.re_exhibit_event_number ;;
  }

  dimension: recordbook {
    label: "記録簿"
    type: number
    sql: ${TABLE}.recordbook ;;
  }

  dimension: recycle_price {
    label: "リサイクル料"
    type: number
    sql: ${TABLE}.recycle_price ;;
  }

  dimension: recycleticket_type {
    label: "リサイクル券区分"
    type: number
    sql: ${TABLE}.recycleticket_type ;;
  }

  dimension: rikushi_cd {
    label: "陸支CD"
    type: number
    sql: ${TABLE}.rikushi_cd ;;
  }

  dimension: run_km {
    label: "走行_KM値"
    type: number
    sql: ${TABLE}.run_km ;;
  }

  dimension: run_mater {
    label: "走行_メータ値"
    type: number
    sql: ${TABLE}.run_mater ;;
  }

  dimension: run_unit {
    label: "走行_単位"
    type: number
    sql: ${TABLE}.run_unit ;;
  }

  dimension: run_unknown {
    label: "走行_不明"
    type: string
    sql: ${TABLE}.run_unknown ;;
  }

  dimension: shift_cd {
    label: "シフトCD"
    type: number
    sql: ${TABLE}.shift_cd ;;
  }

  dimension: shift_name {
    label: "シフト名"
    type: string
    sql: ${TABLE}.shift_name ;;
  }

  dimension: shift_type {
    label: "シフト種別"
    type: number
    sql: ${TABLE}.shift_type ;;
  }

  dimension: sokuraku_price {
    label: "即落価格"
    type: number
    sql: ${TABLE}.sokuraku_price ;;
  }

  dimension: start_price {
    label: "スタート価格"
    type: number
    sql: ${TABLE}.start_price ;;
  }

  dimension: store_member_cd {
    label: "出品店会員CD"
    type: number
    sql: ${TABLE}.store_member_cd ;;
  }

  dimension: syadai_no {
    label: "車台番号"
    type: string
    sql: ${TABLE}.syadai_no ;;
  }

  dimension: syareki_cd {
    label: "車歴CD"
    type: number
    sql: ${TABLE}.syareki_cd ;;
  }

  dimension: syareki_name {
    label: "車歴名"
    type: string
    sql: ${TABLE}.syareki_name ;;
  }

  dimension: syorui_limit_day {
    label: "書類期限"
    type: number
    sql: ${TABLE}.syorui_limit_day ;;
  }

  dimension: tax_rate {
    label: "消費税率"
    type: number
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: touroku_no_kana {
    label: "登録番号_かな"
    type: string
    sql: ${TABLE}.touroku_no_kana ;;
  }

  dimension: touroku_no_no {
    label: "登録番号_番号"
    type: string
    sql: ${TABLE}.touroku_no_no ;;
  }

  dimension: touroku_no_rirkushimei {
    label: "登録番号_陸支名"
    type: string
    sql: ${TABLE}.touroku_no_rirkushimei ;;
  }

  dimension: touroku_no_type {
    label: "登録番号_分類"
    type: string
    sql: ${TABLE}.touroku_no_type ;;
  }

  dimension: vehicleinspection {
    label: "車検"
    type: number
    sql: ${TABLE}.vehicleinspection ;;
  }

  dimension: vehicleinspection_type {
    label: "車検区分"
    type: number
    sql: ${TABLE}.vehicleinspection_type ;;
  }

  dimension: wareki_cd {
    label: "和暦CD"
    type: number
    sql: ${TABLE}.wareki_cd ;;
  }

  dimension: yeartax_price {
    label: "年税額"
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

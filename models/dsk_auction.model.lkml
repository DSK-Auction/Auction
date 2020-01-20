connection: "dsk_auction"

# include all the views
include: "/views/**/*.view"

datagroup: dsk_auction_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dsk_auction_default_datagroup

explore: aa1_ctl {
  label: "オークションカレンダー"
  view_name: aa1_ctl
  view_label: "オークションカレンダー"
}

explore: dhsmst {
  label: "代表車種"
  view_name: dhsmst
  view_label: "代表車種"
}

explore: gnymst {
  label: "外部入札"
  view_name: gnymst
  view_label: "外部入札"
}

explore: kjomst {
  label: "会場"
  view_name: kjomst
  view_label: "会場"
}

explore: mkrmst {
  label: "メーカー"
  view_name: mkrmst
  view_label: "メーカー"
}

explore: mn1_mst {
  label: "会員基本情報"
  view_name: mn1_mst
  view_label: "会員基本情報"
}

explore: sr2_mst {
  label: "出品情報"
  view_name: sr2_mst
  view_label: " 出品情報"
}

explore: auction_info {
  label: "（1）出品情報"
  view_name:sr2_mst

  #オークションカレンダーをjoin
  join: aa1_ctl {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.place_cd} = ${aa1_ctl.place_cd}
      AND ${sr2_mst.event_count} = ${aa1_ctl.event_count};;
  }

  #代表車種をjoin
  join:dhsmst {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.carmodel_cd} = ${dhsmst.carmodel_cd};;
  }

  #外部入札をjoin
  join:gnymst {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.place_cd} = ${gnymst.place_cd}
      AND ${sr2_mst.nyusatsu_cd} = ${gnymst.nyusatsu_cd};;
  }

  #メーカーをjoin
  join:mkrmst {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.maker_cd} = ${mkrmst.maker_cd};;
  }

  #会員基本情報をjoin(出品店会員CD)
  join:mn1_mst {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.store_member_cd} = ${mn1_mst.member_cd};;
  }

  #会員基本情報をjoin(最終応札店会員CD)
  join:mn1_mst2 {
    from: mn1_mst
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.commitstore_member_cd} = ${mn1_mst2.member_cd};;
  }
}

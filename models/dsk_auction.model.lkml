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

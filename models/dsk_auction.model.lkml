connection: "dsk_auction"
#label: "オークションデータ"
# include all the views
include: "/views/**/*.view"

datagroup: dsk_auction_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dsk_auction_default_datagroup

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
  join:mn1_mst_store {
    from: mn1_mst
    view_label: "出品店会員"
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.store_member_cd} = ${mn1_mst_store.member_cd};;
  }

  #会員基本情報をjoin(最終応札店会員CD)
  join:mn1_mst_commitstore {
    from: mn1_mst
    view_label: "最終応札店会員"
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.commitstore_member_cd} = ${mn1_mst_commitstore.member_cd};;
  }
}

explore: maker_info {
  label: "（2）メーカー情報"
  view_name: mkrmst

  #出品情報をjoin
  join: sr2_mst {
    type: full_outer
    relationship: one_to_many
    sql_on: ${mkrmst.maker_cd} = ${sr2_mst.maker_cd} ;;
  }

  #オークションカレンダーをjoin
  join:aa1_ctl {
    type:left_outer
    relationship: many_to_one
    sql_on: ${sr2_mst.place_cd} = ${aa1_ctl.place_cd}
       And ${sr2_mst.event_count} = ${aa1_ctl.event_count};;
  }

}

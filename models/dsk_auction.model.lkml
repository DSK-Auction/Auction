connection: "dsk_auction"

# include all the views
include: "/views/**/*.view"

datagroup: dsk_auction_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dsk_auction_default_datagroup

explore: aa1_ctl {}

explore: dhsmst {}

explore: gnymst {}

explore: kjomst {}

explore: mkrmst {}

explore: mn1_mst {}

explore: sr2_mst {}

view: MakerCommit_info {
  view_label: "メーカー成約情報"
  derived_table: {
    sql: select a.maker_cd,
       count(*) as commit_count,
       avg(a.auction_time) as average_time,
       max(a.commit_price) as max_price,
       min(a.commit_price) as min_price,
       avg(a.commit_price) as avarage_price
from  SR2MST a
where   a.decision_type2 in (2,3,5)
group by a.maker_cd
order by maker_cd
 ;;
  }

  measure: count {
    label: "成約メーカー数"
    type: count
    drill_fields: [detail*]
  }

  dimension: maker_cd {
    label: "メーカーCD"
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: commit_count{
    label: "メーカー成約数"
    type: number
    sql: ${TABLE}.commit_count ;;
  }

  dimension: average_time {
    label: "平均オークション所要時間"
    type: number
    value_format_name: decimal_2
    sql: ${TABLE}.average_time ;;
  }

  dimension: max_price {
    label: "最高落札金額"
    type: number
    sql: ${TABLE}.max_price ;;
  }

  dimension: min_price {
    label: "最低落札金額"
    type: number
    sql: ${TABLE}.min_price ;;
  }

  dimension: avarage_price {
    label: "平均落札金額"
    type: number
    value_format_name: decimal_0
    sql: ${TABLE}.avarage_price ;;
  }

  set: detail {
    fields: [
      maker_cd,
      average_time,
      max_price,
      min_price,
      avarage_price
    ]
  }
}

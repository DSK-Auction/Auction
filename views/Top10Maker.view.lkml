view: Top10Maker {
  view_label: "上位10のメーカー"



  derived_table: {
　  sql: SELECT
         maker_cd
        ,COUNT(maker_cd) AS maker_count
    FROM SR2MST
    INNER JOIN AA1CTL
    ON SR2MST.place_cd = AA1CTL.place_cd
    AND SR2MST.event_count = AA1CTL.event_count
    WHERE {% parameter period_from %} <= AA1CTL.eventday AND {% parameter period_to %} >= AA1CTL.eventday
    GROUP BY maker_cd
    ORDER BY 2 desc
  ;;
　}

   dimension: maker_cd  {
    label: "メーカーCD"
    type: number
    sql: ${TABLE}.maker_cd ;;
  }

  dimension: maker_count{
    label: "メーカーごと出品数"
    type:number
    sql: ${TABLE}.maker_count;;
  }
  parameter: period_from {
    type: number
  }

  parameter: period_to {
    type: number
  }

  }

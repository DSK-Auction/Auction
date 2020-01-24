view: top10carmodel {
  view_label: "上位10車種"



  derived_table: {
    sql: SELECT
         carmodel_cd
        ,COUNT(carmodel_cd) AS carmodel_count
    FROM SR2MST
    INNER JOIN AA1CTL
    ON SR2MST.place_cd = AA1CTL.place_cd
    AND SR2MST.event_count = AA1CTL.event_count
    WHERE {% parameter period_from %} <= AA1CTL.eventday AND {% parameter period_to %} >= AA1CTL.eventday
    GROUP BY carmodel_cd
    ORDER BY carmodel_count desc
    limit 10
  ;;
  }

  dimension: carmodel_cd  {
    label: "車種CD"
    type: number
    sql: ${TABLE}.carmodel_cd ;;
  }

  dimension: carmodel_count{
    label: "車種ごと出品数"
    type:number
    sql: ${TABLE}.maker_count;;
  }
  parameter: period_from {
    label: "期間指定(From)"
    type: number
  }

  parameter: period_to {
    label: "期間指定(To)"
    type: number
  }

}

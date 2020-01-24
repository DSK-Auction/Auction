view: cancelcount {
    derived_table: {
      sql: select b.member_cd as member_cd,
               count(*) as total
        from SR2MST a,
             MN1MST b
        where a.commitstore_member_cd = b.member_cd
        and a.decision_type2 = 4
        group by b.member_cd
        union all
        select d.member_cd as member_cd,
               count(*) as total
        from SR2MST c,
             MN1MST d
        where c.store_member_cd = d.member_cd
        and c.decision_type2 = 4
        group by d.member_cd
         ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: member_cd {
      label: "会員コード"
      type: number
      sql: ${TABLE}.member_cd ;;
    }

    dimension: total {
      label: "キャンセル数"
      type: number
      sql: ${TABLE}.total ;;
    }

    set: detail {
      fields: [member_cd, total]
    }
  }

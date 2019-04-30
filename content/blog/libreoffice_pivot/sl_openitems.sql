SELECT c.name AS customer,
    slt.status,
    slt.transaction_date,
    slt.id,
    slt.transaction_type,
    slt.our_reference,
    slt.ext_reference,
    slt.os_value,
    cum.currency,
    slt.rate,
    slt.base_os_value,
    slt.description,
    syt.description AS payment_terms,
    sla.name AS sl_analysis,
    slt.due_date,
    date_part('year'::text, slt.due_date) AS due_year,
    date_part('week'::text, slt.due_date) AS due_week,
        CASE
            WHEN slt.due_date < 'now'::text::date THEN date_part('year'::text, 'now'::text::date)
            ELSE date_part('year'::text, slt.due_date)
        END AS pay_year,
        CASE
            WHEN slt.due_date < 'now'::text::date THEN date_part('week'::text, 'now'::text::date)
            ELSE date_part('week'::text, slt.due_date)
        END AS pay_week
   FROM sltransactions slt
     JOIN slmaster slm ON slt.slmaster_id = slm.id
     LEFT JOIN sl_analysis sla ON sla.id = slm.sl_analysis_id
     JOIN company c ON c.id = slm.company_id
     LEFT JOIN person p ON p.id = slt.person_id
     JOIN cumaster cum ON slt.currency_id = cum.id
     JOIN cumaster twc ON slt.twin_currency_id = twc.id
     JOIN syterms syt ON slt.payment_term_id = syt.id
  WHERE slt.status::text <> 'P'::text
  ORDER BY c.name, slt.transaction_date, slt.id;
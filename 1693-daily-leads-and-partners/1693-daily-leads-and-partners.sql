# 각 date_id, make_name 별로 lead_id, partner_id 수 출력

SELECT date_id
     , make_name
     , COUNT(DISTINCT lead_id) AS unique_leads
     , COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name
with union_table as (
  select requester_id
  from RequestAccepted

  union all

  select accepter_id
  from RequestAccepted)
, cnt as (
  select requester_id as id
       , count(requester_id) as num
  from union_table
  group by requester_id)
select *
from cnt
where num = (select max(num) from cnt);
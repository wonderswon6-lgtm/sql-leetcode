select id,count(*) as num
from (select requester_id as id
    from requestaccepted
    
    union all
    
    select accepter_id as id
    from requestaccepted) t
group by id 
ORDER BY num DESC
LIMIT 1;
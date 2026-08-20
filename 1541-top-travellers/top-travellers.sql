select
    u.name,
    COALESCE(SUM(r.distance), 0) AS travelled_distance
FROM users u
left join  Rides r
    ON u.id = r.user_id
group by u.id, u.name
order by travelled_distance desc, u.name asc;
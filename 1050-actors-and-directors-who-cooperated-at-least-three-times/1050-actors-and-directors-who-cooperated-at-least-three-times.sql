# 적어도 3번이상 같이 진행한 배우와 감독의 id 출력


SELECT actor_id
     , director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3
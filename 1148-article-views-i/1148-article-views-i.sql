# 자신의 기사를 적어도 1번 이상 본 저자 찾기
# 저자 아이디 기준 오름차순

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id
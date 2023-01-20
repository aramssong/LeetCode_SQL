# 첫번째 알파벳을 대문자로, 나머지 알파벳을 소문자로 변경
# user_id 기준 정렬

SELECT user_id
     , CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2))) AS name
FROM Users
ORDER BY user_id
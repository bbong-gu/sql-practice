-- https://school.programmers.co.kr/learn/courses/30/lessons/144855
SELECT b.CATEGORY, SUM(s.SALES) AS TOTAL_SALES
FROM BOOK b
JOIN BOOK_SALES s
ON b.BOOK_ID = s.BOOK_ID
WHERE YEAR(s.SALES_DATE) = 2022
AND MONTH(s.SALES_DATE) = 1
GROUP BY b.CATEGORY
ORDER BY b.CATEGORY ASC
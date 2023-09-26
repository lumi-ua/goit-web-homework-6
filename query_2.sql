SELECT d.name, s.fullname, ROUND(AVG(g.grades), 2) AS average_grade  
FROM grades g
LEFT JOIN students s ON s.id = g.students_id 
LEFT JOIN disciplines d  ON d.id = g.disciplines_id
WHERE d.id = 5
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 1;
SELECT d.name, t.fullname  
FROM teachers t 
JOIN disciplines d  ON t.id = d.teacher_id 
WHERE t.id = 4
GROUP BY d.name, t.fullname;
SELECT s.fullname, d.name 
FROM disciplines d 
JOIN grades g ON g.disciplines_id = d.id 
JOIN students s ON s.id = g.students_id 
WHERE s.id = 5
GROUP BY s.fullname, d.name;  

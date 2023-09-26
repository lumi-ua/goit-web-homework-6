SELECT s.fullname, gr.name, d.name, g.grades  
FROM students s 
JOIN grades g ON g.students_id  = s.id 
JOIN disciplines d ON d.id = g.disciplines_id 
JOIN [groups] gr ON gr.id = s.group_id
WHERE gr.id = 1 AND d.id = 5
GROUP BY s.fullname, gr.name, d.name, g.grades;
SELECT d.name AS discipline, s.fullname AS student, t.fullname AS teacher 
FROM disciplines d
JOIN grades g ON g.disciplines_id = d.id 
JOIN students s ON s.id = g.students_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 6 AND t.id = 3
GROUP BY discipline, student, teacher;

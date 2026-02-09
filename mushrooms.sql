#Query 1 — Class distribution
SELECT 
		class,
    COUNT(*) AS total
FROM mushrooms
GROUP BY class;

#Query 2 — Percentage poisonous
SELECT 
    class,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM mushrooms) AS percentage
FROM mushrooms
GROUP BY class;

#Query 3 — Odor vs class
SELECT 
    odor,
    class,
    COUNT(*) AS total
FROM mushrooms
GROUP BY odor, class
ORDER BY odor, class;

#Query 4 — Top poisonous cap shapes
SELECT 
    'cap-shape',
    COUNT(*) AS poisonous_count
FROM mushrooms
WHERE class = 'p'
GROUP BY 'cap-shape'
ORDER BY poisonous_count DESC;

#Query 5 — Most common features of poisonous mushrooms
SELECT 
    odor,
    'cap-color',
    COUNT(*) AS count_poisonous
FROM mushrooms
WHERE class = 'p'
GROUP BY odor, 'cap-color'
ORDER BY count_poisonous DESC
LIMIT 10;
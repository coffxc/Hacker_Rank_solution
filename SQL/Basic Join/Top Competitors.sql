SELECT h.hacker_id,h.name
FROM hackers h
JOIN Submissions s
ON h.hacker_id =s.hacker_id
JOIN Challenges c
ON s.challenge_id=c.challenge_id
JOIN Difficulty d 
ON c.difficulty_level=d.difficulty_level
WHERE s.score=d.score
Group BY h.hacker_id,h.name
Having COUNT(*)>1
ORDER BY COUNT(*) DESC, h.hacker_id

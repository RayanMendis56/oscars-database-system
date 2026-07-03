# View 1
# 1) Winners per ceremony & category
# Pulls each category’s winner with film and person.

CREATE OR REPLACE VIEW vw_award_winners AS
SELECT
  a.Award_ID,
  a.Ceremony_ID,
  a.Award_name      AS Category,
  f.Film_ID,
  f.Film_title,
  p.Person_ID,
  p.Person_name
FROM Award a
LEFT JOIN Film   f ON f.Film_ID   = a.Film_ID
LEFT JOIN Person p ON p.Person_ID = a.Person_ID;



# View2
# 2) Film nomination & win tally
# Counts nominations and wins per film (for quick leaderboard-style summaries).

CREATE OR REPLACE VIEW vw_film_nomination_stats AS
SELECT
  f.Film_ID,
  f.Film_title,
  f.Ceremony_ID,
  COUNT(*) AS nominations,
  SUM(CASE WHEN n.Is_Winner = 1 THEN 1 ELSE 0 END) AS wins
FROM Nominee n
JOIN Film f ON f.Film_ID = n.Film_ID
GROUP BY f.Film_ID, f.Film_title, f.Ceremony_ID;



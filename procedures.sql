# Procedure1

# Lists each award in a ceremony with the winning film and person (from your Award table).

DROP PROCEDURE IF EXISTS sp_ceremony_winners;
DELIMITER $$
CREATE PROCEDURE sp_ceremony_winners(IN p_ceremony_id INT)
BEGIN
  SELECT 
      a.Award_ID,
      a.Award_name        AS Category,
      f.Film_title        AS Winning_Film,
      p.Person_name       AS Winning_Person
  FROM Award a
  LEFT JOIN Film   f ON f.Film_ID   = a.Film_ID
  LEFT JOIN Person p ON p.Person_ID = a.Person_ID
  WHERE a.Ceremony_ID = p_ceremony_id
  ORDER BY a.Award_name;
END $$
DELIMITER ;
#CALL sp_ceremony_winners(5);



# Procedure2

# Shows all films a person acted in (from Act), with role and ceremony year.

DROP PROCEDURE IF EXISTS sp_person_filmography;
DELIMITER $$
CREATE PROCEDURE sp_person_filmography(IN p_person_id INT)
BEGIN
  SELECT 
      a.Person_ID,
      f.Film_ID,
      f.Film_title,
      c.Year,
      a.Role
  FROM Act a
  JOIN Film     f ON f.Film_ID = a.Film_ID
  JOIN Ceremony c ON c.Ceremony_ID = f.Ceremony_ID
  WHERE a.Person_ID = p_person_id
  ORDER BY c.Year, f.Film_title;
END $$
DELIMITER ;
#CALL sp_person_filmography(1);

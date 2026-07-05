# Trigger 1
# Enforce “one winner per award” (and no NULLs for winners)

DELIMITER //

CREATE TRIGGER bi_nominee_single_winner
BEFORE INSERT ON Nominee
FOR EACH ROW
BEGIN
  # All DECLAREs must be first in the block
  DECLARE v_cnt INT DEFAULT 0;

  IF NEW.Is_Winner = 1 THEN
    # 1) enforce single winner per Award_ID
    SELECT COUNT(*) INTO v_cnt
      FROM Nominee
     WHERE Award_ID = NEW.Award_ID
       AND Is_Winner = 1;

    IF v_cnt > 0 THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only one winner allowed per Award_ID';
    END IF;

    # 2) winner must have both Film_ID and Person_ID
    IF NEW.Film_ID IS NULL OR NEW.Person_ID IS NULL THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Winner must have non-NULL Film_ID and Person_ID';
    END IF;
  END IF;
END;
//
DELIMITER ;






# Trigger2
# Nominee.Category must equal Award.Award_name for that Award_ID.

DELIMITER //

CREATE TRIGGER bi_nominee_category_match
BEFORE INSERT ON Nominee
FOR EACH ROW
BEGIN
  DECLARE v_award_name VARCHAR(50);
  DECLARE v_msg        VARCHAR(255);

  # Get the canonical award name for this Award_ID
  SELECT Award_name
    INTO v_award_name
    FROM Award
   WHERE Award_ID = NEW.Award_ID
   LIMIT 1;

  # Award_ID must exist
  IF v_award_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Invalid Award_ID: award does not exist';
  END IF;

  # Category must exactly match Award_name
  IF NEW.Category IS NULL OR NEW.Category <> v_award_name THEN
    SET v_msg = CONCAT('Category must equal Award_name (expected: ', v_award_name, ')');
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = v_msg;
  END IF;
END;
//
DELIMITER ;



# Trigger 3-ceremony table
DELIMITER //

CREATE TRIGGER bi_ceremony_future_year
BEFORE INSERT ON Ceremony
FOR EACH ROW
BEGIN
    IF NEW.Year > YEAR(CURDATE()) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Ceremony year cannot be in the future.';
    END IF;
END//

DELIMITER ;

# Triggger 4-ceremony table
DELIMITER //

CREATE TRIGGER bi_ceremony_unique_year
BEFORE INSERT ON Ceremony
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Ceremony
    WHERE Year = NEW.Year;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='A ceremony already exists for this year.';
    END IF;
END//

DELIMITER ;

# Trigger 5-country table,Country code must be uppercase
DELIMITER //

CREATE TRIGGER bi_country_uppercase
BEFORE INSERT ON Country
FOR EACH ROW
BEGIN
    SET NEW.Country_Code = UPPER(NEW.Country_Code);
END//

DELIMITER ;

# Trigger 6-country table,Prevent duplicate country names
DELIMITER //

CREATE TRIGGER bi_country_duplicate
BEFORE INSERT ON Country
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Country
    WHERE Country_Name = NEW.Country_Name;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Country already exists.';
    END IF;
END//

DELIMITER ;


# Trigger 7-Person table,Validate gender
DELIMITER //

CREATE TRIGGER bi_person_gender
BEFORE INSERT ON Person
FOR EACH ROW
BEGIN
    IF NEW.Gender NOT IN ('Male','Female') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Gender must be Male or Female.';
    END IF;
END//

DELIMITER ;

# Trigger 8-Person Table,Prevent duplicate person names
DELIMITER //

CREATE TRIGGER bi_person_duplicate
BEFORE INSERT ON Person
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Person
    WHERE Person_Name = NEW.Person_Name;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Person already exists.';
    END IF;
END//

DELIMITER ;

# Trigger 9-Film Table,Film must match ceremony
DELIMITER //

CREATE TRIGGER bi_film_valid_ceremony
BEFORE INSERT ON Film
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Ceremony
    WHERE Ceremony_ID = NEW.Ceremony_ID;

    IF total = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Invalid ceremony.';
    END IF;
END//

DELIMITER ;

# Trigger 10-Film Table,Prevent duplicate film in same ceremony
DELIMITER //

CREATE TRIGGER bi_film_duplicate
BEFORE INSERT ON Film
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Film
    WHERE Film_Title = NEW.Film_Title
      AND Ceremony_ID = NEW.Ceremony_ID;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Film already exists in this ceremony.';
    END IF;
END//

DELIMITER ;

# Trigger 11-Award Table,Prevent duplicate award category per ceremony
DELIMITER //

CREATE TRIGGER bi_award_duplicate
BEFORE INSERT ON Award
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Award
    WHERE Ceremony_ID = NEW.Ceremony_ID
      AND Award_Name = NEW.Award_Name;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Award category already exists for this ceremony.';
    END IF;
END//

DELIMITER ;

# Trigger 12-Award Table,Film and person must belong to nominee list
DELIMITER //

CREATE TRIGGER bi_award_nominee_check
BEFORE INSERT ON Award
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Nominee
    WHERE Award_ID = NEW.Award_ID
      AND Film_ID = NEW.Film_ID
      AND Person_ID = NEW.Person_ID;

    IF total = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Winner must first exist as a nominee.';
    END IF;
END//

DELIMITER ;

# Trigger 13-Act table,Prevent duplicate acting role
DELIMITER //

CREATE TRIGGER bi_act_duplicate
BEFORE INSERT ON Act
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Act
    WHERE Film_ID = NEW.Film_ID
      AND Person_ID = NEW.Person_ID
      AND Role = NEW.Role;

    IF total > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Role already assigned.';
    END IF;
END//

DELIMITER ;

# Trigger 14-Act table,Person must exist in nominee table
DELIMITER //

CREATE TRIGGER bi_act_nominee
BEFORE INSERT ON Act
FOR EACH ROW
BEGIN
    DECLARE total INT;

    SELECT COUNT(*)
    INTO total
    FROM Nominee
    WHERE Film_ID = NEW.Film_ID
      AND Person_ID = NEW.Person_ID;

    IF total = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Person must be nominated for this film.';
    END IF;
END//

DELIMITER ;
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

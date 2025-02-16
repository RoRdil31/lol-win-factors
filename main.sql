use practice;

SELECT COUNT(*)
    FROM challenger_matches_2000
    
    ;

SHOW FULL COLUMNS 
    FROM challenger_matches_2000
    ;

UPDATE challenger_matches_2000
SET 
  eligibleForProgression     = IF(eligibleForProgression     = 'True', '1', '0'),
  firstBloodAssist           = IF(firstBloodAssist           = 'True', '1', '0'),
  firstBloodKill             = IF(firstBloodKill             = 'True', '1', '0'),
  firstTowerAssist           = IF(firstTowerAssist           = 'True', '1', '0'),
  firstTowerKill             = IF(firstTowerKill             = 'True', '1', '0'),
  gameEndedInEarlySurrender  = IF(gameEndedInEarlySurrender  = 'True', '1', '0'),
  gameEndedInSurrender       = IF(gameEndedInSurrender       = 'True', '1', '0'),
  teamEarlySurrendered       = IF(teamEarlySurrendered       = 'True', '1', '0'),
  win                        = IF(win                        = 'True', '1', '0');

ALTER TABLE challenger_matches_2000
  MODIFY COLUMN eligibleForProgression     TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN firstBloodAssist           TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN firstBloodKill             TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN firstTowerAssist           TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN firstTowerKill             TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN gameEndedInEarlySurrender  TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN gameEndedInSurrender       TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN teamEarlySurrendered       TINYINT(1) NOT NULL DEFAULT 0,
  MODIFY COLUMN win                        TINYINT(1) NOT NULL DEFAULT 0;

# ===================================================================================

SELECT 
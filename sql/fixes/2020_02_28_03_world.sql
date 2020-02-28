-- ACHIEVEMENT_CRITERIA_DATA_TYPE_BG_LOSS_TEAM_SCORE
DELETE FROM `achievement_criteria_data` WHERE `type` = 17;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(611, 17, 1600, 0, ''),
(1235, 17, 1600, 1590, ''),
(1236, 17, 3, 0, ''),
(1238, 17, 1600, 0, '');

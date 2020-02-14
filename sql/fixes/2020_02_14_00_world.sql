-- Gonna Go When the Volcano Blows (10 player) (2047)
DELETE FROM `achievement_criteria_data` WHERE criteria_id IN(7326);
DELETE FROM `disables` WHERE sourceType=4 AND entry IN(7326);
INSERT INTO `achievement_criteria_data` VALUES(7326, 18, 0, 0, "");
INSERT INTO `achievement_criteria_data` VALUES(7326, 12, 0, 0, "");

-- Gonna Go When the Volcano Blows (25 player) (2048)
DELETE FROM `achievement_criteria_data` WHERE criteria_id IN(7327);
DELETE FROM `disables` WHERE sourceType=4 AND entry IN(7327);
INSERT INTO `achievement_criteria_data` VALUES(7327, 18, 0, 0, "");
INSERT INTO `achievement_criteria_data` VALUES(7327, 12, 1, 0, "");

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_sartharion_lava_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(57591, 'spell_sartharion_lava_damage');

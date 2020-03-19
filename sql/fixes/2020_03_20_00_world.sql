-- Add pathing as missing boss script to Dire Maul
DELETE FROM `creature_addon` WHERE `guid`=84267;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(84267, 842670, 0, 0, 0, 0, NULL);
UPDATE `creature` SET `position_x`=-67.534309, `position_y`=216.962418, `position_z`=-4.985759, `orientation`=6.228835, `MovementType`=2 WHERE  `guid`=84267;
DELETE FROM `waypoint_data` WHERE `id`=842670;
INSERT INTO `waypoint_data` VALUES (842670, 1, -57.0345, 217.022, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 2, -36.0348, 217.14, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 3, -9.07117, 217.187, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 4, 11.9286, 217.095, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 5, 43.4283, 216.956, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 6, 64.4281, 216.864, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 7, 95.9278, 216.726, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 8, 112.443, 217.188, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 9, 114.831, 227.788, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 10, 115.244, 248.784, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 11, 115.863, 280.278, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 12, 116.063, 301.276, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 13, 116.055, 322.276, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 14, 116.05, 332.776, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 15, 105.547, 340.58, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 16, 74.0565, 339.97, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 17, 63.5586, 339.757, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 18, 32.0651, 339.119, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 19, 11.0694, 338.693, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 20, -9.92642, 338.276, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 21, -30.924, 337.956, -4.98576, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 22, -51.9215, 337.636, -4.99183, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 23, -86.6305, 337.107, -4.98709, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 24, -86.1165, 316.114, -4.98709, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 25, -86.095, 295.116, -4.98709, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 26, -86.3073, 263.618, -4.98684, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 27, -86.2432, 242.618, -4.98684, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842670, 28, -86.0875, 211.412, -4.98684, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature_addon` WHERE `guid`=84266;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(84266, 842660, 0, 0, 0, 0, NULL);
UPDATE `creature` SET `position_x`=108.997498, `position_y`=337.835663, `position_z`=-4.985805, `orientation`=3.016336, `MovementType`=2 WHERE  `guid`=84266;
DELETE FROM `waypoint_data` WHERE `id`=842660;
INSERT INTO `waypoint_data` VALUES (842660, 1, 87.8843, 336.771, -4.9858, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 2, 55.126, 336.436, -4.9858, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 3, 22.3775, 337.299, -4.9858, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 4, -5.61945, 337.715, -4.9858, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 5, -31.2366, 338.096, -4.9858, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 6, -49.8564, 337.999, -4.99179, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 7, -84.7159, 337.818, -4.98717, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 8, -84.7168, 307.438, -4.98717, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 9, -84.7175, 283.638, -4.98687, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 10, -85.9069, 260.428, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 11, -86.0469, 230.189, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 12, -85.8592, 211.43, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 13, -67.2412, 211.706, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 14, -51.003, 211.946, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 15, -22.8661, 212.363, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 16, 9.89031, 212.848, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 17, 42.5067, 213.331, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 18, 70.6437, 213.747, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 19, 110.399, 214.336, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 20, 111.79, 230.516, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 21, 114.038, 258.285, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 22, 115.078, 283.884, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 23, 115.514, 312.021, -4.9867, 0, 0, 0, 0, 100, 0);
INSERT INTO `waypoint_data` VALUES (842660, 24, 115.949, 340.018, -4.9867, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature` WHERE `id`=14566;
UPDATE `creature` SET `position_x`=13.568108, `position_y`=474.661285, `position_z`=-23.299328 , `orientation`=4.629283, `wander_distance`=15, `MovementType`=1 WHERE  `guid`=56959;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_tendris_warpwood' WHERE  `entry`=11489;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 11489;

-- Ancient Equine Spirit SAI
SET @ENTRY := 14566;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,89,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ancient Equine Spirit - On Just Summoned - Start Random Movement");

UPDATE `creature` SET `wander_distance`=15, `MovementType`=1 WHERE  `guid`=84376;
UPDATE `creature_template` SET `speed_walk`=1 WHERE  `entry`=11496;

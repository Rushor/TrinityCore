-- Eris Havenfire 
SET @ENTRY := 14494;
UPDATE `creature_template` SET `AIName`="" , `scriptname` ="npc_eris_havenfire" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;

/* Peasnats Text */
DELETE FROM `creature_text` WHERE `creatureid`=14485;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(14485, 0, 0, 'The scourge are upon us! Run! Run for your lives!', 14, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 0, 1, 'Please help us! The Prince has gone mad!', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 0, 2, 'Seek sanctuary in Hearthglen! It is our only hope!', 14, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 1, 1, 'Thank you, kind stranger. May your heroism never be forgotten.', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 1, 2, 'The power of the light is truly great and merciful.', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 1, 3, 'Stranger, find the fallen Prince Menethil and end his reign of terror.', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 2, 0, 'Death take me! I cannot go on! I have nothing left...', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 2, 1, 'Should I live through this, I shall make it my live\'s sole ambition to destroy Arthas...', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 2, 2, 'The pain is unbearable!', 12, 0, 100, 0, 0, 0, 'Peasant'),
(14485, 2, 3, 'I won\'t make it... go... go on without me...', 12, 0, 100, 0, 0, 0, 'Peasant');

/* eris win/fail texts */
DELETE FROM `creature_text` WHERE `creatureid`=14494;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(14494, 0, 0, 'We are saved! The peasants have escaped the Scourge!', 12, 0, 100, 0, 0, 0, 'eris'),
(14494, 1, 0, 'I now return to whence I came, only to find myself here once more to relive the same epic tragedy.', 12, 0, 100, 0, 0, 0, 'eris');

-- Scourge Footsoldier SAI
SET @ENTRY := 14486;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,49,14486,2,0,0,0,0,21,200,0,0,0,0,0,0,"Scourge Footsoldier - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,300000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Footsoldier - On Just Summoned - Despawn In 300000 ms");

/* Bürger */
UPDATE `creature_template` SET `faction`=250, `speed_walk`=0.5, `RegenHealth`=0, `unit_flags`=`unit_flags`|8|512  WHERE `entry`=14485;
-- Plagued Peasant SAI
SET @ENTRY := 14485;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,63,0,35,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Summoned - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,11,23127,19,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Summoned - Cast 'Death's Door'"),
(@ENTRY,0,2,0,40,0,25,0,5,14485,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Waypoint 5 Reached - Say Line 1"),
(@ENTRY,0,3,4,40,0,100,0,5,14485,0,0,45,2,2,0,0,0,0,9,14494,0,200,0,0,0,0,"Plagued Peasant - On Waypoint 5 Reached - Set Data 2 2"),
(@ENTRY,0,4,10,61,0,100,0,5,14485,0,0,11,23107,2,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Waypoint 5 Reached - Cast 'Enter the Light DND'"),
(@ENTRY,0,5,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,14494,0,200,0,0,0,0,"Plagued Peasant - On Just Died - Set Data 1 1"),
(@ENTRY,0,6,7,54,0,100,0,0,0,0,0,53,0,14485,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Summoned - Start Waypoint"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Summoned - Set Reactstate Passive"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,18,520,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Summoned - Set Flags Pvp Attackable & Immune To NPC's"),
(@ENTRY,0,9,0,6,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Just Died - Say Line 2"),
(@ENTRY,0,10,0,61,0,100,0,5,14485,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagued Peasant - On Waypoint 5 Reached - Despawn In 4000 ms"),
(@ENTRY,0,11,0,40,0,35,1,2,14485,0,0,12,14486,6,0,0,0,0,8,0,0,0,3357.98,-3032.79,162.284,3.71689,"Plagued Peasant - On Waypoint 2 Reached - Summon Creature 'Scourge Footsoldier' (No Repeat)");

/* wps */
DELETE FROM `waypoints` WHERE `entry`=14485;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(14485, 1, 3358.80, -3047.92, 165.25, 'Peasant'),
(14485, 2, 3350.34, -3039.96, 163.08, 'Peasant'), 
(14485, 3, 3346.60, -3024.72, 161.20, 'Peasant'), 
(14485, 4, 3341.46, -3006.83, 161.30, 'Peasant'), 
(14485, 5, 3334.23, -2989.67, 161.19, 'Peasant');

UPDATE `creature_template` SET `unit_flags`=4 WHERE  `entry`=14489;

-- Scourge Archer SAI
SET @ENTRY := 14489;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,6000,12000,6000,12000,11,45425,66,0,0,0,0,19,14485,200,0,0,0,0,0,"Scourge Archer - Out of Combat - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,6000,20000,6000,20000,11,45425,66,0,0,0,0,19,14485,200,0,0,0,0,0,"Scourge Archer - In Combat - Cast 'Shoot'");

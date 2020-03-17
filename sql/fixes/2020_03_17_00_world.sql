-- Event UBRS: Solakar Flamewreath + Spawn 5 waves of Rookery Guardian and Rookery Hatcher
UPDATE `gameobject_template` SET `data6`=14589 WHERE `entry`=175245;
DELETE FROM `event_scripts` WHERE `id`=14589;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(14589, 8, 10, 10258, 900000, 0, 71.967827, -322.663055, 91.446510, 4.720970), 
(14589, 8, 10, 10683, 900000, 0, 86.548286, -322.537964, 91.445511, 4.720970), 
(14589, 38, 10, 10258, 900000, 0, 71.967827, -322.663055, 91.446510, 4.720970), 
(14589, 38, 10, 10683, 900000, 0, 86.548286, -322.537964, 91.445511, 4.720970), 
(14589, 68, 10, 10258, 900000, 0, 71.967827, -322.663055, 91.446510, 4.720970), 
(14589, 68, 10, 10683, 900000, 0, 86.548286, -322.537964, 91.445511, 4.720970), 
(14589, 98, 10, 10258, 900000, 0, 71.967827, -322.663055, 91.446510, 4.720970), 
(14589, 98, 10, 10683, 900000, 0, 86.548286, -322.537964, 91.445511, 4.720970), 
(14589, 128, 10, 10258, 900000, 0, 71.967827, -322.663055, 91.446510, 4.720970), 
(14589, 128, 10, 10683, 900000, 0, 86.548286, -322.537964, 91.445511, 4.720970), 
(14589, 148, 10, 10264, 900000, 0, 79.558296, -316.356567, 91.437233, 4.822049);

-- Solakar Flamewreath SAI
SET @ENTRY := 10264;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,60,0,0,0,0,0,0,"Solakar Flamewreath - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,5000,7000,10000,13000,11,16727,2,0,0,0,0,2,0,0,0,0,0,0,0,"Solakar Flamewreath - In Combat - Cast 'War Stomp'");

-- Rookery Guardian SAI
SET @ENTRY := 10258;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,11000,12000,11,15580,2,0,0,0,0,2,0,0,0,0,0,0,0,"Rookery Guardian - In Combat - Cast 'Strike' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,19000,22000,11,15572,2,0,0,0,0,2,0,0,0,0,0,0,0,"Rookery Guardian - In Combat - Cast 'Sunder Armor' (Normal Dungeon)"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,60,0,0,0,0,0,0,"Rookery Guardian - On Just Summoned - Start Attacking");

-- Rookery Hatcher SAI
SET @ENTRY := 10683;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,11000,12000,11,15580,2,0,0,0,0,2,0,0,0,0,0,0,0,"Rookery Hatcher - In Combat - Cast 'Strike' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,19000,22000,11,15572,2,0,0,0,0,2,0,0,0,0,0,0,0,"Rookery Hatcher - In Combat - Cast 'Sunder Armor' (Normal Dungeon)"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,60,0,0,0,0,0,0,"Rookery Hatcher - On Just Summoned - Start Attacking");

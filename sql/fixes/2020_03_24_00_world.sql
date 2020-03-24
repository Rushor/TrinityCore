-- [Quest] Covert Ops - Alpha - Beta - http://www.wowhead.com/quest=1079/covert-ops-alpha
UPDATE `gameobject_template` SET `data1`=20 WHERE  `entry` IN (19600, 19591);
UPDATE `item_loot_template` SET `Chance`=100 WHERE  `entry`=5738;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (6630, 6626, 6627, 6656);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(6630, 'spell_set_ng_5_charge'),
(6626, 'spell_set_ng_5_charge'),
(6627, 'spell_remote_detonator'),
(6656, 'spell_remote_detonator');

-- Venture Co. Explosives Wagon SAI
SET @ENTRY := 20899;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,45,1,1,0,0,0,0,9,0,0,100,0,0,0,0,"Venture Co. Explosives Wagon - On Gameobject State Changed - Set Data 1 1");

-- Venture Co. Explosives Wagon SAI
SET @ENTRY := 19547;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,45,2,2,0,0,0,0,9,0,0,100,0,0,0,0,"Venture Co. Explosives Wagon - On Gameobject State Changed - Set Data 2 2");

-- Venture Co. Deforester SAI
SET @ENTRY := 3991;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Deforester - On Data Set 1 1 - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Deforester - On Data Set 1 1 - Run Script"),
(@ENTRY,0,2,0,0,0,100,0,0,0,3400,4800,11,20793,64,0,0,0,0,2,0,0,0,0,0,0,0,"Venture Co. Deforester - In Combat - Cast 'Fireball' with CastFlag: 64 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,0,0,100,0,9000,16000,18000,24000,11,5740,0,0,0,0,0,2,0,0,0,0,0,0,0,"Venture Co. Deforester - In Combat - Cast 'Rain of Fire' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Venture Co. Deforester - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 399100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,69,1,0,0,2,0,2,8,0,0,0,1040.9113,-433.507,2.2887,0,"Venture Co. Operator - On Script - Move To Position"),
(@ENTRY,9,1,0,0,0,100,0,50000,50000,0,0,24,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Operator - On Script - Evade");

-- Actionlist SAI
SET @ENTRY := 399101;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,69,2,0,0,2,0,2,8,0,0,0,1171.966, 38.364, -4.663,0,"Venture Co. Operator - On Script - Move To Position"),
(@ENTRY,9,1,0,0,0,100,0,50000,50000,0,0,24,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Deforester - On Script - Evade");

SET @ENTRY := 3999;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,80,399100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Windshear Digger - On Data Set 1 1 - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,80,399101,2,0,0,0,0,1,0,0,0,0,0,0,0,"Windshear Digger - On Data Set 2 2 - Run Script");

SET @ENTRY := 3989;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,80,399100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Logger - On Data Set 1 1 - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,80,399101,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Logger - On Data Set 2 2 - Run Script"),
(@ENTRY,0,2,0,0,0,100,0,0,0,2300,3900,11,10277,64,0,0,0,0,2,0,0,0,0,0,0,0,"Venture Co. Logger - In Combat - Cast 'Throw' with CastFlag: 64 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Venture Co. Logger - Between 0-15% Health - Flee For Assist (No Repeat)");

SET @ENTRY := 4004;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,80,399100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Windshear Overlord - On Data Set 1 1 - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,80,399101,2,0,0,0,0,1,0,0,0,0,0,0,0,"Windshear Overlord - On Data Set 2 2 - Run Script"),
(@ENTRY,0,2,0,0,0,100,0,1000,3000,30000,45000,11,3631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Windshear Overlord - In Combat - Cast 'Battle Fury' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,3,0,0,0,100,0,4000,11000,7000,15000,11,8139,32,0,0,0,0,2,0,0,0,0,0,0,0,"Windshear Overlord - In Combat - Cast 'Fevered Fatigue' with CastFlag: 32 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,4,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Windshear Overlord - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,5,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0,"Windshear Overlord - On Just Summoned - Start Attacking");

SET @ENTRY := 3988;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,80,399100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Operator - On Data Set 1 1 - Run Script"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,80,399101,2,0,0,0,0,1,0,0,0,0,0,0,0,"Venture Co. Operator - On Data Set 2 2 - Run Script"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Venture Co. Operator - Between 0-15% Health - Flee For Assist (No Repeat)");

UPDATE `gameobject_template_addon` SET `faction`=35, `flags`=4 WHERE  `entry` IN (19603, 19602);

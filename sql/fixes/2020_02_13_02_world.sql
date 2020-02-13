DELETE FROM `creature_text` WHERE `creatureid`=10096;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES 
(10096, 0, 0, 'The Sons of Thaurissan shall watch you perish in the Ring of the Law!', 14, 0, 100, 5, 0, 0, 'grimstone SCRIPT_TEXT1', 5442),
(10096, 1, 0, 'You have been sentenced to death for crimes against the Dark Iron nation!', 14, 0, 100, 25, 0, 0, 'grimstone SCRIPT_TEXT2', 5441),
(10096, 2, 0, 'Unleash the fury and let it be done!', 14, 0, 100, 15, 0, 0, 'grimstone SCRIPT_TEXT3', 5443),
(10096, 3, 0, 'Haha! I bet you thought you were done!', 14, 0, 100, 153, 0, 0, 'grimstone SCRIPT_TEXT4', 5444),
(10096, 4, 0, 'But your real punishment lies ahead.', 14, 0, 100, 15, 0, 0, 'grimstone SCRIPT_TEXT5', 5445),
(10096, 5, 0, 'Good riddance!', 14, 0, 100, 5, 0, 0, 'grimstone SCRIPT_TEXT6', 5446);

DELETE FROM `spell_target_position` where `id` IN (15740, 15741, 15737, 15739);
INSERT INTO `spell_target_position` (`id`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`) VALUES 
(15740,0,230,630.355,-174.342,-52.6395,0),
(15741,0,230,633.182,-184.641,-52.6346,0),
(15737,0,230,611.073,-222.201,-52.6412,0),
(15739,0,230,600.752,-225.146,-52.6315,0);

-- Dredge Worm SAI
SET @ENTRY := 8925;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Dredge Worm - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,10000,15000,11,14535,0,0,0,0,0,5,0,0,0,0,0,0,0,"Dredge Worm - In Combat - Cast 'Dredge Sickness'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,8000,8000,11,13298,32,0,0,0,0,5,0,0,0,0,0,0,0,"Dredge Worm - In Combat - Cast 'Poison'"),
(@ENTRY,0,3,0,0,0,100,0,5000,6000,3000,3000,11,6917,0,0,0,0,0,5,0,0,0,0,0,0,0,"Dredge Worm - In Combat - Cast 'Venom Spit'");

-- Deep Stinger SAI
SET @ENTRY := 8926;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Deep Stinger - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,6000,8000,11,14534,0,0,0,0,0,5,0,0,0,0,0,0,0,"Deep Stinger - In Combat - Cast 'Barbed Sting'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,4000,4000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deep Stinger - In Combat - Cast 'Cleave'");

-- Dark Screecher SAI
SET @ENTRY := 8927;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Dark Screecher - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,6000,8000,11,14538,0,0,0,0,0,5,0,0,0,0,0,0,0,"Dark Screecher - In Combat - Cast 'Aural Shock'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,9000,10000,11,8281,0,0,0,0,0,5,0,0,0,0,0,0,0,"Dark Screecher - In Combat - Cast 'Sonic Burst'");

-- Burrowing Thundersnout SAI
SET @ENTRY := 8928;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Burrowing Thundersnout - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,30000,30000,11,14533,0,0,0,0,0,5,0,0,0,0,0,0,0,"Burrowing Thundersnout - In Combat - Cast 'Disjunction'"),
(@ENTRY,0,2,0,0,0,100,0,3000,3000,3000,3000,11,15611,0,0,0,0,0,5,0,0,0,0,0,0,0,"Burrowing Thundersnout - In Combat - Cast 'Lizard Bolt'"),
(@ENTRY,0,3,0,0,0,100,0,5000,5000,8000,8000,11,15548,0,0,0,0,0,5,0,0,0,0,0,0,0,"Burrowing Thundersnout - In Combat - Cast 'Thunderclap'");

-- Cave Creeper SAI
SET @ENTRY := 8933;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Cave Creeper - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,20000,20000,11,14532,0,0,0,0,0,5,0,0,0,0,0,0,0,"Cave Creeper - In Combat - Cast 'Creeper Venom'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,8000,8000,11,745,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cave Creeper - In Combat - Cast 'Web'"),
(@ENTRY,0,3,0,0,0,100,0,5000,6000,4000,8000,11,15656,0,0,0,0,0,5,0,0,0,0,0,0,0,"Cave Creeper - In Combat - Cast 'Poisonous Stab'");

-- Borer Beetle SAI
SET @ENTRY := 8932;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,512,0,0,0,0,49,0,0,0,0,0,0,21,100,0,0,0,0,0,0,"Borer Beetle - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,0,0,100,0,2000,2000,30000,30000,11,14539,0,0,0,0,0,2,0,0,0,0,0,0,0,"Borer Beetle - In Combat - Cast 'Putrid Enzyme'"),
(@ENTRY,0,2,0,0,0,100,0,4000,4000,15000,20000,11,6016,0,0,0,0,0,5,0,0,0,0,0,0,0,"Borer Beetle - In Combat - Cast 'Pierce Armor'");

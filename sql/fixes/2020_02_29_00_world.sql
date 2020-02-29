-- 
DELETE FROM `gameobject_template` WHERE `entry` IN (179526, 179527,179528,179530,179531,179532,179533);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(179526, 3, 391, 'Warpwood Pod', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 179527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340),
(179527, 6, 391, 'Warpwood Pod - Root', '', '', '', 0.75, 0, 0, 10, 22800, 0, 86400, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019),
(179528, 3, 391, 'Warpwood Pod', '', '', '', 1, 57, 16548, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340),
(179530, 6, 391, 'Warpwood Pod - Spore', '', '', '', 0.75, 0, 0, 10, 22821, 0, 86400, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019),
(179531, 6, 391, 'Warpwood Pod - Summon', '', '', '', 0.75, 0, 0, 10, 22803, 0, 86400, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019),
(179532, 3, 391, 'Warpwood Pod', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 179530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340),
(179533, 3, 391, 'Warpwood Pod', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 179531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartGameObjectAI', '', 12340);

-- Warpwood Pod SAI
SET @ENTRY := 179526;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,2,0,0,0,67,1,5000,5000,0,0,100,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Create Timed Event"),
(@ENTRY,1,1,2,61,0,100,0,0,0,0,0,11,22800,2,0,0,0,0,7,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Cast Entangling Roots"),
(@ENTRY,1,2,0,61,0,100,0,0,0,0,0,118,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Set Gameobject State"),
(@ENTRY,1,3,0,59,0,100,0,1,0,0,0,41,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Timed Event - Despawn");

-- Warpwood Pod SAI
SET @ENTRY := 179532;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,0,1,0,0,0,67,1,5000,5000,0,0,100,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Create Timed Event"),
(@ENTRY,1,1,2,61,0,100,0,0,0,0,0,11,22803,2,0,0,0,0,7,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Cast Warpwood Spores"),
(@ENTRY,1,2,0,61,0,100,0,0,0,0,0,118,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Set Gameobject State"),
(@ENTRY,1,3,0,59,0,100,0,1,0,0,0,41,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Timed Event - Despawn");

-- Warpwood Pod SAI
SET @ENTRY := 179533;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,64,0,100,1,2,0,0,0,67,1,5000,5000,0,0,100,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Create Timed Event"),
(@ENTRY,1,1,2,61,0,100,0,0,0,0,0,11,22803,2,0,0,0,0,7,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Cast Dire Maul Trap - Summon"),
(@ENTRY,1,2,0,61,0,100,0,0,0,0,0,118,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Gossip Hello - Set Gameobject State"),
(@ENTRY,1,3,0,59,0,100,0,1,0,0,0,41,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warpwood Pod - On Timed Event - Despawn");

UPDATE `gameobject_template` SET `Data7`='0' WHERE  `entry` IN (179532, 179533, 179526);

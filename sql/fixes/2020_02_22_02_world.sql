-- Quest Army of the Damned - [H] -- http://www.wowhead.com/quest=13236/army-of-the-damned
SET @DEATHSTORM := 58912;
SET @SOULCLEAVE := 58913;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = @SOULCLEAVE;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, @SOULCLEAVE, 0, 0, 32, 0, 8, 0, 0, 0, 0, 0, '', 'Soul Cleave can target units');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(13,17) AND `SourceEntry`=58912;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(17,0,58912,0,0,31,1,3,31254,0,0,0,0,'','Deathstorm requires target Lordaeron Footsoldier'),
(17,0,58912,0,1,31,1,3,32414,0,0,0,0,'','Deathstorm requires target Lordaeron Captain'),
(13,1,58912,0,0,31,0,3,31254,0,0,0,0,'','Deathstorm can hit Lordaeron Footsoldier'),
(13,1,58912,0,1,31,0,3,32414,0,0,0,0,'','Deathstorm can hit Lordaeron Captain');

-- Ghoulish Minion SAI
SET @ENTRY := 31276;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,58917,0,0,0,85,58919,3,0,0,0,0,1,0,0,0,0,0,0,0,"Ghoulish Minion - On Spellhit 'Consume Minions' - Invoker Cast 'Consume Minions' (No Repeat)"),
(@ENTRY,0,1,0,60,0,100,1,0,0,0,0,11,50142,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ghoulish Minion - On Update - Cast 'Emerge Visual' (No Repeat)"),
(@ENTRY,0,2,0,60,0,100,1,4000,4000,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ghoulish Minion - On Update - Start Random Movement (No Repeat)"),
(@ENTRY,0,3,0,60,0,100,1,4000,4000,0,0,49,0,0,0,0,0,0,19,31254,15,0,0,0,0,0,"Ghoulish Minion - On Update - Start Attacking (No Repeat)");

-- Reduce spawntime of the creatues for better questflow.
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=31254;

-- 
-- The Leaper SAI
SET @ENTRY := 29840;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,17,61,0,100,513,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Set Flags Immune To Players & Immune To NPC's (No Repeat)"),
(@ENTRY,0,2,0,11,0,100,512,0,0,0,0,42,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Respawn - Set Invincibility Hp 1%"),
(@ENTRY,0,3,4,2,0,100,513,0,1,0,0,102,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-1% Health - Set Health Regeneration Off (No Repeat)"),
(@ENTRY,0,4,5,61,0,100,513,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Set Reactstate Passive (No Repeat)"),
(@ENTRY,0,5,6,61,0,100,513,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Cast 'Permanent Feign Death' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0) (No Repeat)"),
(@ENTRY,0,6,1,61,0,100,513,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Despawn In 60000 ms (No Repeat)"),
(@ENTRY,0,7,8,8,0,100,512,29071,0,0,0,33,29847,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Leaper - On Spellhit 'Sovereign Rod' - Quest Credit 'Free Your Mind'"),
(@ENTRY,0,8,9,61,0,100,513,0,0,0,0,2,2050,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Set Faction 2050"),
(@ENTRY,0,9,10,61,0,100,513,0,0,0,0,18,33040,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Set Flags Rename & Immune To Players"),
(@ENTRY,0,10,11,61,0,100,513,0,0,0,0,11,35426,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Cast 'Arcane Explosion Visual' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,11,12,61,0,100,513,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Say Line 1 for duration 0 not using Talktarget"),
(@ENTRY,0,12,13,61,0,100,513,0,0,0,0,28,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Remove Aura 'Permanent Feign Death'"),
(@ENTRY,0,13,14,61,0,100,513,0,0,0,0,19,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Remove Flag Server Controlled"),
(@ENTRY,0,14,15,61,0,100,513,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Set Orientation Invoker"),
(@ENTRY,0,15,23,61,0,100,513,0,0,0,0,96,32,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Remove Dynamic Flag Dead"),
(@ENTRY,0,16,0,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Aggro - Say Line 0 for duration 0 not using Talktarget (No Repeat)"),
(@ENTRY,0,17,18,61,0,100,513,0,0,0,0,19,536870912,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Remove Flag  (No Repeat)"),
(@ENTRY,0,18,0,61,0,100,513,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - Between 0-0% Health - Evade (No Repeat)"),
(@ENTRY,0,19,0,25,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Reset - Cast 'Permanent Feign Death' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,20,0,9,0,100,0,0,5,4000,7000,11,60195,0,0,0,0,0,2,0,0,0,0,0,0,0,"The Leaper - Within 0-5 Range - Cast 'Sinister Strike' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,21,0,0,0,100,0,5000,8000,30000,35000,11,60177,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - In Combat - Cast 'Hunger For Blood' with CastFlag: 0 and TriggerFlag: 0 (TargetLimit: 0)"),
(@ENTRY,0,22,0,11,0,100,512,0,0,0,0,19,33552,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Respawn - Remove Flags Rename & Immune To Players & Immune To NPC's"),
(@ENTRY,0,23,24,61,0,100,513,0,0,0,0,102,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Set Health Regeneration On"),
(@ENTRY,0,24,25,61,0,100,513,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Despawn In 15000 ms"),
(@ENTRY,0,25,0,61,0,100,513,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Leaper - On Spellhit - Set Active On");

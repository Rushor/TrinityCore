-- npc_crystalline_frayer
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_crystalline_frayer' WHERE  `entry`=26793;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26793;

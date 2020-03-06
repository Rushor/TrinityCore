-- 
-- Adding static land spawn for Captain Ellis
DELETE FROM `creature` WHERE `guid` = 965090;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(965090, 24910, 571, 0, 0, 1, 1, 0, 1, 99.9657, -3707.66, 1.40079, 0.652366, 300, 0, 0, 8982, 0, 0, 0, 0, 0, '', 0);

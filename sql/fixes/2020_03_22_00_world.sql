-- 
DELETE FROM `creature` WHERE `guid` BETWEEN 506000 AND 506003;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(506000, 33213, 603, 0, 0, 3, 1, 0, 0, 1945.07, -79.098, 411.357, 1.20009, 604800, 0, 0, 14433075, 0, 0, 0, 0, 0, '', 0),
(506001, 33241, 603, 0, 0, 3, 1, 0, 0, 1945.68, 33.342, 411.358, 5.34229, 604800, 0, 0, 14433075, 0, 0, 0, 0, 0, '', 0),
(506002, 33242, 603, 0, 0, 3, 1, 0, 0, 2028.82, -65.7357, 411.36, 2.51328, 604800, 0, 0, 14433075, 0, 0, 0, 0, 0, '', 0),
(506003, 33244, 603, 0, 0, 3, 1, 0, 0, 2028.77, 17.4201, 411.361, 3.86516, 604800, 0, 0, 14433075, 0, 0, 0, 0, 0, '', 0);


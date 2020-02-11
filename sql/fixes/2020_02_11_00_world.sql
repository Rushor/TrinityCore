-- 
DELETE FROM `creature` WHERE  `guid`=49288;
UPDATE `creature_template` SET `lootid`='0', `mingold`='0', `maxgold`='0' WHERE  `entry`=11391;
DELETE FROM `creature_loot_template` WHERE  `Entry`=11391;


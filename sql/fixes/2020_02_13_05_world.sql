-- ID - 3150 Rabies - Must be debuff
DELETE FROM `spell_custom_attr` WHERE `entry` IN (3150);
INSERT INTO `spell_custom_attr` (`entry`, `attributes`) VALUES 
(3150, 0x00001000|0x00002000|0x00004000);

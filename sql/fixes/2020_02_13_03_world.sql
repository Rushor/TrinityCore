-- Scripts/Instance: Culling of Stratholme - Devour Fleshspell must be a debuff
DELETE FROM `spell_custom_attr` WHERE `entry` IN (52352, 58758, 70393);
INSERT INTO `spell_custom_attr` (`entry`, `attributes`) VALUES 
(52352, 0x00002000),
(58758, 0x00002000),
(70393, 0x00002000);

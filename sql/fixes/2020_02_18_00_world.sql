-- Brain Link should be a debuff.
DELETE FROM `spell_custom_attr` WHERE `entry` IN (63802);
INSERT INTO `spell_custom_attr` (`entry`, `attributes`) VALUES 
(63802, 0x00001000);


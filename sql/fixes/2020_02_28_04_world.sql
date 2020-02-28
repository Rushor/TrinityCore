-- Eck the Ferocious
DELETE FROM `creature_loot_template` WHERE `Entry` = 29932 AND `item` = 40753;
DELETE FROM `creature_loot_template` WHERE `Entry` = 29932 AND `item` = 47241;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(29932, 47241, 0, 100, 0, 1, 0, 1, 1, NULL);


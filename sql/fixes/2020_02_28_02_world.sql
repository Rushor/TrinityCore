-- Increase drop chance for patterns of ToC
UPDATE `creature_loot_template` SET `Chance`='18' WHERE `reference` IN (34347, 34340, 34333, 34326, 34319, 34312);

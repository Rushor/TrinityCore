-- Battle_of_the_Crimson_Watch texts
DELETE FROM `creature_text` WHERE `creatureid`=22073;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(22073, 0, 0, 'Quickly, get to the middle of the platform! Illidan''s fury is soon to be unleashed!', 15, 0, 100, 0, 0, 0, 19796, 'Marcus Auralion');

DELETE FROM `creature_text` WHERE `creatureid`=22083 AND `groupid`>=7;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(22083, 7, 0, 'What manner of fool dares stand before Illidan Stormrage? Soldiers, destroy these insects!', 14, 0, 100, 0, 0, 0, 19797, 'Illidan Battle_of_the_Crimson_Watch'),
(22083, 8, 0, 'You are no challenge for the Crimson Sigil. Mind breakers, end this nonsense!', 14, 0, 100, 0, 0, 0, 19798, 'Illidan Battle_of_the_Crimson_Watch'),
(22083, 9, 0, 'Run while you still can. The highlords come soon...', 14, 0, 100, 0, 0, 0, 19799, 'Illidan Battle_of_the_Crimson_Watch'),
(22083, 10, 0, 'Torloth, your master calls!', 14, 0, 100, 0, 0, 0, 19800, 'Illidan Battle_of_the_Crimson_Watch');

DELETE FROM `creature_text` WHERE `creatureid`=22076;
INSERT INTO `creature_text` (`creatureid`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `comment`) VALUES 
(22076, 0, 0, 'As you desire, Lord Illidan.', 12, 0, 100, 0, 0, 0, 19785, 'torloth_the_magnificent Battle_of_the_Crimson_Watch'),
(22076, 1, 0, 'For Lord Illidan, I would sacrifice even this magnificent physique. On this day, you will fall - another victim of Torloth...', 12, 0, 100, 0, 0, 0, 19788, 'torloth_the_magnificent Battle_of_the_Crimson_Watch');

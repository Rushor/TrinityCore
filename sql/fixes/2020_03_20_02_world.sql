-- 
DELETE FROM `spell_dbc` WHERE `Id`=39797;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectItemType1`, `EffectItemType2`, `EffectItemType3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`) VALUES 
(39797, 0, 0, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3, 7, 0, -1, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 185541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `gameobject` WHERE  `id`=185541;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=22972;

DELETE FROM `smart_scripts` WHERE `entryorguid`=22972;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22972, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Just Summoned - Set Unit Flags'),
(22972, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Just Summoned - Move to Nearest Invis Raven Stone'),
(22972, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 19, 22986, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Just Summoned - Say Line 0'),
(22972, 0, 3, 4, 34, 0, 100, 0, 0, 1, 0, 0, 0, 11, 39797, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Movement Inform - Cast Summon Raven Stone'),
(22972, 0, 4, 5, 61, 0, 100, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Movement Inform - Say Line 1'),
(22972, 0, 5, 6, 61, 0, 100, 0, 0, 1, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, 22986, 50, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Movement Inform - Despawn Nearest Invis Raven Stone'),
(22972, 0, 6, 7, 61, 0, 100, 0, 0, 1, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Movement Inform - Turn Fly on'),
(22972, 0, 7, 8, 61, 0, 100, 0, 0, 1, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 40, 40, 10, 0, 'Cenarion Sparrowhawk - On Movement Inform - Move Offset'),
(22972, 0, 8, 0, 61, 0, 100, 0, 0, 1, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Movement Inform - Despawn'),
(22972, 0, 9, 10, 54, 0, 100, 0, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Just Summoned - Set Unit Flags'),
(22972, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 2, 8000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Just Summoned - Say Line 0'),
(22972, 0, 11, 12, 52, 0, 100, 0, 2, 22972, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Text Over - Say Line 2'),
(22972, 0, 12, 13, 61, 0, 100, 0, 0, 1, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Text Over - Turn Fly on'),
(22972, 0, 13, 14, 61, 0, 100, 0, 0, 1, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 40, 40, 10, 0, 'Cenarion Sparrowhawk - On Text Over - Move Offset'),
(22972, 0, 14, 0, 61, 0, 100, 0, 0, 1, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cenarion Sparrowhawk - On Text Over - Despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22  AND `SourceEntry`=22972 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 22972, 0, 0, 29, 1, 22986, 50, 0, 0, 0, 0, '', 'Only run SAI if Invis Rune Stone within 50 yards'),
(22, 10, 22972, 0, 0, 29, 1, 22986, 50, 0, 1, 0, 0, '', 'Only run SAI if No Invis Rune Stone within 50 yards');

DELETE FROM `creature_text` WHERE `CreatureID`=22972;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(22972, 0, 0, '%s surveys the ground for buried raven stones.', 16, 0, 100, 0, 0, 0, 20675, 0, 'Cenarion Sparrowhawk'),
(22972, 1, 0, '%s locates a buried raven stone.', 16, 0, 100, 0, 0, 0, 20676, 0, 'Cenarion Sparrowhawk'),
(22972, 2, 0, '%s locates a buried raven stone.', 16, 0, 100, 0, 0, 0, 20676, 0, 'Cenarion Sparrowhawk'),
(22972, 3, 0, "%s doesn't seem to have had any luck finding raven stones nearby.", 16, 0, 100, 0, 0, 0, 21065, 0, 'Cenarion Sparrowhawk');

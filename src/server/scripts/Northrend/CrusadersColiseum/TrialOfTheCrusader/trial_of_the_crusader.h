/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef DEF_CRUSADER_H
#define DEF_CRUSADER_H

#include "CreatureAIImpl.h"

#define ToCrScriptName "instance_trial_of_the_crusader"
#define DataHeader "TCR"

struct Position;
uint32 const EncounterCount = 6;

enum TCRDataTypes
{
    // Encounter States
    DATA_NORTHREND_BEASTS       = 0,
    DATA_JARAXXUS               = 1,
    DATA_FACTION_CRUSADERS      = 2,
    DATA_TWIN_VALKIRIES         = 3,
    DATA_LICH_KING              = 4,
    DATA_ANUBARAK               = 5,

    // Additional Data
    DATA_GORMOK_THE_IMPALER     = 6,
    DATA_ACIDMAW                = 7,
    DATA_DREADSCALE             = 8,
    DATA_ICEHOWL                = 9,
    DATA_FJOLA_LIGHTBANE        = 10,
    DATA_EYDIS_DARKBANE         = 11,
    DATA_FORDRING               = 12,
    DATA_FORDRING_ANUBARAK      = 13,
    DATA_VARIAN                 = 14,
    DATA_GARROSH                = 15,
    DATA_FIZZLEBANG             = 16,
    DATA_FACTION_CHAMPIONS      = 17,

    DATA_CRUSADERS_CHEST        = 18,
    DATA_COLISEUM_FLOOR         = 19,
    DATA_MAIN_GATE              = 20,
    DATA_EAST_PORTCULLIS        = 21,
    DATA_WEB_DOOR               = 22,
    DATA_TRIBUTE_CHEST          = 23,
    DATA_BEASTS_COMBAT_STALKER  = 24,
    DATA_FURIOUS_CHARGE         = 25,
    DATA_DESPAWN_SNOBOLDS       = 26,
    DATA_TEAM                   = 27,
    DATA_LICH_KING_VOICE        = 28,

    TYPE_COUNTER                = 29,
    TYPE_EVENT                  = 30,

    TYPE_EVENT_TIMER            = 101,
    TYPE_EVENT_NPC              = 102,
    TYPE_NORTHREND_BEASTS       = 103,

    DATA_SNOBOLD_COUNT          = 301,
    DATA_MISTRESS_OF_PAIN_COUNT = 302,

    INCREASE                    = 501,
    DECREASE                    = 502
};

enum TCRSpellIds
{
    SPELL_WILFRED_PORTAL        = 68424,
    SPELL_OPEN_PORTAL           = 67864,
    SPELL_JARAXXUS_CHAINS       = 67924,
    SPELL_DESTROY_FLOOR_KNOCKUP = 68193,
    SPELL_ARTHAS_PORTAL         = 51807,
    SPELL_LK_FROST_NOVA         = 68198,
    SPELL_CORPSE_TELEPORT       = 69016
};

enum TCRMisc
{
    DESPAWN_TIME      = 1200000,
    PLAYER_VEHICLE_ID = 444
};

enum TCRActions
{
    ACTION_START_GORMOK = 1,
    ACTION_START_GORMOK_FAIL,
    ACTION_START_JORMUNGARS,
    ACTION_START_ICEHOWL,
    ACTION_NORTHREND_BEASTS_WIPE,
    ACTION_NORTHREND_BEASTS_DEFEATED,
    ACTION_START_JARAXXUS_EVENT,
    ACTION_KILL_JARAXXUS,
    ACTION_JARAXXUS_DEFEATED,
    ACTION_START_CHAMPIONS,
    ACTION_SUMMON_CHAMPIONS,
    ACTION_TIRION_ALLOW,
    ACTION_CHAMPIONS_DEFEATED,
    ACTION_SUMMON_JARAXXUS,
    ACTION_JARAXXUS_INTRO,
    ACTION_START_VALKYR,
    ACTION_START_LK_EVENT,
    ACTION_SAY_KILLED_PLAYER,
    ACTION_VALKYR_DEFEATED,
    ACTION_LK_EVENT_FINISHED,
    ACTION_JARAXXUS_ENGAGE,
    ACTION_START_CHAMPIONS_ENGAGE,
    ACTION_START_VALKYR_ENGAGE,
    ACTION_JARAXXUS_WIPE,
    ACTION_FACTION_WIPE,
    ACTION_VALKYR_WIPE
};

extern Position const ToCCommonLoc[];
extern Position const AnubarakLoc[];

enum TCRWorldStateIds
{
    UPDATE_STATE_UI_SHOW  = 4390,
    UPDATE_STATE_UI_COUNT = 4389
};

enum NorthrendBeasts
{
    GORMOK_IN_PROGRESS   = 1000,
    GORMOK_DONE          = 1001,
    SNAKES_IN_PROGRESS   = 2000,
    DREADSCALE_SUBMERGED = 2001,
    ACIDMAW_SUBMERGED    = 2002,
    SNAKES_SPECIAL       = 2003,
    SNAKES_DONE          = 2004,
    ICEHOWL_IN_PROGRESS  = 3000,
    ICEHOWL_DONE         = 3001
};

enum TCRCreatureIds
{
    NPC_BARRETT_BEASTS               = 34816,
    NPC_BARRETT_BEASTS_HC            = 35909,
    NPC_BARRETT_JARAXXUS             = 35035,
    NPC_BARRETT_FACTION              = 35766,
    NPC_BARRETT_VALKYR               = 35770,
    NPC_BARRETT_LK                   = 35771,
    NPC_TIRION_FORDRING              = 34996,
    NPC_TIRION_FORDRING_ANUBARAK     = 36095,
    NPC_ARGENT_MAGE                  = 36097,
    NPC_FIZZLEBANG                   = 35458,
    NPC_GARROSH                      = 34995,
    NPC_VARIAN                       = 34990,
    NPC_LICH_KING                    = 35877,

    NPC_THRALL                       = 34994,
    NPC_PROUDMOORE                   = 34992,
    NPC_WILFRED_PORTAL               = 17965,
    NPC_PURPLE_GROUND                = 35651,

    NPC_ICEHOWL                      = 34797,
    NPC_GORMOK                       = 34796,
    NPC_DREADSCALE                   = 34799,
    NPC_ACIDMAW                      = 35144,
    NPC_BEASTS_COMBAT_STALKER        = 36549,
    NPC_FURIOUS_CHARGE_STALKER       = 35062,
    NPC_SNOBOLD_VASSAL               = 34800,

    NPC_JARAXXUS                     = 34780,

    NPC_CHAMPIONS_CONTROLLER         = 34781,
    NPC_ALLIANCE_DEATH_KNIGHT        = 34461,
    NPC_ALLIANCE_DRUID_BALANCE       = 34460,
    NPC_ALLIANCE_DRUID_RESTORATION   = 34469,
    NPC_ALLIANCE_HUNTER              = 34467,
    NPC_ALLIANCE_MAGE                = 34468,
    NPC_ALLIANCE_PALADIN_HOLY        = 34465,
    NPC_ALLIANCE_PALADIN_RETRIBUTION = 34471,
    NPC_ALLIANCE_PRIEST_DISCIPLINE   = 34466,
    NPC_ALLIANCE_PRIEST_SHADOW       = 34473,
    NPC_ALLIANCE_ROGUE               = 34472,
    NPC_ALLIANCE_SHAMAN_ENHANCEMENT  = 34463,
    NPC_ALLIANCE_SHAMAN_RESTORATION  = 34470,
    NPC_ALLIANCE_WARLOCK             = 34474,
    NPC_ALLIANCE_WARRIOR             = 34475,

    NPC_HORDE_DEATH_KNIGHT           = 34458,
    NPC_HORDE_DRUID_BALANCE          = 34451,
    NPC_HORDE_DRUID_RESTORATION      = 34459,
    NPC_HORDE_HUNTER                 = 34448,
    NPC_HORDE_MAGE                   = 34449,
    NPC_HORDE_PALADIN_HOLY           = 34445,
    NPC_HORDE_PALADIN_RETRIBUTION    = 34456,
    NPC_HORDE_PRIEST_DISCIPLINE      = 34447,
    NPC_HORDE_PRIEST_SHADOW          = 34441,
    NPC_HORDE_ROGUE                  = 34454,
    NPC_HORDE_SHAMAN_ENHANCEMENT     = 34455,
    NPC_HORDE_SHAMAN_RESTORATION     = 34444,
    NPC_HORDE_WARLOCK                = 34450,
    NPC_HORDE_WARRIOR                = 34453,

    NPC_FJOLA_LIGHTBANE              = 34497,
    NPC_EYDIS_DARKBANE               = 34496,

    NPC_DARK_ESSENCE                 = 34567,
    NPC_LIGHT_ESSENCE                = 34568,

    NPC_LICH_KING_VOICE              = 16980,
    NPC_ARTHAS_PORTAL                = 22517,

    NPC_ANUBARAK                     = 34564
};

enum TCRGameObjectIds
{
    GO_CRUSADERS_CACHE_10    = 195631,
    GO_CRUSADERS_CACHE_25    = 195632,
    GO_CRUSADERS_CACHE_10_H  = 195633,
    GO_CRUSADERS_CACHE_25_H  = 195635,

    // Tribute Chest (heroic)
    // 10-man modes
    GO_TRIBUTE_CHEST_10H_25  = 195668, // 10man 01-24 attempts
    GO_TRIBUTE_CHEST_10H_45  = 195667, // 10man 25-44 attempts
    GO_TRIBUTE_CHEST_10H_50  = 195666, // 10man 45-49 attempts
    GO_TRIBUTE_CHEST_10H_99  = 195665, // 10man 50 attempts
    // 25-man modes
    GO_TRIBUTE_CHEST_25H_25  = 195672, // 25man 01-24 attempts
    GO_TRIBUTE_CHEST_25H_45  = 195671, // 25man 25-44 attempts
    GO_TRIBUTE_CHEST_25H_50  = 195670, // 25man 45-49 attempts
    GO_TRIBUTE_CHEST_25H_99  = 195669, // 25man 50 attempts

    GO_ARGENT_COLISEUM_FLOOR = 195527, //20943
    GO_MAIN_GATE_DOOR        = 195647,
    GO_EAST_PORTCULLIS       = 195648,
    GO_WEB_DOOR              = 195485,
    GO_PORTAL_TO_DALARAN     = 195682
};

enum TocDedicatedInsanityItems
{
    // forbidden
    ITEM_VAL_ANYR         = 46017,
    ITEM_ONY_RING         = 49486,
    ITEM_ONY_NECK         = 49485,
    ITEM_ONY_TRINKET      = 49487,

    // ilvl 258 but allowed
    ITEM_TOC_10_CLOACK_1  = 48666,
    ITEM_TOC_10_CLOACK_2  = 48667,
    ITEM_TOC_10_CLOACK_3  = 48668,
    ITEM_TOC_10_CLOACK_4  = 48669,
    ITEM_TOC_10_CLOACK_5  = 48670,
    ITEM_TOC_10_CLOACK_6  = 48671,
    ITEM_TOC_10_CLOACK_7  = 48672,
    ITEM_TOC_10_CLOACK_8  = 48673,
    ITEM_TOC_10_CLOACK_9  = 48674,
    ITEM_TOC_10_CLOACK_10 = 48675,

    MAX_ALLOWED_ITEMLEVEL = 245,
};
static uint32 AllowedItem[] = { ITEM_TOC_10_CLOACK_1, ITEM_TOC_10_CLOACK_2, ITEM_TOC_10_CLOACK_3, ITEM_TOC_10_CLOACK_4, ITEM_TOC_10_CLOACK_5,
    ITEM_TOC_10_CLOACK_6, ITEM_TOC_10_CLOACK_7, ITEM_TOC_10_CLOACK_8, ITEM_TOC_10_CLOACK_9, ITEM_TOC_10_CLOACK_10 };

static uint32 ForbiddenItems[] =
{
    ITEM_VAL_ANYR, ITEM_ONY_RING, ITEM_ONY_NECK, ITEM_ONY_TRINKET,
    // onyxia
    49501, 49500, 49499, 49498, 49496, 49495, 49494, 49493, 49492, 49491,
    49490, 49489, 49488, 49484, 49483, 49482, 49481, 49480, 49479, 49478,
    49477, 49476, 49475, 49474, 49473, 49472, 49471, 49470, 49469, 49468,
    49467, 49466, 49465, 49464,
    // icehowl
    46958, 46959, 46960, 46961, 46962, 46963, 46972, 46974, 46976, 46979,
    46985, 46988, 46990, 46992, 47251, 47252, 47253, 47254, 47255, 47256,
    47258, 47259, 47260, 47261, 47262, 47263, 47264, 47265,
    // lord jaraxxus
    46994, 46996, 46997, 46999, 47000, 47041, 47042, 47043, 47051, 47052,
    47053, 47055, 47056, 47057, 47266, 47267, 47268, 47269, 47270, 47271,
    47272, 47273, 47274, 47275, 47276, 47277, 47279, 47280,
    // champions
    47069, 47070, 47071, 47072, 47073, 47079, 47080, 47081, 47082, 47083,
    47090, 47092, 47093, 47094, 47281, 47282, 47283, 47284, 47285, 47286,
    47287, 47288, 47289, 47290, 47292, 47293, 47294, 47295,
    // twins
    47104, 47106, 47107, 47108, 47114, 47115, 47116, 47121, 47126, 47138,
    47139, 47140, 47141, 47142, 47296, 47298, 47299, 47300, 47301, 47302,
    47303, 47304, 47305, 47306, 47307, 47308, 47309, 47310,
    // anub
    47054, 47148, 47150, 47151, 47152, 47182, 47183, 47184, 47186, 47187,
    47193, 47194, 47195, 47203, 47204, 47225, 47233, 47234, 47235, 47311,
    47312, 47313, 47314, 47316, 47317, 47318, 47319, 47320, 47321, 47322,
    47323, 47324, 47325, 47326, 47327, 47328, 47329, 47330,
    // pvp
    41841, 41886, 40884, 40890, 42081, 41837, 42042, 42119, 42044, 41626,
    41904, 41833, 49179, 49183, 49181, 42045, 42118, 42077, 41899, 41910,
    42076, 41882, 41894, 42082, 42041, 40883, 46374, 42078, 42329, 42046,
    41066, 41071, 41076, 49189, 41226, 42080, 42354, 42386, 41231, 42334,
    42043, 40979, 40984, 41618, 41622, 40978, 41056, 42229, 42287, 42234,
    42250, 42521, 42483, 42504, 42498, 42272, 42210, 42244, 42262, 42324,
    42292, 42267, 42348, 44424, 42319, 42366, 42515, 42257, 42282, 42487,
    44423, 42277, 49185, 42492, 41631, 41052, 41236, 42079, 41061, 42047,
    41636, 41641, 42392
};

static uint32 ForbiddenWeapons[] =
{
    42210, 42229, 42234, 42244, 42250, 42257, 42262, 42267, 42272, 42277,
    42282, 42287, 42292, 42319, 42324, 42329, 42334, 42348, 42354, 42366,
    42386, 42392, 42487, 42492, 42498, 42504, 42515, 42521, 44423, 44424,
    46017, 46958, 46963, 46979, 46994, 46996, 47069, 47079, 47104, 47114,
    47148, 47193, 47233, 47255, 47260, 47261, 47266, 47267, 47285, 47287,
    47300, 47302, 47314, 47322, 47329, 49185, 49189, 49465, 49493, 49494,
    49495, 49496, 49498, 49499, 49500, 49501
};

enum TCRAchievementData
{
    // Northrend Beasts
    UPPER_BACK_PAIN_10_PLAYER               = 11779,
    UPPER_BACK_PAIN_10_PLAYER_HEROIC        = 11802,
    UPPER_BACK_PAIN_25_PLAYER               = 11780,
    UPPER_BACK_PAIN_25_PLAYER_HEROIC        = 11801,
    // Lord Jaraxxus
    THREE_SIXTY_PAIN_SPIKE_10_PLAYER        = 11838,
    THREE_SIXTY_PAIN_SPIKE_10_PLAYER_HEROIC = 11861,
    THREE_SIXTY_PAIN_SPIKE_25_PLAYER        = 11839,
    THREE_SIXTY_PAIN_SPIKE_25_PLAYER_HEROIC = 11862,
    // Tribute
    A_TRIBUTE_TO_SKILL_10_PLAYER            = 12344,
    A_TRIBUTE_TO_SKILL_25_PLAYER            = 12338,
    A_TRIBUTE_TO_MAD_SKILL_10_PLAYER        = 12347,
    A_TRIBUTE_TO_MAD_SKILL_25_PLAYER        = 12341,
    A_TRIBUTE_TO_INSANITY_10_PLAYER         = 12349,
    A_TRIBUTE_TO_INSANITY_25_PLAYER         = 12343,
    A_TRIBUTE_TO_IMMORTALITY_HORDE          = 12358,
    A_TRIBUTE_TO_IMMORTALITY_ALLIANCE       = 12359,
    A_TRIBUTE_TO_DEDICATED_INSANITY         = 12360,
    REALM_FIRST_GRAND_CRUSADER              = 12350,

    // Dummy spells - not existing in dbc but we don't need that
    SPELL_WORMS_KILLED_IN_10_SECONDS        = 68523,
    SPELL_CHAMPIONS_KILLED_IN_MINUTE        = 68620,
    SPELL_DEFEAT_FACTION_CHAMPIONS          = 68184,
    SPELL_TRAITOR_KING                      = 68186,

    // Timed events
    EVENT_START_TWINS_FIGHT                 = 21853
};

template <class AI, class T>
inline AI* GetTrialOfTheCrusaderAI(T* obj)
{
    return GetInstanceAI<AI>(obj, ToCrScriptName);
}

#define RegisterTrialOfTheCrusaderCreatureAI(ai_name) RegisterCreatureAIWithFactory(ai_name, GetTrialOfTheCrusaderAI)

#endif

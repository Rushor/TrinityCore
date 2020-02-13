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

/* ScriptData
SDName: Western_Plaguelands
SD%Complete: 90
SDComment: Quest support: 5097, 5098, 5216, 5219, 5222, 5225, 5229, 5231, 5233, 5235.
SDCategory: Western Plaguelands
EndScriptData */

/* ContentData
npc_the_scourge_cauldron
npc_andorhal_tower
EndContentData */

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include "WorldSession.h"

/*######
## npc_the_scourge_cauldron
######*/

class npc_the_scourge_cauldron : public CreatureScript
{
public:
    npc_the_scourge_cauldron() : CreatureScript("npc_the_scourge_cauldron") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_the_scourge_cauldronAI(creature);
    }

    struct npc_the_scourge_cauldronAI : public ScriptedAI
    {
        npc_the_scourge_cauldronAI(Creature* creature) : ScriptedAI(creature) { }

        void Reset() override { }

        void JustEngagedWith(Unit* /*who*/) override { }

        void DoDie()
        {
            //summoner dies here
            me->KillSelf();
            //override any database `spawntimesecs` to prevent duplicated summons
            uint32 rTime = me->GetRespawnDelay();
            if (rTime < 600)
                me->SetRespawnDelay(600);
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who)
                return;

            Player* player = who->ToPlayer();
            if (!player)
                return;

            switch (me->GetAreaId())
            {
                case 199:                                   //felstone
                    if (player->GetQuestStatus(5216) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(5229) == QUEST_STATUS_INCOMPLETE)
                    {
                        me->SummonCreature(11075, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000);
                        DoDie();
                    }
                    break;
                case 200:                                   //dalson
                    if (player->GetQuestStatus(5219) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(5231) == QUEST_STATUS_INCOMPLETE)
                    {
                        me->SummonCreature(11077, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000);
                        DoDie();
                    }
                    break;
                case 201:                                   //gahrron
                    if (player->GetQuestStatus(5225) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(5235) == QUEST_STATUS_INCOMPLETE)
                    {
                        me->SummonCreature(11078, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000);
                        DoDie();
                    }
                    break;
                case 202:                                   //writhing
                    if (player->GetQuestStatus(5222) == QUEST_STATUS_INCOMPLETE ||
                        player->GetQuestStatus(5233) == QUEST_STATUS_INCOMPLETE)
                    {
                        me->SummonCreature(11076, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000);
                        DoDie();
                    }
                    break;
            }
        }
    };
};

/*######
##    npcs_andorhal_tower
######*/

enum AndorhalTower
{
    GO_BEACON_TORCH                             = 176093
};

class npc_andorhal_tower : public CreatureScript
{
public:
    npc_andorhal_tower() : CreatureScript("npc_andorhal_tower") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_andorhal_towerAI(creature);
    }

    struct npc_andorhal_towerAI : public ScriptedAI
    {
        npc_andorhal_towerAI(Creature* creature) : ScriptedAI(creature)
        {
            SetCombatMovement(false);
        }

        void MoveInLineOfSight(Unit* who) override
        {
            if (!who || who->GetTypeId() != TYPEID_PLAYER)
                return;

            if (me->FindNearestGameObject(GO_BEACON_TORCH, 10.0f))
                if (Player* player = who->ToPlayer())
                    player->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
        }
    };
};

enum ErisHavenfireMisc
{
    // Quest
    QUEST_THE_BALANCE_OF_LIGHT_AND_SHADOW = 7622,

    // Creatureas
    NPC_PEASANT                           = 14485,
    NPC_FOOTSOLDIER                       = 14486,
    NPC_SCOURGE_ARCHER                    = 14489,
    NPC_SCOURGE_FOOTSOLDIER               = 14486,
    NPC_THE_CLEANER                       = 14503,

    // Action
    ACTION_START_SPAWN                    = 0,

    // Events
    EVENT_SPAWN_PEASANT                   = 1,
    EVENT_SPAWN_ARCHER                    = 2,

    // Texts
    SAY_WIN                               = 0,
    SAY_FAIL                              = 1,

    // Datatypes
    DATA_FAIL_COUNTER                     = 1,
    TYPE_FAIL_COUNTER                     = 1,
    DATA_WIN_COUNTER                      = 2,
    TYPE_WIN_COUNTER                      = 2,

    // Spells
    SPELL_ANCESTOR_INVISIBILITY           = 32648
};

Position const PeasantsPos[12] =
{
    { 3364.47f,  -3048.50f,  165.17f,  1.86f   },
    { 3363.242f, -3052.06f,  165.264f, 2.095f  },
    { 3362.33f,  -3049.37f,  165.23f,  1.54f   },
    { 3360.13f,  -3052.63f,  165.31f,  1.88f   },
    { 3361.05f,  -3055.49f,  165.31f,  2.041f  },
    { 3363.92f,  -3046.96f,  165.09f,  2.13f   },
    { 3366.83f,  -3052.23f,  165.41f,  2.044f  },
    { 3367.79f,  -3047.80f,  165.16f,  2.08f   },
    { 3358.76f,  -3050.37f,  165.2f,   2.05f   },
    { 3366.63f,  -3045.29f,  164.99f,  2.19f   },
    { 3357.45f,  -3052.82f,  165.50f,  2.006f  },
    { 3363.00f,  -3044.21f,  164.80f,  2.182f  },
};

Position const ArcherPos[8] =
{
    { 3327.42f, -3021.11f, 170.57f, 6.01f },
    { 3335.4f,  -3054.3f,  173.63f, 0.49f },
    { 3351.3f,  -3079.08f, 178.67f, 1.15f },
    { 3358.93f, -3076.1f,  174.87f, 1.57f },
    { 3371.58f, -3069.24f, 175.20f, 1.99f },
    { 3369.46f, -3023.11f, 171.83f, 3.69f },
    { 3383.25f, -3057.01f, 181.53f, 2.21f },
    { 3380.03f, -3062.73f, 181.90f, 2.31f },
};

class npc_eris_havenfire : public CreatureScript
{
    public:
        npc_eris_havenfire() : CreatureScript("npc_eris_havenfire") { }    
    
        struct npc_eris_havenfireAI : public ScriptedAI
        {
            npc_eris_havenfireAI(Creature* creature) : ScriptedAI(creature) { }

            void QuestAccept(Player* player, Quest const* quest) override
            {
                if (quest->GetQuestId() == QUEST_THE_BALANCE_OF_LIGHT_AND_SHADOW)
                {
                    DoAction(ACTION_START_SPAWN);
                    me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
                    SetGUID(player->GetGUID(), 0);
                }
            }

            void Reset() override
            {
                events.Reset();
                failCounter  = 0;
                winCounter   = 0;
                SavePeasants = 50;
                DeadPeasants = 15;
                uiPlayer = ObjectGuid::Empty;
                me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_QUESTGIVER);
                DoCast(me, SPELL_ANCESTOR_INVISIBILITY);
                me->SetFaction(35);
            }
    
            void SpawnPeasants()
            {
                for (int i = 0; i < 12; ++i)
                    if (Creature* peasant = me->SummonCreature(NPC_PEASANT, PeasantsPos[i], TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000))
                        peasant->setActive(true);
            }
    
            void CompleteQuest()
            {
                if (Player* player = ObjectAccessor::GetPlayer(*me, uiPlayer))
                    player->CompleteQuest(QUEST_THE_BALANCE_OF_LIGHT_AND_SHADOW);
                me->setActive(false);
            }
    
            void FailQuest()
            {
                if (Player* player = ObjectAccessor::GetPlayer(*me, uiPlayer))
                    player->FailQuest(QUEST_THE_BALANCE_OF_LIGHT_AND_SHADOW);
                me->setActive(false);
            }
    
            void DespawnSummons()
            {
                std::list<Creature*> SummonList;
                me->GetCreatureListWithEntryInGrid(SummonList, NPC_PEASANT, 1000.0f);
                me->GetCreatureListWithEntryInGrid(SummonList, NPC_FOOTSOLDIER, 1000.0f);
                me->GetCreatureListWithEntryInGrid(SummonList, NPC_SCOURGE_ARCHER, 1000.0f);
                me->GetCreatureListWithEntryInGrid(SummonList, NPC_SCOURGE_FOOTSOLDIER, 1000.0f);
                if (!SummonList.empty())
                    for (std::list<Creature*>::iterator itr = SummonList.begin(); itr != SummonList.end(); itr++)
                        (*itr)->DespawnOrUnsummon();
            }
    
            void SetData(uint32 type, uint32 data) override
            {
                if (type == DATA_FAIL_COUNTER && data == TYPE_FAIL_COUNTER)
                    ++failCounter;
    
                if (type == DATA_WIN_COUNTER && data == TYPE_WIN_COUNTER)
                    ++winCounter;
            }
    
            void SetGUID(ObjectGuid const& guid, int32 id) override
            {
                uiPlayer = guid;
            }
    
            void DoAction(int32 action) override
            {
                if (action == ACTION_START_SPAWN)
                {
                    events.ScheduleEvent(EVENT_SPAWN_PEASANT, 2 * IN_MILLISECONDS);
                    events.ScheduleEvent(EVENT_SPAWN_ARCHER, 4 * IN_MILLISECONDS);
                    me->setActive(true);
                }
            }
    
            void UpdateAI(uint32 diff) override
            {
                if (winCounter == SavePeasants)
                {
                    CompleteQuest();
                    EnterEvadeMode();
                    Reset();
                    DespawnSummons();
                    Talk(SAY_WIN);
                    me->SummonCreature(NPC_THE_CLEANER, 3331.817627f, -2975.350098f, 160.542480f, 4.870414f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30 * IN_MILLISECONDS);
                }
    
                if (failCounter == DeadPeasants)
                {
                    FailQuest();
                    EnterEvadeMode();
                    Reset();
                    DespawnSummons();
                    Talk(SAY_FAIL);
                }
    
                events.Update(diff);
    
                switch (events.ExecuteEvent())
                {
                    case EVENT_SPAWN_PEASANT:
                        SpawnPeasants();
                        events.ScheduleEvent(EVENT_SPAWN_PEASANT, 60 * IN_MILLISECONDS);
                        break;
                    case EVENT_SPAWN_ARCHER:
                        for (int i = 0; i < 8; ++i)
                            if (Creature* archer = me->SummonCreature(NPC_SCOURGE_ARCHER, ArcherPos[i], TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, 600000))
                                archer->setActive(true);
                        break;
                    default:
                        break;
                }
            }
    
        private:
            EventMap events;
            uint8 failCounter;
            uint8 winCounter;
            uint8 SavePeasants;
            uint8 DeadPeasants;
            ObjectGuid uiPlayer;
        };
    
        CreatureAI* GetAI(Creature* creature) const override
        {
            return new npc_eris_havenfireAI(creature);
        }
    
};

void AddSC_western_plaguelands()
{
    new npc_the_scourge_cauldron();
    new npc_andorhal_tower();
    new npc_eris_havenfire();
}

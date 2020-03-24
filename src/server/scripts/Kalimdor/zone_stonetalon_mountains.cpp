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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptedEscortAI.h"
#include "Player.h"
#include "GameObject.h"

/*######
## npc_kaya_flathoof
######*/

enum Kaya
{
    NPC_GRIMTOTEM_RUFFIAN       = 11910,
    NPC_GRIMTOTEM_BRUTE         = 11912,
    NPC_GRIMTOTEM_SORCERER      = 11913,

    SAY_START                   = 0,
    SAY_AMBUSH                  = 1,
    SAY_END                     = 2,

    QUEST_PROTECT_KAYA          = 6523
};

class npc_kaya_flathoof : public CreatureScript
{
public:
    npc_kaya_flathoof() : CreatureScript("npc_kaya_flathoof") { }

    struct npc_kaya_flathoofAI : public EscortAI
    {
        npc_kaya_flathoofAI(Creature* creature) : EscortAI(creature) { }

        void WaypointReached(uint32 waypointId, uint32 /*pathId*/) override
        {
            Player* player = GetPlayerForEscort();
            if (!player)
                return;

            switch (waypointId)
            {
                case 16:
                    Talk(SAY_AMBUSH);
                    me->SummonCreature(NPC_GRIMTOTEM_BRUTE, -48.53f, -503.34f, -46.31f, 0.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000);
                    me->SummonCreature(NPC_GRIMTOTEM_RUFFIAN, -38.85f, -503.77f, -45.90f, 0.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000);
                    me->SummonCreature(NPC_GRIMTOTEM_SORCERER, -36.37f, -496.23f, -45.71f, 0.0f, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000);
                    break;
                case 18:
                    me->SetFacingToObject(player);
                    Talk(SAY_END);
                    player->GroupEventHappens(QUEST_PROTECT_KAYA, me);
                    break;
            }
        }

        void JustSummoned(Creature* summoned) override
        {
            summoned->AI()->AttackStart(me);
        }

        void Reset() override { }

        void QuestAccept(Player* player, Quest const* quest) override
        {
            if (quest->GetQuestId() == QUEST_PROTECT_KAYA)
            {
                Start(true, false, player->GetGUID());

                Talk(SAY_START);
                me->SetFaction(FACTION_ESCORTEE_N_NEUTRAL_PASSIVE);
                me->SetImmuneToPC(false);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_kaya_flathoofAI(creature);
    }

};

enum CovertOpsAlphaBetaMisc
{
    // Spells
    SPELL_SET_NG_5_CHARGE_RED = 6630,
    SPELL_SET_NG_5_CHARGE_BLUE = 6626,
    SPELL_REMOTE_DETONATOR_RED = 6627,
    SPELL_REMOTE_DETONATOR_BLUE = 6656,

    // Gameobjects
    GO_NG_5_EXPLOSIVES_RED = 19592,
    GO_NG_5_EXPLOSIVES_BLUE = 19601,

    GO_SPELLFOCUS_RED = 19600,
    GO_SPELLFOCUS_BLUE = 19591,
    VENTURE_WAGON_1 = 20899,
    VENTURE_WAGON_2 = 19547,
};

class spell_set_ng_5_charge : public SpellScriptLoader
{
public:
    spell_set_ng_5_charge() : SpellScriptLoader("spell_set_ng_5_charge") { }

    class spell_set_ng_5_charge_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_set_ng_5_charge_SpellScript);

        void HandleAfterCast()
        {
            if (Unit* caster = GetCaster())
            {
                if (caster->FindNearestGameObject(GO_SPELLFOCUS_RED, 100.0f))
                    caster->SummonGameObject(GO_NG_5_EXPLOSIVES_RED, caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ(), caster->GetOrientation(), QuaternionData(), 300 * IN_MILLISECONDS);
                else if (caster->FindNearestGameObject(GO_SPELLFOCUS_BLUE, 100.0f))
                    caster->SummonGameObject(GO_NG_5_EXPLOSIVES_BLUE, caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ(), caster->GetOrientation(), QuaternionData(), 300 * IN_MILLISECONDS);
            }
        }

        void Register() override
        {
            AfterCast += SpellCastFn(spell_set_ng_5_charge_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_set_ng_5_charge_SpellScript();
    }
};

class spell_remote_detonator : public SpellScriptLoader
{
public:
    spell_remote_detonator() : SpellScriptLoader("spell_remote_detonator") { }

    class spell_remote_detonator_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_remote_detonator_SpellScript);

        void HandleAfterCast()
        {
            if (Unit* caster = GetCaster())
            {
                if (caster->FindNearestGameObject(GO_SPELLFOCUS_RED, 100.0f))
                {
                    if (GameObject* trap = caster->FindNearestGameObject(VENTURE_WAGON_1, 100.0f))
                        trap->UseDoorOrButton();
                }
                else if (caster->FindNearestGameObject(GO_SPELLFOCUS_BLUE, 100.0f))
                {
                    if (GameObject* trap = caster->FindNearestGameObject(VENTURE_WAGON_2, 100.0f))
                        trap->UseDoorOrButton();
                }
            }
        }

        void Register() override
        {
            AfterCast += SpellCastFn(spell_remote_detonator_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_remote_detonator_SpellScript();
    }
};

void AddSC_stonetalon_mountains()
{
    new npc_kaya_flathoof();
    new spell_set_ng_5_charge();
    new spell_remote_detonator();
}

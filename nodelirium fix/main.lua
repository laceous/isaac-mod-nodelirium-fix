local mod = RegisterMod('NoDelirium Fix', 1)

-- taken from entities2.xml
mod.allowedBosses = {
  { type = EntityType.ENTITY_LARRYJR          , variant = 0  }, -- larry jr
  { type = EntityType.ENTITY_LARRYJR          , variant = 1  }, -- the hollow
  { type = EntityType.ENTITY_MONSTRO          , variant = 0  }, -- monstro
  { type = EntityType.ENTITY_CHUB             , variant = 0  }, -- chub
  { type = EntityType.ENTITY_CHUB             , variant = 1  }, -- chad
  { type = EntityType.ENTITY_CHUB             , variant = 2  }, -- the carrion queen
  { type = EntityType.ENTITY_GURDY            , variant = 0  }, -- gurdy
  { type = EntityType.ENTITY_BABY             , variant = 2  }, -- ultra pride baby
  { type = EntityType.ENTITY_MONSTRO2         , variant = 0  }, -- monstro ii
  { type = EntityType.ENTITY_MONSTRO2         , variant = 1  }, -- gish
  { type = EntityType.ENTITY_MOM              , variant = 0  }, -- mom
  { type = EntityType.ENTITY_MOM              , variant = 10 }, -- mom stomp
  { type = EntityType.ENTITY_SLOTH            , variant = 0  }, -- sloth
  { type = EntityType.ENTITY_SLOTH            , variant = 1  }, -- super sloth
  { type = EntityType.ENTITY_SLOTH            , variant = 2  }, -- ultra pride
  { type = EntityType.ENTITY_LUST             , variant = 0  }, -- lust
  { type = EntityType.ENTITY_LUST             , variant = 1  }, -- super lust
  { type = EntityType.ENTITY_WRATH            , variant = 0  }, -- wrath
  { type = EntityType.ENTITY_WRATH            , variant = 1  }, -- super wrath
  { type = EntityType.ENTITY_GLUTTONY         , variant = 0  }, -- gluttony
  { type = EntityType.ENTITY_GLUTTONY         , variant = 1  }, -- super gluttony
  { type = EntityType.ENTITY_GREED            , variant = 0  }, -- greed
  { type = EntityType.ENTITY_GREED            , variant = 1  }, -- super greed
  { type = EntityType.ENTITY_ENVY             , variant = 0  }, -- envy
  { type = EntityType.ENTITY_ENVY             , variant = 10 }, -- envy big
  { type = EntityType.ENTITY_ENVY             , variant = 20 }, -- envy medium
  { type = EntityType.ENTITY_ENVY             , variant = 30 }, -- envy small
  { type = EntityType.ENTITY_ENVY             , variant = 1  }, -- super envy
  { type = EntityType.ENTITY_ENVY             , variant = 11 }, -- super envy big
  { type = EntityType.ENTITY_ENVY             , variant = 21 }, -- super envy medium
  { type = EntityType.ENTITY_ENVY             , variant = 31 }, -- super envy small
  { type = EntityType.ENTITY_PRIDE            , variant = 0  }, -- pride
  { type = EntityType.ENTITY_PRIDE            , variant = 1  }, -- super pride
  { type = EntityType.ENTITY_PIN              , variant = 0  }, -- pin
  { type = EntityType.ENTITY_PIN              , variant = 1  }, -- scolex
  { type = EntityType.ENTITY_PIN              , variant = 2  }, -- the frail
  { type = EntityType.ENTITY_FAMINE           , variant = 0  }, -- famine
  { type = EntityType.ENTITY_PESTILENCE       , variant = 0  }, -- pestilence
  { type = EntityType.ENTITY_WAR              , variant = 0  }, -- war
  { type = EntityType.ENTITY_WAR              , variant = 1  }, -- conquest
  { type = EntityType.ENTITY_WAR              , variant = 10 }, -- war w/o horse
  { type = EntityType.ENTITY_DEATH            , variant = 0  }, -- death
  { type = EntityType.ENTITY_DEATH            , variant = 20 }, -- death horse
  { type = EntityType.ENTITY_DEATH            , variant = 30 }, -- death w/o horse
  { type = EntityType.ENTITY_DUKE             , variant = 0  }, -- the duke of flies
  { type = EntityType.ENTITY_DUKE             , variant = 1  }, -- the husk
  { type = EntityType.ENTITY_PEEP             , variant = 0  }, -- peep
  { type = EntityType.ENTITY_PEEP             , variant = 1  }, -- the bloat
  { type = EntityType.ENTITY_LOKI             , variant = 0  }, -- loki
  { type = EntityType.ENTITY_LOKI             , variant = 1  }, -- lokii
  { type = EntityType.ENTITY_FISTULA_BIG      , variant = 0  }, -- fistula
  { type = EntityType.ENTITY_FISTULA_BIG      , variant = 1  }, -- teratoma
  { type = EntityType.ENTITY_FISTULA_MEDIUM   , variant = 0  }, -- fistula medium
  { type = EntityType.ENTITY_FISTULA_MEDIUM   , variant = 1  }, -- teratoma medium
  { type = EntityType.ENTITY_FISTULA_SMALL    , variant = 0  }, -- fistula small
  { type = EntityType.ENTITY_FISTULA_SMALL    , variant = 1  }, -- teratoma small
  { type = EntityType.ENTITY_BLASTOCYST_BIG   , variant = 0  }, -- blastocyst
  { type = EntityType.ENTITY_BLASTOCYST_MEDIUM, variant = 0  }, -- blastocyst medium
  { type = EntityType.ENTITY_BLASTOCYST_SMALL , variant = 0  }, -- blastocyst small
  { type = EntityType.ENTITY_MOMS_HEART       , variant = 0  }, -- moms heart
  { type = EntityType.ENTITY_MOMS_HEART       , variant = 1  }, -- it lives
  { type = EntityType.ENTITY_GEMINI           , variant = 0  }, -- gemini
  { type = EntityType.ENTITY_GEMINI           , variant = 1  }, -- steven
  { type = EntityType.ENTITY_GEMINI           , variant = 2  }, -- the blighted ovum
  { type = EntityType.ENTITY_GEMINI           , variant = 10 }, -- gemini baby
  { type = EntityType.ENTITY_GEMINI           , variant = 11 }, -- steven baby
  { type = EntityType.ENTITY_GEMINI           , variant = 12 }, -- the blighted ovum baby
  { type = EntityType.ENTITY_FALLEN           , variant = 0  }, -- the fallen
  { type = EntityType.ENTITY_FALLEN           , variant = 1  }, -- krampus
  { type = EntityType.ENTITY_HEADLESS_HORSEMAN, variant = 0  }, -- headless horseman
  { type = EntityType.ENTITY_HORSEMAN_HEAD    , variant = 0  }, -- headless horsemans head
  { type = EntityType.ENTITY_SATAN            , variant = 0  }, -- satan
  { type = EntityType.ENTITY_SATAN            , variant = 10 }, -- satan stomp
  { type = EntityType.ENTITY_MASK_OF_INFAMY   , variant = 0  }, -- mask of infamy
  { type = EntityType.ENTITY_HEART_OF_INFAMY  , variant = 0  }, -- heart of infamy
  { type = EntityType.ENTITY_GURDY_JR         , variant = 0  }, -- gurdy jr
  { type = EntityType.ENTITY_WIDOW            , variant = 0  }, -- widow
  { type = EntityType.ENTITY_WIDOW            , variant = 1  }, -- the wretched
  { type = EntityType.ENTITY_DADDYLONGLEGS    , variant = 0  }, -- daddy long legs
  { type = EntityType.ENTITY_DADDYLONGLEGS    , variant = 1  }, -- triachnid
  { type = EntityType.ENTITY_ISAAC            , variant = 0  }, -- isaac
  { type = EntityType.ENTITY_ISAAC            , variant = 1  }, -- bluebaby
  { type = EntityType.ENTITY_ISAAC            , variant = 2  }, -- ??? alt
  { type = EntityType.ENTITY_GURGLING         , variant = 1  }, -- gurgling boss
  { type = EntityType.ENTITY_GURGLING         , variant = 2  }, -- turdling
  { type = EntityType.ENTITY_THE_HAUNT        , variant = 0  }, -- haunt
  { type = EntityType.ENTITY_DINGLE           , variant = 0  }, -- dingle
  { type = EntityType.ENTITY_DINGLE           , variant = 1  }, -- dangle
  { type = EntityType.ENTITY_MEGA_MAW         , variant = 0  }, -- mega maw
  { type = EntityType.ENTITY_GATE             , variant = 0  }, -- the gate
  { type = EntityType.ENTITY_MEGA_FATTY       , variant = 0  }, -- mega fatty
  { type = EntityType.ENTITY_CAGE             , variant = 0  }, -- the cage
  { type = EntityType.ENTITY_MAMA_GURDY       , variant = 0  }, -- mama gurdy
  { type = EntityType.ENTITY_MAMA_GURDY       , variant = 1  }, -- mama gurdy left hand
  { type = EntityType.ENTITY_MAMA_GURDY       , variant = 2  }, -- mama gurdy right hand
  { type = EntityType.ENTITY_DARK_ONE         , variant = 0  }, -- dark one
  { type = EntityType.ENTITY_ADVERSARY        , variant = 0  }, -- the adversary
  { type = EntityType.ENTITY_POLYCEPHALUS     , variant = 0  }, -- polycephalus
  { type = EntityType.ENTITY_POLYCEPHALUS     , variant = 1  }, -- the pile
  { type = EntityType.ENTITY_MR_FRED          , variant = 0  }, -- mr fred
  { type = EntityType.ENTITY_URIEL            , variant = 0  }, -- uriel
  { type = EntityType.ENTITY_URIEL            , variant = 1  }, -- fallen uriel
  { type = EntityType.ENTITY_GABRIEL          , variant = 0  }, -- gabriel
  { type = EntityType.ENTITY_GABRIEL          , variant = 1  }, -- fallen gabriel
  { type = EntityType.ENTITY_THE_LAMB         , variant = 0  }, -- the lamb
  { type = EntityType.ENTITY_THE_LAMB         , variant = 10 }, -- lamb body
  { type = EntityType.ENTITY_STAIN            , variant = 0  }, -- the stain
  { type = EntityType.ENTITY_BROWNIE          , variant = 0  }, -- brownie
  { type = EntityType.ENTITY_FORSAKEN         , variant = 0  }, -- the forsaken
  { type = EntityType.ENTITY_LITTLE_HORN      , variant = 0  }, -- little horn
  { type = EntityType.ENTITY_RAG_MAN          , variant = 0  }, -- rag man
  { type = EntityType.ENTITY_HUSH             , variant = 0  }, -- hush
  { type = EntityType.ENTITY_RAG_MEGA         , variant = 0  }, -- rag mega
  { type = EntityType.ENTITY_SISTERS_VIS      , variant = 0  }, -- sisters vis
  { type = EntityType.ENTITY_BIG_HORN         , variant = 0  }, -- big horn
  { type = EntityType.ENTITY_BIG_HORN         , variant = 1  }, -- small hole
  { type = EntityType.ENTITY_BIG_HORN         , variant = 2  }, -- big hole
  { type = EntityType.ENTITY_MATRIARCH        , variant = 0  }, -- the matriarch
  { type = EntityType.ENTITY_BABY_PLUM        , variant = 0  }, -- baby plum
  { type = EntityType.ENTITY_BUMBINO          , variant = 0  }, -- bumbino
}

mod.deliriumHashes = {}

function mod:onGameExit()
  mod:clearDeliriumHashes()
end

-- this can happen after onNpcInit
-- after clearing, make sure we re-add hashes if necessary
function mod:onNewRoom()
  mod:clearDeliriumHashes()
  
  for _, v in ipairs(Isaac.FindByType(EntityType.ENTITY_DELIRIUM, 0, 0, false, false)) do
    table.insert(mod.deliriumHashes, GetPtrHash(v))
  end
end

function mod:onNpcInit(entityNpc)
  if entityNpc:IsBoss() then
    -- support spawning delirium in any room for testing
    if entityNpc.Type == EntityType.ENTITY_DELIRIUM and entityNpc.Variant == 0 then -- if delirium
      local deliriumHash = GetPtrHash(entityNpc)
      --print('Delirium hash: ' .. deliriumHash)
      if not mod:isDeliriumHash(deliriumHash) then
        table.insert(mod.deliriumHashes, deliriumHash)
      end
    elseif mod:isDeliriumHash(GetPtrHash(entityNpc)) then -- if delirium transforms
      if not mod:isAllowedBoss(entityNpc) then
        --print('It\'s morphin time: ' .. entityNpc.Type .. '.' .. entityNpc.Variant .. '.' .. entityNpc.SubType)
        entityNpc:Morph(EntityType.ENTITY_DELIRIUM, 0, 0, -1)
        entityNpc:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
      end
    elseif entityNpc.SpawnerEntity and mod:isDeliriumHash(GetPtrHash(entityNpc.SpawnerEntity)) then -- if delirium spawns something else
      if not mod:isAllowedBoss(entityNpc) then
        --print('Removing: ' .. entityNpc.Type .. '.' .. entityNpc.Variant .. '.' .. entityNpc.SubType)
        entityNpc:Remove()
      end
    end
  end
end

function mod:isAllowedBoss(entityNpc)
  for _, v in ipairs(mod.allowedBosses) do
    if entityNpc.Type == v.type and entityNpc.Variant == v.variant then
      return true
    end
  end
  
  return false
end

function mod:isDeliriumHash(hash)
  for _, v in ipairs(mod.deliriumHashes) do
    if v == hash then
      return true
    end
  end
  
  return false
end

function mod:clearDeliriumHashes()
  for i, _ in ipairs(mod.deliriumHashes) do
    mod.deliriumHashes[i] = nil
  end
end

mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, mod.onGameExit)
mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, mod.onNewRoom)
mod:AddCallback(ModCallbacks.MC_POST_NPC_INIT, mod.onNpcInit)
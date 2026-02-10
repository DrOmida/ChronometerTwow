--<< ====================================================================== >>--
-- Setup Timers
--<< ====================================================================== >>--
local BS = AceLibrary("Babble-Spell-2.2")
function Chronometer:RogueSetup()
    local _, eclass = UnitClass("player")
    if eclass ~= "ROGUE" then return end
    -- ===== SPELL-TRIGGERED TIMERS =====
    self:AddTimer(self.SPELL, BS["Adrenaline Rush"], 15, 0,1,1)
    self:AddTimer(self.SPELL, BS["Blind"],           10, 1,0,0)
    self:AddTimer(self.SPELL, BS["Blade Flurry"],    15, 0,1,1)
    self:AddTimer(self.SPELL, BS["Cheap Shot"],       4, 1,0,0)
    self:AddTimer(self.SPELL, BS["Distract"],        10, 0,0,0)
    self:AddTimer(self.SPELL, BS["Evasion"],         15, 0,1,1)
    self:AddTimer(self.SPELL, BS["Expose Armor"],    30, 1,0,0)
    self:AddTimer(self.SPELL, BS["Garrote"],         18, 1,0,0)
    self:AddTimer(self.SPELL, BS["Gouge"],            4, 1,0,0, { d={tn=BS["Improved Gouge"], tb=0.5} })
    self:AddTimer(self.SPELL, BS["Hemorrhage"],      15, 1,0,0)
    self:AddTimer(self.SPELL, BS["Kick"],             5, 1,0,0, { ea={[BS["Kick - Silenced"]]=1} })
    self:AddTimer(self.SPELL, BS["Kidney Shot"],      1, 1,0,0, { d={rs=1, cp=1} })
    self:AddTimer(self.SPELL, BS["Riposte"],          6, 1,0,0)
    -- Rupture debuff on target with Taste for Blood talent
    -- 14 base at 1 CP + 2 per additional CP (14, 16, 18, 20, 22 at 1-5 CP)
    self:AddTimer(self.SPELL, BS["Rupture"], 14, 1,0,0, { d={cp=2} })
    -- Slice and Dice (classic)
    self:AddTimer(self.SPELL, BS["Slice and Dice"],   9, 0,1,1,
        { d={cp=3, tn=BS["Improved Blade Tactics"], tb=15, tp=1} }
    )
    -- Envenom buff: 12 base + 4 per combo point
    self:AddTimer(self.SPELL, "Envenom", 12, 0,1,1, { d={cp=4} })
    
    self:AddTimer(self.SPELL, BS["Sprint"],          15, 0,1,1)
    self:AddTimer(self.SPELL, BS["Vanish"],          10, 0,1,1)
    self:AddTimer(self.SPELL, BS["Sap"],             25, 1,0,0, { d={rs=10} })
    
    -- ===== EVENT / AURA TIMERS =====
    self:AddTimer(self.EVENT, BS["Kick - Silenced"],    2, 1,0,0, { cr="GREEN" })
    self:AddTimer(self.EVENT, BS["Mace Stun Effect"],   3, 1,0,0, { cr="GREEN", a=1, xn=BS["Mace Specialization"] })
    self:AddTimer(self.EVENT, BS["Remorseless"],       20, 0,1,1, { cr="GREEN", a=1 })
    self:AddTimer(self.EVENT, "Taste for Blood",       14, 0,1,1, { cr="GREEN", a=1, d={cp=2}, tx="Interface\\Icons\\Ability_Rogue_Rupture", bi=1 })
    self:AddTimer(self.EVENT, "Weapon Poison",         1, 0,1,1, { cr="GREEN", a=1, poisonbottom=true, tx="Interface\\Icons\\Ability_PoisonSting" })
    self:AddTimer(self.EVENT, (BS["Dissolvent Poison"] or "Dissolvent Poison"), 100, 0,1,1, { cr="GREEN", a=1, tx="Interface\\Icons\\Ability_PoisonSting", chargebar={max=100}, poisonbottom=true })
    self:AddTimer(self.EVENT, "Dissolvent Poison II", 115, 0,1,1, { cr="GREEN", a=1, tx="Interface\\Icons\\Ability_PoisonSting", chargebar={max=115}, poisonbottom=true })
end
table.insert(Chronometer.dataSetup, Chronometer.RogueSetup)

-- Gekido: Urban Fighters [NTSC-U] (SLUS-00970)
-- Widescreen hack by Paul_met
-- ported to PS4 lua by Stayhye
-- emu used=syphon filter v2

--EM_PadSetButtonsMode(2) -- switch Select/Start -> Touchpad/Options mode

local patcher = function()
--16:9 Widescreen
R3K_WriteMem16(0x800119e0,0x0C00)
--[Enable Code (Must be on)]
local enable = R3K_ReadMem16(0x099354)
if enable == 0x0008 then
R3K_WriteMem16(0x8009934C,0xE080)
end
--[Unlock All Characters]
R3K_WriteMem16(0x800B7170,0xFFFF)
--[All features]
R3K_WriteMem16(0x300B46A0,0x0001)
R3K_WriteMem16(0x300B46AC,0x0001)
R3K_WriteMem16(0x300B46B8,0x0001)
R3K_WriteMem16(0x300B46C4,0x0001)

end

EM_AddVsyncHook(patcher)

--[[
R3K_GetPC
R3K_SetPC
R3K_GetHi
R3K_SetHi
R3K_GetLo
R3K_SetLo
R3K_GetGpr
R3K_SetGpr
R3K_ReadMem8
R3K_ReadMem16
R3K_ReadMem32
R3K_ReadMemFloat
R3K_ReadMemString
R3K_WriteMem8
R3K_WriteMem16
R3K_WriteMem32
R3K_WriteMemFloat
R3K_WriteMemString
R3K_WriteMemStringZ
R3K_AddHook
R3K_RemoveHook
R3K_InsnReplace
R3K_BurnCycles
R3K_FlushCache
EM_PadRead
EM_PadWrite
EM_PadReadLeftStick
EM_PadReadRightStick
EM_PadSetButtonsMode
EM_ThrottleMax
EM_ThrottleNormal
EM_GetNativeLanguage
EM_NeoMode
EM_CRC32
EM_AddVsyncHook
EM_RemoveVsyncHook
EM_LoadConfig
EM_SaveConfig
EM_LoadState
EM_SaveState
EM_Launch
EM_GetLegacyTitleId
EM_GetStoreRegion
EM_GetSettingCli
EM_SetSettingCli
EM_GetCDRom
EM_SetCDRom
EM_GetDiscId
EM_LoadDiscId
TR_Unlock
at
v0
v1
a0
a1
a2
a3
t0
t1
t2
t3
t4
t5
t6
t7
s0
s1
s2
s3
s4
s5
s6
s7
t8
t9
k0
k1
gp
sp
fp
ra
gpr
ctl
parameter is not a function
Instruction Replacements can only be installed at script load time
InsnReplace: Opcode at PC %08x already replaced!
InsnReplace 0x%08x: 0x%08x
(LuaEngine) ERROR: 
Invalid player specified on EM_PadRead
Invalid parameter sent to EM_PadWrite
Invalid player specified on EM_PadWrite
Invalid player specified on EM_PadReadLeftStick
Invalid player specified on EM_PadReadRightStick
EM_PadSetButtonsMode is deprecated
EM_GetCDRom() is removed. Use EM_GetLegacyTitleID() to differentiate discs after a call to EM_LoadDiscId(). Use EM_GetStoreRegion() for store region info.
jp
fr
es
de
it
nl
pt
ru
ko
cht
chs
fi
se
dk
pl
ptb
gb
tr
esl
ar
frc
--]]

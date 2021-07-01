
--------------------------------------------------------------
---- Data
--------------------------------------------------------------
local TOKEN_DATA = {}
TokenRewardHelperSettings = TokenRewardHelperSettings or {}
local CLASS = {
  NONE         = 0,
  WARRIOR      = 1,
  PALADIN      = 2,
  HUNTER       = 3,
  ROGUE        = 4,
  PRIEST       = 5,
  DEATH_KNIGHT = 6,
  SHAMAN       = 7,
  MAGE         = 8,
  WARLOCK      = 9,
  MONK         = 10,
  DRUID        = 11,
  DEMON_HUNTER = 12
}
local isBCC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
---- Datafunctions
function TOKEN_DATA:addToken(tokenId)
  self[tokenId] = {}
end

function TOKEN_DATA:addReward(tokenId, rewardId, classId)
  self[tokenId][rewardId] = classId
end

--- Ony Head
-- Horde
TOKEN_DATA:addToken(18422)
TOKEN_DATA:addReward(18422, 18406, CLASS.NONE)
TOKEN_DATA:addReward(18422, 18403, CLASS.NONE)
TOKEN_DATA:addReward(18422, 18404, CLASS.NONE)
-- Alliance
TOKEN_DATA:addToken(18423)
TOKEN_DATA:addReward(18423, 18406, CLASS.NONE)
TOKEN_DATA:addReward(18423, 18403, CLASS.NONE)
TOKEN_DATA:addReward(18423, 18404, CLASS.NONE)

--- Sulfuras
-- Sulfuron Ingot
TOKEN_DATA:addToken(17203)
TOKEN_DATA:addReward(17203, 17182, CLASS.NONE)
-- Eye of Sulfuras
TOKEN_DATA:addToken(17204)
TOKEN_DATA:addReward(17204, 17182, CLASS.NONE)

--- Nef Head
-- Horde
TOKEN_DATA:addToken(19002)
TOKEN_DATA:addReward(19002, 19383, CLASS.NONE)
TOKEN_DATA:addReward(19002, 19366, CLASS.NONE)
TOKEN_DATA:addReward(19002, 19384, CLASS.NONE)
-- Alliance
TOKEN_DATA:addToken(19003)
TOKEN_DATA:addReward(19003, 19383, CLASS.NONE)
TOKEN_DATA:addReward(19003, 19366, CLASS.NONE)
TOKEN_DATA:addReward(19003, 19384, CLASS.NONE)

--- Thunderfury
-- Elementium Bar
TOKEN_DATA:addToken(17771)
TOKEN_DATA:addReward(17771, 19019, CLASS.NONE)
-- Essence of the Firelord
TOKEN_DATA:addToken(19017)
TOKEN_DATA:addReward(19017, 19019, CLASS.NONE)
-- Bindings of the Windseeker
TOKEN_DATA:addToken(18563)
TOKEN_DATA:addReward(18563, 19019, CLASS.NONE)
-- Bindings of the Windseeker
TOKEN_DATA:addToken(18564)
TOKEN_DATA:addReward(18564, 19019, CLASS.NONE)
-- Vesse of Rebirth
TOKEN_DATA:addToken(19016)
TOKEN_DATA:addReward(19016, 19019, CLASS.NONE)
-- Dormant Wind Kissed Blade
TOKEN_DATA:addToken(19018)
TOKEN_DATA:addReward(19018, 19019, CLASS.NONE)

--- ZG Items
-- Heart of Hakkar
TOKEN_DATA:addToken(19802)
TOKEN_DATA:addReward(19802, 19948, CLASS.NONE)
TOKEN_DATA:addReward(19802, 19950, CLASS.NONE)
TOKEN_DATA:addReward(19802, 19949, CLASS.NONE)
-- Primal Hakkari Shawl
TOKEN_DATA:addToken(19721)
TOKEN_DATA:addReward(19721, 19826, CLASS.PALADIN)
TOKEN_DATA:addReward(19721, 19845, CLASS.MAGE)
TOKEN_DATA:addReward(19721, 19832, CLASS.HUNTER)
-- Primal Hakkari Aegis
TOKEN_DATA:addToken(19724)
TOKEN_DATA:addReward(19724, 19841, CLASS.PRIEST)
TOKEN_DATA:addReward(19724, 19834, CLASS.ROGUE)
TOKEN_DATA:addReward(19724, 19831, CLASS.HUNTER)
-- Primal Hakkari Kossack
TOKEN_DATA:addToken(19723)
TOKEN_DATA:addReward(19723, 20033, CLASS.WARLOCK)
TOKEN_DATA:addReward(19723, 20034, CLASS.MAGE)
TOKEN_DATA:addReward(19723, 19822, CLASS.WARRIOR)
-- Primal Hakkari Tabard
TOKEN_DATA:addToken(19722)
TOKEN_DATA:addReward(19722, 19828, CLASS.SHAMAN)
TOKEN_DATA:addReward(19722, 19825, CLASS.PALADIN)
TOKEN_DATA:addReward(19722, 19838, CLASS.DRUID)
-- Primal Hakkari Armsplint
TOKEN_DATA:addToken(19717)
TOKEN_DATA:addReward(19717, 19830, CLASS.SHAMAN)
TOKEN_DATA:addReward(19717, 19836, CLASS.ROGUE)
TOKEN_DATA:addReward(19717, 19824, CLASS.WARRIOR)
-- Primal Hakkari Bindings
TOKEN_DATA:addToken(19716)
TOKEN_DATA:addReward(19716, 19827, CLASS.PALADIN)
TOKEN_DATA:addReward(19716, 19846, CLASS.MAGE)
TOKEN_DATA:addReward(19716, 19833, CLASS.HUNTER)
-- Primal Hakkari Stanchion
TOKEN_DATA:addToken(19718)
TOKEN_DATA:addReward(19718, 19843, CLASS.PRIEST)
TOKEN_DATA:addReward(19718, 19848, CLASS.WARLOCK)
TOKEN_DATA:addReward(19718, 19840, CLASS.DRUID)
-- Primal Hakkari Girdle
TOKEN_DATA:addToken(19719)
TOKEN_DATA:addReward(19719, 19829, CLASS.SHAMAN)
TOKEN_DATA:addReward(19719, 19835, CLASS.ROGUE)
TOKEN_DATA:addReward(19719, 19823, CLASS.WARRIOR)
-- Primal Hakkari Sash
TOKEN_DATA:addToken(19720)
TOKEN_DATA:addReward(19720, 19842, CLASS.PRIEST)
TOKEN_DATA:addReward(19720, 19849, CLASS.WARLOCK)
TOKEN_DATA:addReward(19720, 19839, CLASS.DRUID)

--- AQ20 Items
-- Head of Ossirian the Unscarred
TOKEN_DATA:addToken(21220)
TOKEN_DATA:addReward(21220, 21504, CLASS.NONE)
TOKEN_DATA:addReward(21220, 21507, CLASS.NONE)
TOKEN_DATA:addReward(21220, 21505, CLASS.NONE)
TOKEN_DATA:addReward(21220, 21506, CLASS.NONE)
-- Qiraji Martial Drape
TOKEN_DATA:addToken(20885)
TOKEN_DATA:addReward(20885, 21406, CLASS.ROGUE)
TOKEN_DATA:addReward(20885, 21394, CLASS.WARRIOR)
TOKEN_DATA:addReward(20885, 21415, CLASS.MAGE)
TOKEN_DATA:addReward(20885, 21412, CLASS.PRIEST)
-- Qiraji Regal Drape
TOKEN_DATA:addToken(20889)
TOKEN_DATA:addReward(20889, 21397, CLASS.PALADIN)
TOKEN_DATA:addReward(20889, 21400, CLASS.SHAMAN)
TOKEN_DATA:addReward(20889, 21403, CLASS.HUNTER)
TOKEN_DATA:addReward(20889, 21409, CLASS.DRUID)
TOKEN_DATA:addReward(20889, 21418, CLASS.WARLOCK)
-- Qiraji Ceremonial Ring
TOKEN_DATA:addToken(20888)
TOKEN_DATA:addReward(20888, 21405, CLASS.ROGUE)
TOKEN_DATA:addReward(20888, 21411, CLASS.PRIEST)
TOKEN_DATA:addReward(20888, 21417, CLASS.WARLOCK)
TOKEN_DATA:addReward(20888, 21402, CLASS.HUNTER)
-- Qiraji Magisterial Ring
TOKEN_DATA:addToken(20884)
TOKEN_DATA:addReward(20884, 21408, CLASS.DRUID)
TOKEN_DATA:addReward(20884, 21414, CLASS.MAGE)
TOKEN_DATA:addReward(20884, 21396, CLASS.PALADIN)
TOKEN_DATA:addReward(20884, 21399, CLASS.SHAMAN)
TOKEN_DATA:addReward(20884, 21393, CLASS.WARRIOR)
-- Qiraji Ornate Hilt
TOKEN_DATA:addToken(20890)
TOKEN_DATA:addReward(20890, 21413, CLASS.MAGE)
TOKEN_DATA:addReward(20890, 21410, CLASS.PRIEST)
TOKEN_DATA:addReward(20890, 21416, CLASS.WARLOCK)
TOKEN_DATA:addReward(20890, 21407, CLASS.DRUID)
-- Qiraji Spiked Hilt
TOKEN_DATA:addToken(20886)
TOKEN_DATA:addReward(20886, 21395, CLASS.PALADIN)
TOKEN_DATA:addReward(20886, 21404, CLASS.ROGUE)
TOKEN_DATA:addReward(20886, 21398, CLASS.SHAMAN)
TOKEN_DATA:addReward(20886, 21401, CLASS.HUNTER)
TOKEN_DATA:addReward(20886, 21392, CLASS.WARRIOR)

--- AQ40 Items
-- Eye of C'thun
TOKEN_DATA:addToken(21221)
TOKEN_DATA:addReward(21221, 21709, CLASS.NONE)
TOKEN_DATA:addReward(21221, 21710, CLASS.NONE)
TOKEN_DATA:addReward(21221, 21712, CLASS.NONE)
-- Imperial Qiraji Regalia
TOKEN_DATA:addToken(21237)
TOKEN_DATA:addReward(21237, 21273, CLASS.NONE)
TOKEN_DATA:addReward(21237, 21275, CLASS.NONE)
TOKEN_DATA:addReward(21237, 21268, CLASS.NONE)
-- Imperial Qiraji Armaments
TOKEN_DATA:addToken(21232)
TOKEN_DATA:addReward(21232, 21242, CLASS.NONE)
TOKEN_DATA:addReward(21232, 21272, CLASS.NONE)
TOKEN_DATA:addReward(21232, 21244, CLASS.NONE)
TOKEN_DATA:addReward(21232, 21269, CLASS.NONE)
-- Qiraji Bindings of Command
TOKEN_DATA:addToken(20928)
TOKEN_DATA:addReward(20928, 21333, CLASS.WARRIOR)
TOKEN_DATA:addReward(20928, 21330, CLASS.WARRIOR)
TOKEN_DATA:addReward(20928, 21359, CLASS.ROGUE)
TOKEN_DATA:addReward(20928, 21361, CLASS.ROGUE)
TOKEN_DATA:addReward(20928, 21349, CLASS.PRIEST)
TOKEN_DATA:addReward(20928, 21350, CLASS.PRIEST)
TOKEN_DATA:addReward(20928, 21365, CLASS.HUNTER)
TOKEN_DATA:addReward(20928, 21367, CLASS.HUNTER)
-- Qiraji Bindings of Dominance
TOKEN_DATA:addToken(20932)
TOKEN_DATA:addReward(20932, 21388, CLASS.PALADIN)
TOKEN_DATA:addReward(20932, 21391, CLASS.PALADIN)
TOKEN_DATA:addReward(20932, 21338, CLASS.WARLOCK)
TOKEN_DATA:addReward(20932, 21335, CLASS.WARLOCK)
TOKEN_DATA:addReward(20932, 21344, CLASS.MAGE)
TOKEN_DATA:addReward(20932, 21345, CLASS.MAGE)
TOKEN_DATA:addReward(20932, 21355, CLASS.DRUID)
TOKEN_DATA:addReward(20932, 21354, CLASS.DRUID)
TOKEN_DATA:addReward(20932, 21373, CLASS.SHAMAN)
TOKEN_DATA:addReward(20932, 21376, CLASS.SHAMAN)
-- Vek'lor's Diadem
TOKEN_DATA:addToken(20930)
TOKEN_DATA:addReward(20930, 21387, CLASS.PALADIN)
TOKEN_DATA:addReward(20930, 21360, CLASS.ROGUE)
TOKEN_DATA:addReward(20930, 21353, CLASS.DRUID)
TOKEN_DATA:addReward(20930, 21372, CLASS.SHAMAN)
TOKEN_DATA:addReward(20930, 21366, CLASS.HUNTER)
-- Vek'nilash's Circlet
TOKEN_DATA:addToken(20926)
TOKEN_DATA:addReward(20926, 21329, CLASS.WARRIOR)
TOKEN_DATA:addReward(20926, 21337, CLASS.WARLOCK)
TOKEN_DATA:addReward(20926, 21347, CLASS.MAGE)
TOKEN_DATA:addReward(20926, 21348, CLASS.PRIEST)
-- Ouro's Intact Hide
TOKEN_DATA:addToken(20927)
TOKEN_DATA:addReward(20927, 21332, CLASS.WARRIOR)
TOKEN_DATA:addReward(20927, 21362, CLASS.ROGUE)
TOKEN_DATA:addReward(20927, 21346, CLASS.MAGE)
TOKEN_DATA:addReward(20927, 21352, CLASS.PRIEST)
-- Skin of the Great Sandworm
TOKEN_DATA:addToken(20931)
TOKEN_DATA:addReward(20931, 21390, CLASS.PALADIN)
TOKEN_DATA:addReward(20931, 21336, CLASS.WARLOCK)
TOKEN_DATA:addReward(20931, 21356, CLASS.DRUID)
TOKEN_DATA:addReward(20931, 21375, CLASS.SHAMAN)
TOKEN_DATA:addReward(20931, 21368, CLASS.HUNTER)
-- Carapace of the Old God
TOKEN_DATA:addToken(20929)
TOKEN_DATA:addReward(20929, 21389, CLASS.PALADIN)
TOKEN_DATA:addReward(20929, 21331, CLASS.WARRIOR)
TOKEN_DATA:addReward(20929, 21364, CLASS.ROGUE)
TOKEN_DATA:addReward(20929, 21374, CLASS.SHAMAN)
TOKEN_DATA:addReward(20929, 21370, CLASS.HUNTER)
-- Husk of the Old God
TOKEN_DATA:addToken(20933)
TOKEN_DATA:addReward(20933, 21334, CLASS.WARLOCK)
TOKEN_DATA:addReward(20933, 21343, CLASS.MAGE)
TOKEN_DATA:addReward(20933, 21357, CLASS.DRUID)
TOKEN_DATA:addReward(20933, 21351, CLASS.PRIEST)

--- Naxxramas Items
-- The Phylactery of Kel'Thuzad
TOKEN_DATA:addToken(22520)
TOKEN_DATA:addReward(22520, 23206, CLASS.NONE)
TOKEN_DATA:addReward(22520, 23207, CLASS.NONE)
-- Desecrated Breastplate
TOKEN_DATA:addToken(22349)
TOKEN_DATA:addReward(22349, 22416, CLASS.WARRIOR)
TOKEN_DATA:addReward(22349, 22476, CLASS.ROGUE)
-- Desecrated Legplates
TOKEN_DATA:addToken(22352)
TOKEN_DATA:addReward(22352, 22417, CLASS.WARRIOR)
TOKEN_DATA:addReward(22352, 22477, CLASS.ROGUE)
-- Desecrated Helmet
TOKEN_DATA:addToken(22353)
TOKEN_DATA:addReward(22353, 22418, CLASS.WARRIOR)
TOKEN_DATA:addReward(22353, 22478, CLASS.ROGUE)
-- Desecrated Pauldrons
TOKEN_DATA:addToken(22354)
TOKEN_DATA:addReward(22354, 22419, CLASS.WARRIOR)
TOKEN_DATA:addReward(22354, 22479, CLASS.ROGUE)
-- Desecrated Bracers
TOKEN_DATA:addToken(22355)
TOKEN_DATA:addReward(22355, 22423, CLASS.WARRIOR)
TOKEN_DATA:addReward(22355, 22483, CLASS.ROGUE)
-- Desecrated Waistguard
TOKEN_DATA:addToken(22356)
TOKEN_DATA:addReward(22356, 22422, CLASS.WARRIOR)
TOKEN_DATA:addReward(22356, 22482, CLASS.ROGUE)
-- Desecrated Gauntlets
TOKEN_DATA:addToken(22357)
TOKEN_DATA:addReward(22357, 22421, CLASS.WARRIOR)
TOKEN_DATA:addReward(22357, 22481, CLASS.ROGUE)
-- Desecrated Sabatons
TOKEN_DATA:addToken(22358)
TOKEN_DATA:addReward(22358, 22420, CLASS.WARRIOR)
TOKEN_DATA:addReward(22358, 22480, CLASS.ROGUE)
-- Desecrated Tunic
TOKEN_DATA:addToken(22350)
TOKEN_DATA:addReward(22350, 22436, CLASS.HUNTER)
TOKEN_DATA:addReward(22350, 22488, CLASS.DRUID)
TOKEN_DATA:addReward(22350, 22464, CLASS.SHAMAN)
TOKEN_DATA:addReward(22350, 22425, CLASS.PALADIN)
-- Desecrated Legguards
TOKEN_DATA:addToken(22359)
TOKEN_DATA:addReward(22359, 22437, CLASS.HUNTER)
TOKEN_DATA:addReward(22359, 22489, CLASS.DRUID)
TOKEN_DATA:addReward(22359, 22465, CLASS.SHAMAN)
TOKEN_DATA:addReward(22359, 22427, CLASS.PALADIN)
-- Desecrated Headpiece
TOKEN_DATA:addToken(22360)
TOKEN_DATA:addReward(22360, 22438, CLASS.HUNTER)
TOKEN_DATA:addReward(22360, 22490, CLASS.DRUID)
TOKEN_DATA:addReward(22360, 22466, CLASS.SHAMAN)
TOKEN_DATA:addReward(22360, 22428, CLASS.PALADIN)
-- Desecrated Spaulders
TOKEN_DATA:addToken(22361)
TOKEN_DATA:addReward(22361, 22439, CLASS.HUNTER)
TOKEN_DATA:addReward(22361, 22491, CLASS.DRUID)
TOKEN_DATA:addReward(22361, 22467, CLASS.SHAMAN)
TOKEN_DATA:addReward(22361, 22429, CLASS.PALADIN)
-- Desecrated Wristguards
TOKEN_DATA:addToken(22362)
TOKEN_DATA:addReward(22362, 22443, CLASS.HUNTER)
TOKEN_DATA:addReward(22362, 22495, CLASS.DRUID)
TOKEN_DATA:addReward(22362, 22471, CLASS.SHAMAN)
TOKEN_DATA:addReward(22362, 22424, CLASS.PALADIN)
-- Desecrated Girdle
TOKEN_DATA:addToken(22363)
TOKEN_DATA:addReward(22363, 22442, CLASS.HUNTER)
TOKEN_DATA:addReward(22363, 22494, CLASS.DRUID)
TOKEN_DATA:addReward(22363, 22470, CLASS.SHAMAN)
TOKEN_DATA:addReward(22363, 22431, CLASS.PALADIN)
-- Desecrated Handguards
TOKEN_DATA:addToken(22364)
TOKEN_DATA:addReward(22364, 22441, CLASS.HUNTER)
TOKEN_DATA:addReward(22364, 22493, CLASS.DRUID)
TOKEN_DATA:addReward(22364, 22469, CLASS.SHAMAN)
TOKEN_DATA:addReward(22364, 22426, CLASS.PALADIN)
-- Desecrated Boots
TOKEN_DATA:addToken(22365)
TOKEN_DATA:addReward(22365, 22440, CLASS.HUNTER)
TOKEN_DATA:addReward(22365, 22492, CLASS.DRUID)
TOKEN_DATA:addReward(22365, 22468, CLASS.SHAMAN)
TOKEN_DATA:addReward(22365, 22430, CLASS.PALADIN)
-- Desecrated Robe
TOKEN_DATA:addToken(22351)
TOKEN_DATA:addReward(22351, 22496, CLASS.MAGE)
TOKEN_DATA:addReward(22351, 22504, CLASS.WARLOCK)
TOKEN_DATA:addReward(22351, 22512, CLASS.PRIEST)
-- Desecrated Leggings
TOKEN_DATA:addToken(22366)
TOKEN_DATA:addReward(22366, 22497, CLASS.MAGE)
TOKEN_DATA:addReward(22366, 22505, CLASS.WARLOCK)
TOKEN_DATA:addReward(22366, 22513, CLASS.PRIEST)
-- Desecrated Circlet
TOKEN_DATA:addToken(22367)
TOKEN_DATA:addReward(22367, 22498, CLASS.MAGE)
TOKEN_DATA:addReward(22367, 22506, CLASS.WARLOCK)
TOKEN_DATA:addReward(22367, 22514, CLASS.PRIEST)
-- Desecrated Shoulderpads
TOKEN_DATA:addToken(22368)
TOKEN_DATA:addReward(22368, 22499, CLASS.MAGE)
TOKEN_DATA:addReward(22368, 22507, CLASS.WARLOCK)
TOKEN_DATA:addReward(22368, 22515, CLASS.PRIEST)
-- Desecrated Bindings
TOKEN_DATA:addToken(22369)
TOKEN_DATA:addReward(22369, 22503, CLASS.MAGE)
TOKEN_DATA:addReward(22369, 22511, CLASS.WARLOCK)
TOKEN_DATA:addReward(22369, 22519, CLASS.PRIEST)
-- Desecrated Belt
TOKEN_DATA:addToken(22370)
TOKEN_DATA:addReward(22370, 22502, CLASS.MAGE)
TOKEN_DATA:addReward(22370, 22510, CLASS.WARLOCK)
TOKEN_DATA:addReward(22370, 22518, CLASS.PRIEST)
-- Desecrated Gloves
TOKEN_DATA:addToken(22371)
TOKEN_DATA:addReward(22371, 22501, CLASS.MAGE)
TOKEN_DATA:addReward(22371, 22509, CLASS.WARLOCK)
TOKEN_DATA:addReward(22371, 22517, CLASS.PRIEST)
-- Desecrated Sandals
TOKEN_DATA:addToken(22372)
TOKEN_DATA:addReward(22372, 22500, CLASS.MAGE)
TOKEN_DATA:addReward(22372, 22508, CLASS.WARLOCK)
TOKEN_DATA:addReward(22372, 22516, CLASS.PRIEST)

--- Atiesh
-- Splinter of Atiesh
TOKEN_DATA:addToken(22726)
TOKEN_DATA:addReward(22726, 22589, CLASS.MAGE)
TOKEN_DATA:addReward(22726, 22630, CLASS.WARLOCK)
TOKEN_DATA:addReward(22726, 22631, CLASS.PRIEST)
TOKEN_DATA:addReward(22726, 22632, CLASS.DRUID)
-- Frame of Atiesh
TOKEN_DATA:addToken(22727)
TOKEN_DATA:addReward(22727, 22589, CLASS.MAGE)
TOKEN_DATA:addReward(22727, 22630, CLASS.WARLOCK)
TOKEN_DATA:addReward(22727, 22631, CLASS.PRIEST)
TOKEN_DATA:addReward(22727, 22632, CLASS.DRUID)
-- Base of Atiesh
TOKEN_DATA:addToken(22734)
TOKEN_DATA:addReward(22734, 22589, CLASS.MAGE)
TOKEN_DATA:addReward(22734, 22630, CLASS.WARLOCK)
TOKEN_DATA:addReward(22734, 22631, CLASS.PRIEST)
TOKEN_DATA:addReward(22734, 22632, CLASS.DRUID)
-- Staff Head of Atiesh
TOKEN_DATA:addToken(22733)
TOKEN_DATA:addReward(22733, 22589, CLASS.MAGE)
TOKEN_DATA:addReward(22733, 22630, CLASS.WARLOCK)
TOKEN_DATA:addReward(22733, 22631, CLASS.PRIEST)
TOKEN_DATA:addReward(22733, 22632, CLASS.DRUID)

if isBCC then
  --- BCC
  -- T4 Gloves
  TOKEN_DATA:addToken(29757)
  TOKEN_DATA:addReward(29757, 29032, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29757, 29034, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29757, 29039, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29757, 29048, CLASS.ROGUE)
  TOKEN_DATA:addReward(29757, 29065, CLASS.PALADIN)
  TOKEN_DATA:addReward(29757, 29067, CLASS.PALADIN)
  TOKEN_DATA:addReward(29757, 29072, CLASS.PALADIN)
  TOKEN_DATA:addToken(29758)
  TOKEN_DATA:addReward(29758, 29017, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29758, 29020, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29758, 29055, CLASS.PRIEST)
  TOKEN_DATA:addReward(29758, 29057, CLASS.PRIEST)
  TOKEN_DATA:addReward(29758, 29090, CLASS.DRUID)
  TOKEN_DATA:addReward(29758, 29092, CLASS.DRUID)
  TOKEN_DATA:addReward(29758, 29097, CLASS.DRUID)
  TOKEN_DATA:addToken(29756)
  TOKEN_DATA:addReward(29756, 28968, CLASS.WARLOCK)
  TOKEN_DATA:addReward(29756, 29080, CLASS.MAGE)
  TOKEN_DATA:addReward(29756, 29085, CLASS.HUNTER)
  -- T4 Head
  TOKEN_DATA:addToken(29760)
  TOKEN_DATA:addReward(29760, 29028, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29760, 29035, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29760, 29040, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29760, 29044, CLASS.ROGUE)
  TOKEN_DATA:addReward(29760, 29061, CLASS.PALADIN)
  TOKEN_DATA:addReward(29760, 29068, CLASS.PALADIN)
  TOKEN_DATA:addReward(29760, 29073, CLASS.PALADIN)
  TOKEN_DATA:addToken(29761)
  TOKEN_DATA:addReward(29761, 29011, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29761, 29021, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29761, 29049, CLASS.PRIEST)
  TOKEN_DATA:addReward(29761, 29058, CLASS.PRIEST)
  TOKEN_DATA:addReward(29761, 29086, CLASS.DRUID)
  TOKEN_DATA:addReward(29761, 29093, CLASS.DRUID)
  TOKEN_DATA:addReward(29761, 29098, CLASS.DRUID)
  TOKEN_DATA:addToken(29759)
  TOKEN_DATA:addReward(29759, 28963, CLASS.WARLOCK)
  TOKEN_DATA:addReward(29759, 29076, CLASS.MAGE)
  TOKEN_DATA:addReward(29759, 29081, CLASS.HUNTER)
  -- Magtheridon Head Alliance
  TOKEN_DATA:addToken(32385)
  TOKEN_DATA:addReward(32385, 28790, CLASS.NONE)
  TOKEN_DATA:addReward(32385, 28791, CLASS.NONE)
  TOKEN_DATA:addReward(32385, 28792, CLASS.NONE)
  TOKEN_DATA:addReward(32385, 28793, CLASS.NONE)
  -- Magtheridon Head Horde
  TOKEN_DATA:addToken(32386)
  TOKEN_DATA:addReward(32386, 28790, CLASS.NONE)
  TOKEN_DATA:addReward(32386, 28791, CLASS.NONE)
  TOKEN_DATA:addReward(32386, 28792, CLASS.NONE)
  TOKEN_DATA:addReward(32386, 28793, CLASS.NONE)
  -- T4 Chest
  TOKEN_DATA:addToken(29754)
  TOKEN_DATA:addReward(29754, 29029, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29754, 29033, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29754, 29038, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29754, 29045, CLASS.ROGUE)
  TOKEN_DATA:addReward(29754, 29062, CLASS.PALADIN)
  TOKEN_DATA:addReward(29754, 29066, CLASS.PALADIN)
  TOKEN_DATA:addReward(29754, 29071, CLASS.PALADIN)
  TOKEN_DATA:addToken(29753)
  TOKEN_DATA:addReward(29753, 29012, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29753, 29019, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29753, 29050, CLASS.PRIEST)
  TOKEN_DATA:addReward(29753, 29056, CLASS.PRIEST)
  TOKEN_DATA:addReward(29753, 29087, CLASS.DRUID)
  TOKEN_DATA:addReward(29753, 29091, CLASS.DRUID)
  TOKEN_DATA:addReward(29753, 29096, CLASS.DRUID)
  TOKEN_DATA:addToken(29755)
  TOKEN_DATA:addReward(29755, 28964, CLASS.WARLOCK)
  TOKEN_DATA:addReward(29755, 29077, CLASS.MAGE)
  TOKEN_DATA:addReward(29755, 29082, CLASS.HUNTER)
  -- T4 Shoulder
  TOKEN_DATA:addToken(29763)
  TOKEN_DATA:addReward(29763, 29031, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29763, 29037, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29763, 29043, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29763, 29047, CLASS.ROGUE)
  TOKEN_DATA:addReward(29763, 29064, CLASS.PALADIN)
  TOKEN_DATA:addReward(29763, 29070, CLASS.PALADIN)
  TOKEN_DATA:addReward(29763, 29075, CLASS.PALADIN)
  TOKEN_DATA:addToken(29764)
  TOKEN_DATA:addReward(29764, 29016, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29764, 29023, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29764, 29054, CLASS.PRIEST)
  TOKEN_DATA:addReward(29764, 29060, CLASS.PRIEST)
  TOKEN_DATA:addReward(29764, 29089, CLASS.DRUID)
  TOKEN_DATA:addReward(29764, 29095, CLASS.DRUID)
  TOKEN_DATA:addReward(29764, 29100, CLASS.DRUID)
  TOKEN_DATA:addToken(29762)
  TOKEN_DATA:addReward(29762, 28967, CLASS.WARLOCK)
  TOKEN_DATA:addReward(29762, 29079, CLASS.MAGE)
  TOKEN_DATA:addReward(29762, 29084, CLASS.HUNTER)
  -- T4 Leggings
  TOKEN_DATA:addToken(29766)
  TOKEN_DATA:addReward(29766, 29030, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29766, 29036, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29766, 29042, CLASS.SHAMAN)
  TOKEN_DATA:addReward(29766, 29046, CLASS.ROGUE)
  TOKEN_DATA:addReward(29766, 29063, CLASS.PALADIN)
  TOKEN_DATA:addReward(29766, 29069, CLASS.PALADIN)
  TOKEN_DATA:addReward(29766, 29074, CLASS.PALADIN)
  TOKEN_DATA:addToken(29767)
  TOKEN_DATA:addReward(29767, 29015, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29767, 29022, CLASS.WARRIOR)
  TOKEN_DATA:addReward(29767, 29053, CLASS.PRIEST)
  TOKEN_DATA:addReward(29767, 29059, CLASS.PRIEST)
  TOKEN_DATA:addReward(29767, 29088, CLASS.DRUID)
  TOKEN_DATA:addReward(29767, 29094, CLASS.DRUID)
  TOKEN_DATA:addReward(29767, 29099, CLASS.DRUID)
  TOKEN_DATA:addToken(29765)
  TOKEN_DATA:addReward(29765, 28966, CLASS.WARLOCK)
  TOKEN_DATA:addReward(29765, 29078, CLASS.MAGE)
  TOKEN_DATA:addReward(29765, 29083, CLASS.HUNTER)
end

local ALIGNMENT = {
  BOTTOM = 1,
  TOP    = 2,
  LEFT   = 3,
  RIGHT  = 4,
}

local function getAlignmentText(index)
  for k, v in pairs(ALIGNMENT) do
    if (v == index) then
      return k
    end
  end
  return "Missing Alignment in getAlignmentText(index)"
end

---- options and variables

local debug = false

local addonName = "TokenRewardHelper"
local trhSettings = CreateFrame("FRAME", addonName)
local panel = CreateFrame("Frame", addonName .. "Panel")
local alignmentDropDown = CreateFrame("FRAME", "alignDropDown", panel, "UIDropDownMenuTemplate")

--------------------------------------------------------------
---- helper functions
--------------------------------------------------------------

-- print help on how to use the command line
local function printHelp()
  print("Token Reward Helper usage:")
  print("/trh debug : toggle debug modus")
  print("/trh id <itemLink> : prints the id for a given item")
  print("/trh rw <itemLink> : prints all rewards for a given item")
  print("/trh align <TOP\124BOTTOM\124LEFT\124\124RIGHT> : set the alignment of the reward tooltip to the token tooltip")
end

-- returns an itemString from a given itemLink
local function getItemString(itemLink)
  local itemString = string.match(itemLink, "item[%-?%d:]+")
  return itemString
end

-- returns an itemId from a given itemString
local function getItemId(itemString)
   local _, itemId = strsplit(":", itemString)
   return tonumber(itemId)
end

-- returns an itemLink from a given itemId
local function getItemLink(itemId)
  local _, itemLink = GetItemInfo(itemId)
  return itemLink
end

-- returns all rewards for a given token
local function getRewards(tokenID)
  local rewards = TOKEN_DATA[tokenID]
  return rewards
end

-- filters a list of rewards based on character class
local function filterRewards(table, filterElement)
  if (IsModifierKeyDown()) then
    return table
  end
  local _, _, classIndex = UnitClass(filterElement)
  local filteredTable = {}
  for k,v in pairs(table) do
    if (v == classIndex or v == 0) then
      filteredTable[k]=v
    end
  end
  return filteredTable
end

-- method to handle the "id" command line
local function handleId(msg, pattern)
  local itemLink = string.match(msg, pattern)
  local itemId = getItemId(getItemString(itemLink))
  print(format("id: \n%d", itemId))
end

-- get a list of rewards for a given itemLink
local function getRewardList(itemLink, fullList)
  fullList = fullList or false
  local itemId = getItemId(getItemString(itemLink))
  local fullRewards = getRewards(itemId)
  if (fullRewards == nil) then
    if (debug) then
      print(format("No Rewards known for this item with id %d. Please report it, if you think there should be one.", itemId))
    end
    return
  end
  if (fullList) then
    return fullRewards
  end

  local filteredRewards = filterRewards(fullRewards, "player")
  return filteredRewards
end

-- method to handle the "rw" command line
local function handleReward(msg, rwPattern)
  local itemLink = string.match(msg, rwPattern)

  local rewardList = getRewardList(itemLink, true)
  
  print(format("reward lookup for %s:", itemLink))
  for k, _ in pairs(rewardList) do
    print(format("%s", getItemLink(k)))
  end
end

-- method to handle the "align" command line
local function handleAlign(msg, alignPattern)
  local alignment = string.match(msg, alignPattern)

  if (string.lower(alignment) == "top") then
    TokenRewardHelperSettings["alignment"] = ALIGNMENT.TOP
  elseif (string.lower(alignment) == "bottom") then
    TokenRewardHelperSettings["alignment"] = ALIGNMENT.BOTTOM
  elseif (string.lower(alignment) == "left") then
    TokenRewardHelperSettings["alignment"] = ALIGNMENT.LEFT
  elseif (string.lower(alignment) == "right") then
    TokenRewardHelperSettings["alignment"] = ALIGNMENT.RIGHT
  else
    InterfaceOptionsFrame_OpenToCategory(panel)
    InterfaceOptionsFrame_OpenToCategory(panel) -- one call will only open the normal interface options. blizzard bug?
  end

  if(debug) then
    print(format("current tooltip alignment: %d", TokenRewardHelperSettings["alignment"]))
  end
end

--------------------------------------------------------------
---- CLI
--------------------------------------------------------------

-- command line handler
local function handler(msg)
  local idPattern = "^id%s+(.*)%s*"
  local rwPattern = "^rw%s+(.*)%s*"
  local alignPattern = "^align%s?(.*)%s*"
  if (msg == "debug") then    
    debug = not debug
    if (debug) then 
      print("debug is now on")
    else 
      print("debug is now off")
    end
  elseif (string.match(msg, idPattern)) then
    handleId(msg, idPattern)
  elseif (string.match(msg, rwPattern)) then
    handleReward(msg, rwPattern)
  elseif (string.match(msg, alignPattern)) then
    handleAlign(msg, alignPattern)
  else
    printHelp()
  end
end

--------------------------------------------------------------
---- UI
--------------------------------------------------------------

-- updates the tooltips if hovering over an item
local function attachRewardTooltips(self, tooltips, tooltipOwner, tooltipAttachmentInner, tooltipAttachmentOuter)
  local itemName, itemLink = self:GetItem()
  if (debug) then
    print(format("itemlink: %s",itemLink))
  end
  if(itemName) then
    local itemId = getItemId(getItemString(itemLink))
    if (debug) then
      print(format("itemid of item in tooltip: %d", itemId))
    end
    local rewardList = getRewardList(itemLink)
    if (rewardList == nil or next(rewardList) == nil) then
      for i = 1, #tooltips do
        if (debug) then
          print(format("hiding frame %d", i))
        end
        tooltips[i]:Hide()
      end
      return
    end
    
    if (debug) then
      print("rewards:")
      for k, _ in pairs(rewardList) do
        print(tostring(k))
      end
    end
  
    local i = 1
    for k, _ in pairs(rewardList) do
      tooltips[i]:SetOwner(tooltipOwner[i], "ANCHOR_NONE")
      tooltips[i]:SetPoint(tooltipAttachmentInner[i], tooltipOwner[i], tooltipAttachmentOuter[i])
      tooltips[i]:SetItemByID(k)
      if (self:IsVisible()) then
        tooltips[i]:Show()
      else
        tooltips[i]:Hide()
      end
      i = i + 1
    end
    for j = i, #tooltips do
      tooltips[j]:Hide()
    end
  else
    for i = 1, #tooltips do
      tooltips[i]:Hide()
    end
  end
end

-- handler for item link tooltips
local function OnRefTooltipSetItem(self)
  -- tooltip order from left to right: 1 - 2 - 3 - 4 - 5 - 6 - 7 - 8 - 9 - 10
  local refTooltips = { RewardRefTooltip1, RewardRefTooltip2, RewardRefTooltip3, RewardRefTooltip4, RewardRefTooltip5, RewardRefTooltip6, RewardRefTooltip7, RewardRefTooltip8, RewardRefTooltip9, RewardRefTooltip10 }
  local tooltipOwner = { self, RewardRefTooltip1, RewardRefTooltip2, RewardRefTooltip3, RewardRefTooltip4, RewardRefTooltip5, RewardRefTooltip6, RewardRefTooltip7, RewardRefTooltip8, RewardRefTooltip9 }
  local tooltipAttachmentInner = { "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" , "TOPLEFT" }
  local tooltipAttachmentOuter = { "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT" }
  return attachRewardTooltips(self, refTooltips, tooltipOwner, tooltipAttachmentInner, tooltipAttachmentOuter)
end

-- handler for mouse over tooltips
local function OnNormalTooltipSetItem(self)
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8, RewardTooltip9, RewardTooltip10 }
  local tooltipOwner, tooltipAttachmentInner, tooltipAttachmentOuter
  if (TokenRewardHelperSettings == nil) then
    TokenRewardHelperSettings = {}
  end
  if (TokenRewardHelperSettings["alignment"] == ALIGNMENT.BOTTOM) then
  -- tooltip order from left to right: 9 - 7 - 5 - 3 - 1 - 2 - 4 - 6 - 8 - 10
    tooltipOwner = { self, RewardTooltip1, RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8}
    tooltipAttachmentInner = { "TOPLEFT"   , "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" }
    tooltipAttachmentOuter = { "BOTTOMLEFT", "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT" }
  elseif (TokenRewardHelperSettings["alignment"] == ALIGNMENT.LEFT) then
    -- TODO
  -- tooltip order from left to right: 10 - 9 - 8 - 7 - 6 - 5 - 4 - 3 - 2 - 1
    tooltipOwner = { self, RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8, RewardTooltip9}
    tooltipAttachmentInner = { "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT" }
    tooltipAttachmentOuter = { "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT" }
  elseif (TokenRewardHelperSettings["alignment"] == ALIGNMENT.RIGHT) then
    -- TODO
  -- tooltip order from left to right: 1 - 2 - 3 - 4 - 5 - 6 - 7 - 8 - 9 - 10
    tooltipOwner = { self, RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8, RewardTooltip9}
    tooltipAttachmentInner = { "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT", "TOPLEFT" }
    tooltipAttachmentOuter = { "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT", "TOPRIGHT" }
  else
  -- tooltip order from left to right: 9 - 7 - 5 - 3 - 1 - 2 - 4 - 6 - 8 - 10
    tooltipOwner = { self, RewardTooltip1, RewardTooltip1, RewardTooltip2, RewardTooltip3}
    tooltipAttachmentInner = { "BOTTOMLEFT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" }
    tooltipAttachmentOuter = { "TOPLEFT"   , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT" }
  end
  return attachRewardTooltips(self, tooltips, tooltipOwner, tooltipAttachmentInner, tooltipAttachmentOuter)
end

-- hide all reward tooltips
local function HideTooltips()
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8, RewardTooltip9, RewardTooltip10 }
  for i = 1, #tooltips do
    tooltips[i]:Hide()
  end
end

-- hide all reward refTooltips
local function HideRefTooltips()
  local refTooltips = { RewardRefTooltip1, RewardRefTooltip2, RewardRefTooltip3, RewardRefTooltip4, RewardRefTooltip5, RewardRefTooltip6, RewardRefTooltip7, RewardRefTooltip8, RewardRefTooltip9, RewardRefTooltip10 }
  for i = 1, #refTooltips do
    refTooltips[i]:Hide()
  end
end

-- function for clicking on the alignment dropdown in the options panel
local function alignmentDropDown_OnClick(_, arg1)
  TokenRewardHelperSettings["alignment"] = arg1
  UIDropDownMenu_SetText(alignmentDropDown, getAlignmentText(arg1))
end

-- initialization of the alignment dropdown panel
local function initAlignmentDropDown(dropDown, level, menuList)
  local info = UIDropDownMenu_CreateInfo()
  info.func = alignmentDropDown_OnClick
  for k, v in pairs(ALIGNMENT) do
    info.text = k
    info.arg1 = v
    info.checked = v == TokenRewardHelperSettings["alignment"]
    UIDropDownMenu_AddButton(info)
  end
end

-- initialization of the addon panel
local function InitializePanel()
  panel.name = "Token Reward Helper"

  InterfaceOptions_AddCategory(panel)

  local title = panel:CreateFontString(addonName .. "Title", "OVERLAY", "GameFontNormalLarge")
  title:SetPoint("TOP", 0, -12)
  title:SetText(panel.name)

  local alignOption = panel:CreateFontString(addonName .. "AlignOption", "OVERLAY", "GameFontNormalSmall")
  alignOption:SetPoint("TOPLEFT", 10, -35)
  alignOption:SetText("Tooltip Alignment:")

  alignmentDropDown:SetPoint("TOPLEFT", 0, -50)
  UIDropDownMenu_SetText(alignmentDropDown, getAlignmentText(TokenRewardHelperSettings["alignment"]))
  UIDropDownMenu_Initialize(alignmentDropDown, initAlignmentDropDown, 1)

  local info1 = panel:CreateFontString(addonName .. "info1", "OVERLAY", "GameFontNormalSmall")
  info1:SetPoint("TOPLEFT", 20, -85)
  info1:SetText("This option will be saved immediatly without using the Okay or Cancel Button below.")

  local helpText = panel:CreateFontString(addonName .. "Help", "OVERLAY", "GameFontNormalSmall")
  helpText:SetPoint("TOPLEFT", 10, -150)
  helpText:SetText("For more information, type /trh")
end

-- preload the tooltips
local function InitializeTooltips()
  for itemId, _ in pairs(TOKEN_DATA) do
    getItemLink(itemId)
  end
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5, RewardTooltip6, RewardTooltip7, RewardTooltip8, RewardTooltip9, RewardTooltip10 }
  for i = 1, #tooltips do
    tooltips[i]:SetOwner(GameTooltip, "ANCHOR_NONE")
    -- calling SetHyperlink here seems to cause lua errors
    -- tooltips[i]:SetHyperlink(getItemLink(18422))
    tooltips[i]:SetClampedToScreen(false)
  end
  local refTooltips = { RewardRefTooltip1, RewardRefTooltip2, RewardRefTooltip3, RewardRefTooltip4, RewardRefTooltip5, RewardRefTooltip6, RewardRefTooltip7, RewardRefTooltip8, RewardRefTooltip9, RewardRefTooltip10 }
  for i = 1, #refTooltips do
    refTooltips[i]:SetOwner(ItemRefTooltip, "ANCHOR_NONE")
    -- calling SetHyperlink here seems to cause lua errors
    -- refTooltips[i]:SetHyperlink(getItemLink(18422))
    refTooltips[i]:SetClampedToScreen(false)
  end
end

-- initial loading of tooltips and global variables
function trhSettings:ADDON_LOADED(eventName)
  if (eventName == addonName) then
    InitializePanel()
    InitializeTooltips()
    if (TokenRewardHelperSettings == nil) then
      TokenRewardHelperSettings = {}
    end
    if (debug) then
      print(format("saved variable: alignment = %s", tostring(TokenRewardHelperSettings["alignment"])))
      print(TokenRewardHelperSettings["alignment"] == nil)
    end
    if (TokenRewardHelperSettings["alignment"] == nil) then
      TokenRewardHelperSettings["alignment"] = ALIGNMENT.BOTTOM
    end
  end
end

--------------------------------------------------------------
---- handles
--------------------------------------------------------------

-- CLI
SLASH_TOKENREWARDHELPER1 = '/tokenrewardhelper'
SLASH_TOKENREWARDHELPER2 = '/trh'
SlashCmdList["TOKENREWARDHELPER"] = handler

-- Initializing
trhSettings:RegisterEvent("ADDON_LOADED")
trhSettings:SetScript(
  "OnEvent",
  function(self, event, ...)
    if (trhSettings[event]) then
      trhSettings[event](self, ...)
    end
  end
)

-- GameTooltip
GameTooltip:HookScript("OnTooltipSetItem", OnNormalTooltipSetItem)
GameTooltip:HookScript("OnTooltipSetSpell", HideTooltips)
GameTooltip:HookScript("OnTooltipSetUnit", HideTooltips)
GameTooltip:HookScript("OnTooltipCleared", HideTooltips)

-- ItemRefTooltip
ItemRefTooltip:HookScript("OnTooltipSetItem", OnRefTooltipSetItem)
ItemRefTooltip:HookScript("OnTooltipSetSpell", HideRefTooltips)
ItemRefTooltip:HookScript("OnTooltipSetUnit", HideRefTooltips)
ItemRefTooltip:HookScript("OnTooltipCleared", HideRefTooltips)

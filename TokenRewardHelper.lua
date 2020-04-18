
--------------------------------------------------------------
---- Data
--------------------------------------------------------------
local TOKEN_DATA = {}

CLASS = {
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

---- Datafunctions
function addToken(tokenId)
  TOKEN_DATA[tokenId] = {}
end

function addReward(tokenId, rewardId, classId)
  TOKEN_DATA[tokenId][rewardId] = classId
end

--- Ony Head
-- Horde
addToken(18422)
addReward(18422, 18406, CLASS.NONE)
addReward(18422, 18403, CLASS.NONE)
addReward(18422, 18404, CLASS.NONE)
-- Alliance
addToken(18423)
addReward(18423, 18406, CLASS.NONE)
addReward(18423, 18403, CLASS.NONE)
addReward(18423, 18404, CLASS.NONE)

--- ZG Items
-- Heart of Hakkar
addToken(19802)
addReward(19802, 19948, CLASS.NONE)
addReward(19802, 19950, CLASS.NONE)
addReward(19802, 19949, CLASS.NONE)
-- Primal Hakkari Shawl
addToken(19721)
addReward(19721, 19826, CLASS.PALADIN)
addReward(19721, 19845, CLASS.MAGE)
addReward(19721, 19832, CLASS.HUNTER)
-- Primal Hakkari Aegis
addToken(19724)
addReward(19724, 19841, CLASS.PRIEST)
addReward(19724, 19834, CLASS.ROGUE)
addReward(19724, 19831, CLASS.HUNTER)
-- Primal Hakkari Kossack
addToken(19723)
addReward(19723, 20033, CLASS.WARLOCK)
addReward(19723, 20034, CLASS.MAGE)
addReward(19723, 19822, CLASS.WARRIOR)
-- Primal Hakkari Tabard
addToken(19722)
addReward(19722, 19828, CLASS.SHAMAN)
addReward(19722, 19825, CLASS.PALADIN)
addReward(19722, 19838, CLASS.DRUID)
-- Primal Hakkari Armsplint
addToken(19717)
addReward(19717, 19830, CLASS.SHAMAN)
addReward(19717, 19836, CLASS.ROGUE)
addReward(19717, 19824, CLASS.WARRIOR)
-- Primal Hakkari Bindings
addToken(19716)
addReward(19716, 19827, CLASS.PALADIN)
addReward(19716, 19846, CLASS.MAGE)
addReward(19716, 19833, CLASS.HUNTER)
-- Primal Hakkari Stanchion
addToken(19718)
addReward(19718, 19843, CLASS.PRIEST)
addReward(19718, 19848, CLASS.WARLOCK)
addReward(19718, 19840, CLASS.DRUID)
-- Primal Hakkari Girdle
addToken(19719)
addReward(19719, 19829, CLASS.SHAMAN)
addReward(19719, 19835, CLASS.ROGUE)
addReward(19719, 19823, CLASS.WARRIOR)
-- Primal Hakkari Sash
addToken(19720)
addReward(19720, 19842, CLASS.PRIEST)
addReward(19720, 19849, CLASS.WARLOCK)
addReward(19720, 19839, CLASS.DRUID)

--- AQ20 Items
-- Head of Ossirian the Unscarred
addToken(21220)
addReward(21220, 21504, CLASS.NONE)
addReward(21220, 21507, CLASS.NONE)
addReward(21220, 21505, CLASS.NONE)
addReward(21220, 21506, CLASS.NONE)
-- Qiraji Martial Drape
addToken(20885)
addReward(20885, 21406, CLASS.ROGUE)
addReward(20885, 21394, CLASS.WARRIOR)
addReward(20885, 21415, CLASS.MAGE)
addReward(20885, 21412, CLASS.PRIEST)
-- Qiraji Regal Drape
addToken(20889)
addReward(20889, 21397, CLASS.PALADIN)
addReward(20889, 21400, CLASS.SHAMAN)
addReward(20889, 21403, CLASS.HUNTER)
addReward(20889, 21409, CLASS.DRUID)
addReward(20889, 21418, CLASS.WARLOCK)
-- Qiraji Ceremonial Ring
addToken(20888)
addReward(20888, 21405, CLASS.ROGUE)
addReward(20888, 21411, CLASS.PRIEST)
addReward(20888, 21417, CLASS.WARLOCK)
addReward(20888, 21402, CLASS.HUNTER)
-- Qiraji Magisterial Ring
addToken(20884)
addReward(20884, 21408, CLASS.DRUID)
addReward(20884, 21414, CLASS.MAGE)
addReward(20884, 21396, CLASS.PALADIN)
addReward(20884, 21399, CLASS.SHAMAN)
addReward(20884, 21393, CLASS.WARRIOR)
-- Qiraji Ornate Hilt
addToken(20890)
addReward(20890, 21413, CLASS.MAGE)
addReward(20890, 21410, CLASS.PRIEST)
addReward(20890, 21416, CLASS.WARLOCK)
addReward(20890, 21407, CLASS.DRUID)
-- Qiraji Spiked Hilt
addToken(20886)
addReward(20886, 21395, CLASS.PALADIN)
addReward(20886, 21404, CLASS.ROGUE)
addReward(20886, 21398, CLASS.SHAMAN)
addReward(20886, 21401, CLASS.HUNTER)
addReward(20886, 21392, CLASS.WARRIOR)

---- options

local debug = false

--------------------------------------------------------------
---- helper functions
--------------------------------------------------------------

-- print help on how to use the command line
function printHelp()
  print("wrong usage")
  print(format("class warrior: %d", CLASSES.WARRIOR))
end

-- returns an itemString from a given itemLink
function getItemString(itemLink)
  local itemString = string.match(itemLink, "item[%-?%d:]+")
  return itemString
end

-- returns an itemId from a given itemString
function getItemId(itemString)
   local _, itemId = strsplit(":", itemString)
   return tonumber(itemId)
end

-- returns an itemLink from a given itemId
function getItemLink(itemId)
  local _, itemLink = GetItemInfo(itemId)
  return itemLink
end

-- returns all rewards for a given token
function getRewards(tokenID)
  local rewards = TOKEN_DATA[tokenID]
  return rewards
end

-- filters a list of rewards based on character class
function filterRewards(table, filterElement)
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
function handleId(msg, editBox, pattern)
  local itemLink = string.match(msg, pattern)
  local itemId = getItemId(getItemString(itemLink))
  print(format("id: \n%d", itemId))
end

-- get a list of rewards for a given itemLink
function getRewardList(itemLink)
  local itemId = getItemId(getItemString(itemLink))
  local fullRewards = getRewards(itemId)
  if (fullRewards == nil) then
    if (debug) then
      print(format("No Rewards known for this item with id %d. Please report it, if you think there should be one.", itemId))
    end
    return
  end
  local filteredRewards = filterRewards(fullRewards, "player")
  
  local displayRewards = {}
  if (next(filteredRewards) ~= nil) then
    displayRewards = filteredRewards
  else
    --displayRewards = fullRewards
  end

  return displayRewards
end

-- method to handle the "rw" command line
function handleReward(msg, editBox, rwPattern)
  local itemLink = string.match(msg, rwPattern)

  local rewardList = getRewardList(itemLink)
  
  if (debug) then
    print(format("reward lookup for %s:", itemLink))
    for k, v in pairs(rewardList) do
      print(format("%s", getItemLink(k)))
    end
  end
end

-- checks if the given itemId is a token with rewards
function isTokenId(itemId)
  for k, v in pairs(TOKEN_DATA) do
    if(k == itemId) then
      return true
    end
  end
  return false
end

--------------------------------------------------------------
---- CLI
--------------------------------------------------------------

-- command line handler
function handler(msg, editBox)
  local idPattern = "^id%s+(.*)%s*"
  local rwPattern = "^rw%s+(.*)%s*"
  if (msg == "debug") then    
    debug = not debug
    if (debug) then 
      print("debug is now on")
    else 
      print("debug is now off")
    end
  elseif (string.match(msg, idPattern)) then
    handleId(msg, editBox, idPattern)
  elseif (string.match(msg, rwPattern)) then
    handleReward(msg, editBox, rwPattern)
  else
    printHelp()
  end
end

--------------------------------------------------------------
---- UI
--------------------------------------------------------------

-- updates the tooltips if hovering over an item
function OnTooltipSetItem(self)
  local itemName, itemLink = self:GetItem()
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5 }
  -- tooltip order from left to right: 5 - 3 - 1 - 2 - 4
  local tooltipOwner = { self, RewardTooltip1, RewardTooltip1, RewardTooltip2, RewardTooltip3}
  local tooltipAttachmentInner = { "TOPLEFT"   , "TOPLEFT" , "TOPRIGHT", "TOPLEFT" , "TOPRIGHT" }
  local tooltipAttachmentOuter = { "BOTTOMLEFT", "TOPRIGHT", "TOPLEFT" , "TOPRIGHT", "TOPLEFT" }
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
          print(format("hiding frame %d",i))
        end
        tooltips[i]:Hide()
      end
      return
    end
    
    if (debug) then
      print("rewards:")
      for k, v in pairs(rewardList) do
        print(tostring(k))
      end
    end
  
    local i = 1
    for k, v in pairs(rewardList) do
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
    for i = i, #tooltips do
      tooltips[i]:Hide()
    end
  else
    for i = 1, #tooltips do
      tooltips[i]:Hide()
    end
  end
end

-- hide all rewards
function HideTooltips(self, elapsed) 
  HideTooltips(self)
end

-- hide all rewards
function HideTooltips(self) 
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5 }
  for i = 1, #tooltips do
    tooltips[i]:Hide()
  end
end

-- preload the tooltips
function InitializeTooltips(self)
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3, RewardTooltip4, RewardTooltip5 }
  for i = 1, #tooltips do
    tooltips[i]:SetOwner(GameTooltip, "ANCHOR_NONE")
    tooltips[i]:SetHyperlink(getItemLink(18422))
    tooltips[i]:SetScript("OnEnter", function(self, motion) OnEnter(self, motion) end)
  end
  for itemId, value in pairs(TOKEN_DATA) do
    getItemLink(itemId)
  end
end

function OnEnter(self, motion)
  -- do nothing
end

--------------------------------------------------------------
---- handles
--------------------------------------------------------------

SLASH_TOKENREWARDHELPER1 = '/tokenrewardhelper'
SLASH_TOKENREWARDHELPER2 = '/trh'
SlashCmdList["TOKENREWARDHELPER"] = handler

GameTooltip:HookScript("OnLoad", InitializeTooltips)
GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)
GameTooltip:HookScript("OnTooltipSetSpell", HideTooltips)
GameTooltip:HookScript("OnTooltipSetUnit", HideTooltips)
GameTooltip:HookScript("OnTooltipCleared", HideTooltips)
--ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem)

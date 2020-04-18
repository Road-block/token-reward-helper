
--------------------------------------------------------------
---- Data
--------------------------------------------------------------
local TOKEN_DATA = {}

-- Classes:
--   0 = None
--   1 = Warrior
--   2 = Paladin
--   3 = Hunter
--   4 = Rogue
--   5 = Priest
--   6 = Death Knight
--   7 = Shaman
--   8 = Mage
--   9 = Warlock
--  10 = Monk
--  11 = Druid
--  12 = Demon Hunter

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
addReward(18422, 18406, 0)
addReward(18422, 18403, 0)
addReward(18422, 18404, 0)
-- Alliance
addToken(18423)
addReward(18423, 18406, 0)
addReward(18423, 18403, 0)
addReward(18423, 18404, 0)

--- ZG Items
-- Heart of Hakkar
addToken(19802)
addReward(19802, 19948, 0)
addReward(19802, 19950, 0)
addReward(19802, 19949, 0)
-- Primal Hakkari Shawl
addToken(19721)
addReward(19721, 19828, 2)
addReward(19721, 19845, 8)
addReward(19721, 19832, 3)
-- Primal Hakkari Aegis
addToken(19724)
addReward(19724, 19841, 5)
addReward(19724, 19834, 4)
addReward(19724, 19831, 3)
-- Primal Hakkari Kossack
addToken(19723)
addReward(19723, 20033, 9)
addReward(19723, 20034, 2)
addReward(19723, 19822, 1)
-- Primal Hakkari Tabard
addToken(19722)
addReward(19722, 19828, 7)
addReward(19722, 19825, 2)
addReward(19722, 19838, 11)
-- Primal Hakkari Armsplint
addToken(19717)
addReward(19717, 19830, 7)
addReward(19717, 19836, 4)
addReward(19717, 19824, 1)
-- Primal Hakkari Bindings
addToken(19716)
addReward(19716, 19827, 2)
addReward(19716, 19846, 8)
addReward(19716, 19833, 3)
-- Primal Hakkari Stanchion
addToken(19718)
addReward(19718, 19843, 5)
addReward(19718, 19848, 9)
addReward(19718, 19840, 11)
-- Primal Hakkari Girdle
addToken(19719)
addReward(19719, 19829, 7)
addReward(19719, 19835, 4)
addReward(19719, 19823, 1)
-- Primal Hakkari Sash
addToken(19720)
addReward(19720, 19842, 5)
addReward(19720, 19849, 9)
addReward(19720, 19839, 11)

---- options

local debug = false

--------------------------------------------------------------
---- helper functions
--------------------------------------------------------------

-- print help on how to use the command line
function printHelp()
  print("wrong usage")
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
  if (IsShiftKeyDown()) then
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
  if (debug) then
    print(format("itemlink: %s",itemLink))
  end
  if(itemName) then
    local itemId = getItemId(getItemString(itemLink))
    if (debug) then
      print(format("itemid of item in tooltip: %d", itemId))
    end
    --print(RewardTooltip1:getOwner())
    --RewardTooltip1:setOwner(self, "ANCHOR_RIGHT")
    local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3 }
    local rewardList = getRewardList(itemLink)
    if (rewardList == nil or next(rewardList) == nil) then
      for i = 1, 3 do
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
      local owner = self
      if (i == 2) then
        owner = RewardTooltip1
      elseif (i == 3) then
        owner = RewardTooltip1
      else
        owner = self
      end
      tooltips[i]:SetOwner(owner, "ANCHOR_NONE")
      if (i == 1) then
        tooltips[i]:SetPoint("TOPLEFT", owner, "BOTTOMLEFT")
      elseif (i == 2) then
        tooltips[i]:SetPoint("TOPLEFT", owner, "TOPRIGHT")
      else
        tooltips[i]:SetPoint("TOPRIGHT", owner, "TOPLEFT")
      end
      tooltips[i]:SetItemByID(k)
      if (self:IsVisible()) then
        tooltips[i]:Show()
      else
        tooltips[i]:Hide()
      end
      i = i + 1
    end
    for i = i, 3 do
      tooltips[i]:Hide()
    end
  else
    for i = 1, 3 do
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
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3 }
  for i = 1, 3 do
    tooltips[i]:Hide()
  end
end

-- preload the tooltips
function InitializeTooltips(self)
  local tooltips = { RewardTooltip1, RewardTooltip2, RewardTooltip3 }
  for i = 1, 3 do
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

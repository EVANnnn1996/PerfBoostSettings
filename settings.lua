-- Localization: fall back to the English key when no translation is registered.
local L = setmetatable({}, { __index = function(_, k) return k end })

do
	local locale = (GetLocale and GetLocale()) or "enUS"
	local zhCN = {
		-- Chat / notification strings
		["|cffffcc00PerfBoost|cffffaaaa not present hiding settings."] = "|cffffcc00PerfBoost|cffffaaaa 未安装，已隐藏设置菜单。",
		["|cffffcc00PerfBoost:|r enabled"] = "|cffffcc00PerfBoost:|r 已启用",
		["|cffffcc00PerfBoost:|r disabled"] = "|cffffcc00PerfBoost:|r 已禁用",
		["|cffffcc00PerfBoost:|r No target selected"] = "|cffffcc00PerfBoost:|r 未选中任何目标",
		["|cffffcc00PerfBoost:|r %s is already in always render list"] = "|cffffcc00PerfBoost:|r %s 已在始终渲染名单中",
		["|cffffcc00PerfBoost:|r Added %s to always render list"] = "|cffffcc00PerfBoost:|r 已将 %s 添加到始终渲染名单",
		["|cffffcc00PerfBoost:|r %s is already in never render list"] = "|cffffcc00PerfBoost:|r %s 已在从不渲染名单中",
		["|cffffcc00PerfBoost:|r Added %s to never render list"] = "|cffffcc00PerfBoost:|r 已将 %s 添加到从不渲染名单",
		["|cffffcc00PerfBoost:|r Removed %s from always render list"] = "|cffffcc00PerfBoost:|r 已将 %s 从始终渲染名单中移除",
		["|cffffcc00PerfBoost:|r Removed %s from never render list"] = "|cffffcc00PerfBoost:|r 已将 %s 从从不渲染名单中移除",
		["|cffffcc00PerfBoost:|r Cleared always render list"] = "|cffffcc00PerfBoost:|r 已清空始终渲染名单",
		["|cffffcc00PerfBoost:|r Cleared never render list"] = "|cffffcc00PerfBoost:|r 已清空从不渲染名单",
		["|cffffcc00PerfBoost:|r Hide all players enabled"] = "|cffffcc00PerfBoost:|r 已启用「隐藏所有玩家」",
		["|cffffcc00PerfBoost:|r Hide all players disabled"] = "|cffffcc00PerfBoost:|r 已禁用「隐藏所有玩家」",
		["|cffffcc00PerfBoost:|r Show all players enabled"] = "|cffffcc00PerfBoost:|r 已启用「显示所有玩家」",
		["|cffffcc00PerfBoost:|r Show all players disabled"] = "|cffffcc00PerfBoost:|r 已禁用「显示所有玩家」",
		["|cffffcc00PerfBoost:|r Normal player rendering enabled"] = "|cffffcc00PerfBoost:|r 已恢复正常玩家渲染",
		["|cffffcc00PerfBoost:|r Player render distances restored to %s (normal) and %s (combat)"] = "|cffffcc00PerfBoost:|r 玩家渲染距离已恢复为 %s(平时) 和 %s(战斗中)",
		["|cffffcc00PerfBoost:|r Player render distances set to 0 (saved: %s normal, %s combat)"] = "|cffffcc00PerfBoost:|r 玩家渲染距离已设为 0(已保存:平时 %s,战斗中 %s)",
		["|cffffcc00PerfBoost:|r PB_DoodadRenderDist not available"] = "|cffffcc00PerfBoost:|r PB_DoodadRenderDist 不可用",
		["|cffffcc00PerfBoost:|r Doodad render distance set to 0 (hidden)"] = "|cffffcc00PerfBoost:|r 装饰物渲染距离已设为 0(隐藏)",
		["|cffffcc00PerfBoost:|r Doodad render distance set to -1 (always render)"] = "|cffffcc00PerfBoost:|r 装饰物渲染距离已设为 -1(始终渲染)",
		["|cffffcc00PerfBoost:|r Doodad render distance restored to %s"] = "|cffffcc00PerfBoost:|r 装饰物渲染距离已恢复为 %s",

		-- Bindings
		["Toggles whether perfboot is enabled/disabled"] = "切换 PerfBoost 启用/禁用状态",
		["Toggle hide all players (overrides other settings)"] = "切换「隐藏所有玩家」(覆盖其他设置)",
		["Toggle 0 player render distance (hides all players respecting other settings)"] = "将玩家渲染距离切换为 0(在遵循其他设置的前提下隐藏玩家)",
		["Toggle show all players (overrides other settings)"] = "切换「显示所有玩家」(覆盖其他设置)",
		["Cycle player visibility: show all -> hide all -> normal"] = "循环切换玩家可见性:显示全部 -> 隐藏全部 -> 正常",
		["Cycle doodad visibility: current -> hidden -> always render"] = "循环切换装饰物可见性:当前 -> 隐藏 -> 始终渲染",

		-- Top-level toggles
		["Enable Per Character Settings"] = "启用角色专属设置",
		["Whether to use per character settings for all of the PB_ settings.  This will cause settings saved in your character's PerfBoostSettings.lua to override any global settings in Config.wtf."] = "是否为所有 PB_ 设置启用角色专属配置。开启后,保存在该角色 PerfBoostSettings.lua 中的设置会覆盖 Config.wtf 中的全局设置。",
		["Enable Performance Boost"] = "启用性能优化",
		["Enable/disable all performance boost features"] = "启用/禁用所有性能优化功能",
		["Show All Players (Overrides other settings)"] = "显示所有玩家(覆盖其他设置)",
		["Show all players regardless of distance and other render settings.  Has priority over hide all players."] = "无视距离和其他渲染设置显示所有玩家。优先级高于「隐藏所有玩家」。",
		["Hide All Players (Overrides other settings)"] = "隐藏所有玩家(覆盖其他设置)",
		["Hide all players regardless of other render settings"] = "无视其他渲染设置隐藏所有玩家",

		-- Rendering group
		["Rendering Settings"] = "渲染设置",
		["Configure all rendering and visibility options"] = "配置所有渲染和可见性选项",
		["Always Render Raid Marks"] = "始终渲染团队标记",
		["Whether to always render raid marks"] = "是否始终渲染团队标记",
		["Always Render PVP Players"] = "始终渲染 PVP 玩家",
		["Whether to always render players flagged for PVP"] = "是否始终渲染开启 PVP 状态的玩家",
		["Always Render Players With Aggro"] = "始终渲染受到仇恨的玩家",
		["Whether to always render players who have aggro from enemies"] = "是否始终渲染被敌人仇恨的玩家",
		["Always Render Players (ENTER to save)"] = "始终渲染的玩家(按回车保存)",
		["Comma separated list of playernames to always render regardless of other settings"] = "以逗号分隔的玩家名单,无视其他设置始终渲染",
		["Name1,Name2,etc"] = "Name1,Name2,等等",
		["Never Render Players (ENTER to save)"] = "从不渲染的玩家(按回车保存)",
		["Comma separated list of playernames to never render regardless of other settings"] = "以逗号分隔的玩家名单,无视其他设置从不渲染",

		["Player Distances"] = "玩家渲染距离",
		["Default Player Render Distance"] = "默认玩家渲染距离",
		["Max distance to render players when not in combat"] = "非战斗状态下渲染玩家的最大距离",
		["In Combat Player Render Distance"] = "战斗中玩家渲染距离",
		["Max distance to render players when in combat"] = "战斗状态下渲染玩家的最大距离",
		["In Cities Player Render Distance"] = "主城玩家渲染距离",
		["Max distance to render players when in cities"] = "身处主城时渲染玩家的最大距离",

		["Trash Units"] = "普通单位",
		["Default Trash Unit (lvl < 63) Render Distance"] = "默认普通单位(< 63 级)渲染距离",
		["Max distance to render trash units when not in combat"] = "非战斗状态下渲染普通单位的最大距离",
		["In Combat Trash Unit (lvl < 63) Render Distance"] = "战斗中普通单位(< 63 级)渲染距离",
		["Max distance to render trash units when in combat"] = "战斗状态下渲染普通单位的最大距离",

		["Pets & Summons"] = "宠物与召唤物",
		["Default Pet Render Distance"] = "默认宠物渲染距离",
		["Max distance to render pets when not in combat.  Your own pet is always shown."] = "非战斗状态下渲染宠物的最大距离。你自己的宠物始终显示。",
		["In Combat Pet Render Distance"] = "战斗中宠物渲染距离",
		["Max distance to render pets when in combat. Your own pet is always shown."] = "战斗状态下渲染宠物的最大距离。你自己的宠物始终显示。",
		["Default Totem/Guardian Render Distance"] = "默认图腾/守护者渲染距离",
		["Max distance to render unnamed summons when not in combat. Your own totems and guardians are always shown."] = "非战斗状态下渲染无名召唤物的最大距离。你自己的图腾和守护者始终显示。",
		["In Combat Totem/Guardian Render Distance"] = "战斗中图腾/守护者渲染距离",
		["Max distance to render unnamed summons when in combat. Your own totems and guardians are always shown."] = "战斗状态下渲染无名召唤物的最大距离。你自己的图腾和守护者始终显示。",

		["Other Objects"] = "其他物体",
		["Corpse Render Distance (see desc)"] = "尸体渲染距离(参见说明)",
		["Max distance to render corpses.  Won't hide corpses for units >= lvl 63 or any corpses if you have group loot, need before greed or round robin set."] = "渲染尸体的最大距离。不会隐藏 >= 63 级单位的尸体;若你启用了队伍拾取、需求/贪婪或轮流分配,则完全不隐藏尸体。",

		-- Spells group
		["Spell Visual Settings"] = "法术特效设置",
		["Configure spell visual effects and filtering"] = "配置法术特效及其过滤",
		["Show Other Player Spell Visuals"] = "显示其他玩家的法术特效",
		["Whether to show spell visual effects from other players.  This includes spell casts, ranged weapon projectiles, wanding, not sure what else."] = "是否显示其他玩家的法术特效。包括施法、远程武器弹道、法杖攻击等。",
		["Show Other Player Ground Effects"] = "显示其他玩家的地面效果",
		["Whether to show ground effects from players"] = "是否显示玩家的地面效果",
		["Show Other Player Aura Visuals"] = "显示其他玩家的光环特效",
		["Whether to show aura visual effects on players"] = "是否显示玩家身上的光环特效",
		["Show Unit Aura Visuals"] = "显示单位的光环特效",
		["Whether to show aura visual effects on units (NPCs, mobs)"] = "是否显示单位(NPC、怪物)身上的光环特效",
		["Hide Spells for Hidden Players"] = "对被隐藏的玩家一并隐藏法术",
		["Hide spell visuals from players that are hidden due to render distance or other settings"] = "对于因渲染距离或其他设置被隐藏的玩家,同时隐藏其法术特效",
		["Always Hidden Spell IDs (ENTER to save)"] = "始终隐藏的法术 ID(按回车保存)",
		["Comma separated list of spell IDs to hide visuals for"] = "以逗号分隔的法术 ID 列表,其特效将被隐藏",
		["1234,5678,etc"] = "1234,5678,等等",
		["Always Shown Spell IDs (ENTER to save)"] = "始终显示的法术 ID(按回车保存)",
		["Comma separated list of spell IDs to always show visuals for, overriding other settings"] = "以逗号分隔的法术 ID 列表,无视其他设置始终显示其特效",
		["Apply Hidden Spell IDs to Me"] = "对自己应用隐藏法术 ID 列表",
		["Whether to apply the hidden spell IDs list to your own character's spells"] = "是否将隐藏法术 ID 列表应用于你自己的法术",
		["Hide Laggy Boss Spells on Others"] = "隐藏卡顿严重的 BOSS 法术",
		["Curated list of spells for Sapphiron, Gnarlmoon, and Anomalus that will be hidden on other players/units. If you aren't displaying unit auras most of these will already be hidden."] = "针对萨菲隆、Gnarlmoon 和 Anomalus 的精选法术,将在其他玩家/单位身上隐藏。如果你未显示单位光环,其中大部分本就已被隐藏。",
		["Debug Shown Spells"] = "调试已显示的法术",
		["Prints to the log information about each spell being displayed."] = "将每个被显示的法术的信息打印到日志。",

		-- Doodads
		["Doodad/Game Object Render Distance"] = "装饰物/游戏物件渲染距离",
		["Max distance to render doodads. Interactable game objects (chests, doors, quest objects, etc.) are not hidden. Ignored if you are PvP flagged."] = "渲染装饰物的最大距离。可交互物件(宝箱、门、任务物品等)不会被隐藏。若你处于 PvP 状态则此设置被忽略。",
		["Doodad/Game Object Render Distance in Cities and Raids"] = "主城与团队副本中装饰物/游戏物件渲染距离",
		["Max distance to render doodads while in cities and 40 man raids.  Takes priority.  Interactable game objects (chests, doors, quest objects, etc.) are not hidden. Ignored if you are PvP flagged."] = "身处主城和 40 人团队副本时渲染装饰物的最大距离,优先级更高。可交互物件(宝箱、门、任务物品等)不会被隐藏。若你处于 PvP 状态则此设置被忽略。",
	}

	local pack
	if locale == "zhCN" then
		pack = zhCN
	end
	if pack then
		for k, v in pairs(pack) do L[k] = v end
	end
end

-- No PerfBoost v2, no need for settings
local has_perf_boost = pcall(GetCVar, "PB_Enabled")
if not has_perf_boost then
	DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost|cffffaaaa not present hiding settings."])
	return
end

PerfBoost = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceDebug-2.0", "AceModuleCore-2.0", "AceConsole-2.0", "AceDB-2.0", "AceHook-2.1")
PerfBoost:RegisterDB("PerfBoostSettingsDB")
PerfBoost:RegisterDefaults("profile", {
	per_character_settings = false,
	previous_player_render_dist = nil,
	previous_player_render_dist_in_combat = nil,
	previous_doodad_render_dist = nil,
})
PerfBoost.frame = CreateFrame("Frame", "PerfBoost", UIParent)

BINDING_HEADER_PERFBOOST = "PerfBoost";
BINDING_NAME_PERFBOOSTENABLE = L["Toggles whether perfboot is enabled/disabled"];
BINDING_NAME_PBHIDEALLPLAYERS = L["Toggle hide all players (overrides other settings)"];
BINDING_NAME_PBTOGGLEPLAYERRENDERIST = L["Toggle 0 player render distance (hides all players respecting other settings)"];
BINDING_NAME_PBSHOWALLPLAYERS = L["Toggle show all players (overrides other settings)"];
BINDING_NAME_PBCYCLEPLAYERVISIBILITY = L["Cycle player visibility: show all -> hide all -> normal"];
BINDING_NAME_PBCYCLEDOODADVISIBILITY = L["Cycle doodad visibility: current -> hidden -> always render"];

-- used when turning on per character settings
function PerfBoost:SavePerCharacterSettings()
	local function saveNestedSettings(args)
		for settingKey, settingData in pairs(args) do
			if string.find(settingKey, "PB_") == 1 and settingData.get and settingData.set then
				settingData.set(settingData.get()) -- trigger the set function for each setting with the current value
			elseif settingData.args then
				saveNestedSettings(settingData.args)
			end
		end
	end
	saveNestedSettings(PerfBoost.cmdtable.args)
end

function PerfBoost:ApplySavedSettings()
	local function applyNestedSettings(args)
		for settingKey, settingData in pairs(args) do
			if string.find(settingKey, "PB_") == 1 and settingData.set then
				if PerfBoost.db.profile[settingKey] ~= nil then
					settingData.set(PerfBoost.db.profile[settingKey])
				end
			elseif settingData.args then
				applyNestedSettings(settingData.args)
			end
		end
	end
	applyNestedSettings(PerfBoost.cmdtable.args)
end

function PerfBoost:OnEnable()
	-- if per character settings are enabled, apply them
	if PerfBoost.db.profile.per_character_settings then
		PerfBoost:ApplySavedSettings()
	end
end

PerfBoost.cmdtable = {
	type = "group",
	handler = PerfBoost,
	args = {
		per_character_settings = {
			type = "toggle",
			name = L["Enable Per Character Settings"],
			desc = L["Whether to use per character settings for all of the PB_ settings.  This will cause settings saved in your character's PerfBoostSettings.lua to override any global settings in Config.wtf."],
			order = 1,
			get = function()
				return PerfBoost.db.profile.per_character_settings
			end,
			set = function(v)
				if v ~= PerfBoost.db.profile.per_character_settings then
					PerfBoost.db.profile.per_character_settings = v
					if v == true then
						PerfBoost:SavePerCharacterSettings()
					end
				end
			end,
		},
		PB_Enabled = {
			type = "toggle",
			name = L["Enable Performance Boost"],
			desc = L["Enable/disable all performance boost features"],
			order = 5,
			get = function()
				return GetCVar("PB_Enabled") == "1"
			end,
			set = function(v)
				PerfBoost.db.profile.PB_Enabled = v
				if v == true then
					SetCVar("PB_Enabled", "1")
				else
					SetCVar("PB_Enabled", "0")
				end
			end,
		},

		PB_ShowAllPlayers = {
			type = "toggle",
			name = L["Show All Players (Overrides other settings)"],
			desc = L["Show all players regardless of distance and other render settings.  Has priority over hide all players."],
			order = 6,
			get = function()
				return GetCVar("PB_ShowAllPlayers") == "1"
			end,
			set = function(v)
				PerfBoost.db.profile.PB_ShowAllPlayers = v
				if v == true then
					SetCVar("PB_ShowAllPlayers", "1")
				else
					SetCVar("PB_ShowAllPlayers", "0")
				end
			end,
		},

		PB_HideAllPlayers = {
			type = "toggle",
			name = L["Hide All Players (Overrides other settings)"],
			desc = L["Hide all players regardless of other render settings"],
			order = 7,
			get = function()
				return GetCVar("PB_HideAllPlayers") == "1"
			end,
			set = function(v)
				PerfBoost.db.profile.PB_HideAllPlayers = v
				if v == true then
					SetCVar("PB_HideAllPlayers", "1")
				else
					SetCVar("PB_HideAllPlayers", "0")
				end
			end,
		},

		spacera = {
			type = "header",
			name = " ",
			order = 10,
		},

		rendering = {
			type = "group",
			name = L["Rendering Settings"],
			desc = L["Configure all rendering and visibility options"],
			order = 15,
			args = {
				PB_AlwaysRenderRaidMarks = {
					type = "toggle",
					name = L["Always Render Raid Marks"],
					desc = L["Whether to always render raid marks"],
					order = 1,
					get = function()
						return GetCVar("PB_AlwaysRenderRaidMarks") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_AlwaysRenderRaidMarks = v
						if v == true then
							SetCVar("PB_AlwaysRenderRaidMarks", "1")
						else
							SetCVar("PB_AlwaysRenderRaidMarks", "0")
						end
					end,
				},

				PB_AlwaysRenderPVP = {
					type = "toggle",
					name = L["Always Render PVP Players"],
					desc = L["Whether to always render players flagged for PVP"],
					order = 2,
					get = function()
						return GetCVar("PB_AlwaysRenderPVP") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_AlwaysRenderPVP = v
						if v == true then
							SetCVar("PB_AlwaysRenderPVP", "1")
						else
							SetCVar("PB_AlwaysRenderPVP", "0")
						end
					end,
				},

				PB_AlwaysRenderPlayersWithAggro = {
					type = "toggle",
					name = L["Always Render Players With Aggro"],
					desc = L["Whether to always render players who have aggro from enemies"],
					order = 3,
					get = function()
						return GetCVar("PB_AlwaysRenderPlayersWithAggro") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_AlwaysRenderPlayersWithAggro = v
						if v == true then
							SetCVar("PB_AlwaysRenderPlayersWithAggro", "1")
						else
							SetCVar("PB_AlwaysRenderPlayersWithAggro", "0")
						end
					end,
				},

				PB_AlwaysRenderPlayers = {
					type = "text",
					name = L["Always Render Players (ENTER to save)"],
					desc = L["Comma separated list of playernames to always render regardless of other settings"],
					usage = L["Name1,Name2,etc"],
					order = 4,
					get = function()
						return GetCVar("PB_AlwaysRenderPlayers") or ""
					end,
					set = function(v)
						PerfBoost.db.profile.PB_AlwaysRenderPlayers = v
						SetCVar("PB_AlwaysRenderPlayers", v)
					end,
				},

				PB_NeverRenderPlayers = {
					type = "text",
					name = L["Never Render Players (ENTER to save)"],
					desc = L["Comma separated list of playernames to never render regardless of other settings"],
					usage = L["Name1,Name2,etc"],
					order = 5,
					get = function()
						return GetCVar("PB_NeverRenderPlayers") or ""
					end,
					set = function(v)
						PerfBoost.db.profile.PB_NeverRenderPlayers = v
						SetCVar("PB_NeverRenderPlayers", v)
					end,
				},

				spacer_player = {
					type = "header",
					name = L["Player Distances"],
					order = 10,
				},

				PB_PlayerRenderDist = {
					type = "range",
					name = L["Default Player Render Distance"],
					desc = L["Max distance to render players when not in combat"],
					order = 11,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_PlayerRenderDist")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_PlayerRenderDist = v
						SetCVar("PB_PlayerRenderDist", tostring(v))
					end,
				},
				PB_PlayerRenderDistInCombat = {
					type = "range",
					name = L["In Combat Player Render Distance"],
					desc = L["Max distance to render players when in combat"],
					order = 12,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_PlayerRenderDistInCombat")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_PlayerRenderDistInCombat = v
						SetCVar("PB_PlayerRenderDistInCombat", tostring(v))
					end,
				},
				PB_PlayerRenderDistInCities = {
					type = "range",
					name = L["In Cities Player Render Distance"],
					desc = L["Max distance to render players when in cities"],
					order = 13,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_PlayerRenderDistInCities")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_PlayerRenderDistInCities = v
						SetCVar("PB_PlayerRenderDistInCities", tostring(v))
					end,
				},

				spacer_trash = {
					type = "header",
					name = L["Trash Units"],
					order = 20,
				},

				PB_TrashUnitRenderDist = {
					type = "range",
					name = L["Default Trash Unit (lvl < 63) Render Distance"],
					desc = L["Max distance to render trash units when not in combat"],
					order = 21,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_TrashUnitRenderDist")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_TrashUnitRenderDist = v
						SetCVar("PB_TrashUnitRenderDist", tostring(v))
					end,
				},
				PB_TrashUnitRenderDistInCombat = {
					type = "range",
					name = L["In Combat Trash Unit (lvl < 63) Render Distance"],
					desc = L["Max distance to render trash units when in combat"],
					order = 22,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_TrashUnitRenderDistInCombat")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_TrashUnitRenderDistInCombat = v
						SetCVar("PB_TrashUnitRenderDistInCombat", tostring(v))
					end,
				},

				spacer_pets = {
					type = "header",
					name = L["Pets & Summons"],
					order = 30,
				},

				PB_PetRenderDist = {
					type = "range",
					name = L["Default Pet Render Distance"],
					desc = L["Max distance to render pets when not in combat.  Your own pet is always shown."],
					order = 31,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_PetRenderDist")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_PetRenderDist = v
						SetCVar("PB_PetRenderDist", tostring(v))
					end,
				},
				PB_PetRenderDistInCombat = {
					type = "range",
					name = L["In Combat Pet Render Distance"],
					desc = L["Max distance to render pets when in combat. Your own pet is always shown."],
					order = 32,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_PetRenderDistInCombat")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_PetRenderDistInCombat = v
						SetCVar("PB_PetRenderDistInCombat", tostring(v))
					end,
				},

				PB_SummonRenderDist = {
					type = "range",
					name = L["Default Totem/Guardian Render Distance"],
					desc = L["Max distance to render unnamed summons when not in combat. Your own totems and guardians are always shown."],
					order = 33,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_SummonRenderDist")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_SummonRenderDist = v
						SetCVar("PB_SummonRenderDist", tostring(v))
					end,
				},
				PB_SummonRenderDistInCombat = {
					type = "range",
					name = L["In Combat Totem/Guardian Render Distance"],
					desc = L["Max distance to render unnamed summons when in combat. Your own totems and guardians are always shown."],
					order = 34,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_SummonRenderDistInCombat")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_SummonRenderDistInCombat = v
						SetCVar("PB_SummonRenderDistInCombat", tostring(v))
					end,
				},

				spacer_corpse = {
					type = "header",
					name = L["Other Objects"],
					order = 40,
				},

				PB_CorpseRenderDist = {
					type = "range",
					name = L["Corpse Render Distance (see desc)"],
					desc = L["Max distance to render corpses.  Won't hide corpses for units >= lvl 63 or any corpses if you have group loot, need before greed or round robin set."],
					order = 41,
					min = -1,
					max = 100,
					step = 1,
					get = function()
						local val = GetCVar("PB_CorpseRenderDist")
						return val and tonumber(val) or 0
					end,
					set = function(v)
						PerfBoost.db.profile.PB_CorpseRenderDist = v
						SetCVar("PB_CorpseRenderDist", tostring(v))
					end,
				},

			},
		},

		spells = {
			type = "group",
			name = L["Spell Visual Settings"],
			desc = L["Configure spell visual effects and filtering"],
			order = 20,
			args = {
				PB_ShowPlayerSpellVisuals = {
					type = "toggle",
					name = L["Show Other Player Spell Visuals"],
					desc = L["Whether to show spell visual effects from other players.  This includes spell casts, ranged weapon projectiles, wanding, not sure what else."],
					order = 1,
					get = function()
						return GetCVar("PB_ShowPlayerSpellVisuals") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_ShowPlayerSpellVisuals = v
						if v == true then
							SetCVar("PB_ShowPlayerSpellVisuals", "1")
						else
							SetCVar("PB_ShowPlayerSpellVisuals", "0")
						end
					end,
				},

				PB_ShowPlayerGroundEffects = {
					type = "toggle",
					name = L["Show Other Player Ground Effects"],
					desc = L["Whether to show ground effects from players"],
					order = 2,
					get = function()
						return GetCVar("PB_ShowPlayerGroundEffects") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_ShowPlayerGroundEffects = v
						if v == true then
							SetCVar("PB_ShowPlayerGroundEffects", "1")
						else
							SetCVar("PB_ShowPlayerGroundEffects", "0")
						end
					end,
				},

				PB_ShowPlayerAuraVisuals = {
					type = "toggle",
					name = L["Show Other Player Aura Visuals"],
					desc = L["Whether to show aura visual effects on players"],
					order = 3,
					get = function()
						return GetCVar("PB_ShowPlayerAuraVisuals") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_ShowPlayerAuraVisuals = v
						if v == true then
							SetCVar("PB_ShowPlayerAuraVisuals", "1")
						else
							SetCVar("PB_ShowPlayerAuraVisuals", "0")
						end
					end,
				},

				PB_ShowUnitAuraVisuals = {
					type = "toggle",
					name = L["Show Unit Aura Visuals"],
					desc = L["Whether to show aura visual effects on units (NPCs, mobs)"],
					order = 4,
					get = function()
						return GetCVar("PB_ShowUnitAuraVisuals") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_ShowUnitAuraVisuals = v
						if v == true then
							SetCVar("PB_ShowUnitAuraVisuals", "1")
						else
							SetCVar("PB_ShowUnitAuraVisuals", "0")
						end
					end,
				},

				PB_HideSpellsForHiddenPlayers = {
					type = "toggle",
					name = L["Hide Spells for Hidden Players"],
					desc = L["Hide spell visuals from players that are hidden due to render distance or other settings"],
					order = 5,
					get = function()
						return GetCVar("PB_HideSpellsForHiddenPlayers") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_HideSpellsForHiddenPlayers = v
						if v == true then
							SetCVar("PB_HideSpellsForHiddenPlayers", "1")
						else
							SetCVar("PB_HideSpellsForHiddenPlayers", "0")
						end
					end,
				},

				spacer_spells = {
					type = "header",
					order = 10,
				},

				PB_HiddenSpellIds = {
					type = "text",
					name = L["Always Hidden Spell IDs (ENTER to save)"],
					desc = L["Comma separated list of spell IDs to hide visuals for"],
					usage = L["1234,5678,etc"],
					order = 11,
					get = function()
						return GetCVar("PB_HiddenSpellIds") or ""
					end,
					set = function(v)
						PerfBoost.db.profile.PB_HiddenSpellIds = v
						SetCVar("PB_HiddenSpellIds", v)
					end,
				},

				PB_AlwaysShownSpellIds = {
					type = "text",
					name = L["Always Shown Spell IDs (ENTER to save)"],
					desc = L["Comma separated list of spell IDs to always show visuals for, overriding other settings"],
					usage = L["1234,5678,etc"],
					order = 12,
					get = function()
						return GetCVar("PB_AlwaysShownSpellIds") or ""
					end,
					set = function(v)
						PerfBoost.db.profile.PB_AlwaysShownSpellIds = v
						SetCVar("PB_AlwaysShownSpellIds", v)
					end,
				},

				PB_ApplyHiddenSpellIdsToMe = {
					type = "toggle",
					name = L["Apply Hidden Spell IDs to Me"],
					desc = L["Whether to apply the hidden spell IDs list to your own character's spells"],
					order = 13,
					get = function()
						return GetCVar("PB_ApplyHiddenSpellIdsToMe") == "1"
					end,
					set = function(v)
						PerfBoost.db.profile.PB_ApplyHiddenSpellIdsToMe = v
						if v == true then
							SetCVar("PB_ApplyHiddenSpellIdsToMe", "1")
						else
							SetCVar("PB_ApplyHiddenSpellIdsToMe", "0")
						end
					end,
				},

				spacer_debug = {
					type = "header",
					name = " ",
					order = 20,
				},
			},
		},

	},
}

local deuce = PerfBoost:NewModule("PerfBoost Options Menu")
deuce.hasFuBar = IsAddOnLoaded("FuBar") and FuBar
deuce.consoleCmd = not deuce.hasFuBar

PerfBoostOptions = AceLibrary("AceAddon-2.0"):new("AceDB-2.0", "FuBarPlugin-2.0")
PerfBoostOptions.name = "FuBar - PerfBoost"
PerfBoostOptions.hasIcon = "Interface\\Icons\\Spell_Nature_Strength"
PerfBoostOptions.defaultMinimapPosition = 180
PerfBoostOptions.independentProfile = true
PerfBoostOptions.hideWithoutStandby = false

PerfBoostOptions.OnMenuRequest = PerfBoost.cmdtable
local args = AceLibrary("FuBarPlugin-2.0"):GetAceOptionsDataTable(PerfBoostOptions)
for k, v in pairs(args) do
	if PerfBoostOptions.OnMenuRequest.args[k] == nil then
		PerfBoostOptions.OnMenuRequest.args[k] = v
	end
end

SLASH_PBENABLE1, SLASH_PBENABLE2 = '/pbenable', '/perfboostenable'
function SlashCmdList.PBENABLE(msg, editbox)
	local v = not (GetCVar("PB_Enabled") == "1")
	PerfBoost.db.profile.PB_Enabled = v
	if v == true then
		SetCVar("PB_Enabled", "1")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r enabled"])
	else
		SetCVar("PB_Enabled", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r disabled"])
	end
end

SLASH_PBALWAYSRENDER1, SLASH_PBALWAYSRENDER2 = '/pbalwaysrender', '/pbar'
function SlashCmdList.PBALWAYSRENDER(msg, editbox)
	local target = UnitName("target")
	if not target then
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r No target selected"])
		return
	end
	
	local current = GetCVar("PB_AlwaysRenderPlayers") or ""
	local names = {}
	if current ~= "" then
		for name in string.gfind(current, "([^,]+)") do
			name = string.gsub(name, "^%s*(.-)%s*$", "%1")
			if name ~= "" then
				names[name] = true
			end
		end
	end
	
	if names[target] then
		DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r %s is already in always render list"], target))
		return
	end
	
	names[target] = true
	local newList = ""
	for name in pairs(names) do
		if newList == "" then
			newList = name
		else
			newList = newList .. "," .. name
		end
	end
	
	PerfBoost.db.profile.PB_AlwaysRenderPlayers = newList
	SetCVar("PB_AlwaysRenderPlayers", newList)
	DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Added %s to always render list"], target))
end

SLASH_PBNEVERRENDER1, SLASH_PBNEVERRENDER2 = '/pbneverrender', '/pbnr'
function SlashCmdList.PBNEVERRENDER(msg, editbox)
	local target = UnitName("target")
	if not target then
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r No target selected"])
		return
	end
	
	local current = GetCVar("PB_NeverRenderPlayers") or ""
	local names = {}
	if current ~= "" then
		for name in string.gfind(current, "([^,]+)") do
			name = string.gsub(name, "^%s*(.-)%s*$", "%1")
			if name ~= "" then
				names[name] = true
			end
		end
	end
	
	if names[target] then
		DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r %s is already in never render list"], target))
		return
	end
	
	names[target] = true
	local newList = ""
	for name in pairs(names) do
		if newList == "" then
			newList = name
		else
			newList = newList .. "," .. name
		end
	end
	
	PerfBoost.db.profile.PB_NeverRenderPlayers = newList
	SetCVar("PB_NeverRenderPlayers", newList)
	DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Added %s to never render list"], target))
end

SLASH_PBALWAYSRENDERREMOVE1, SLASH_PBALWAYSRENDERREMOVE2 = '/pbalwaysrenderremove', '/pbarr'
function SlashCmdList.PBALWAYSRENDERREMOVE(msg, editbox)
	local target = UnitName("target")
	if not target then
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r No target selected"])
		return
	end
	
	local current = GetCVar("PB_AlwaysRenderPlayers") or ""
	local names = {}
	if current ~= "" then
		for name in string.gfind(current, "([^,]+)") do
			name = string.gsub(name, "^%s*(.-)%s*$", "%1")
			if name ~= "" and name ~= target then
				names[name] = true
			end
		end
	end
	
	local newList = ""
	for name in pairs(names) do
		if newList == "" then
			newList = name
		else
			newList = newList .. "," .. name
		end
	end
	
	PerfBoost.db.profile.PB_AlwaysRenderPlayers = newList
	SetCVar("PB_AlwaysRenderPlayers", newList)
	DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Removed %s from always render list"], target))
end

SLASH_PBNEVERRENDERREMOVE1, SLASH_PBNEVERRENDERREMOVE2 = '/pbneverrenderremove', '/pbnrr'
function SlashCmdList.PBNEVERRENDERREMOVE(msg, editbox)
	local target = UnitName("target")
	if not target then
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r No target selected"])
		return
	end
	
	local current = GetCVar("PB_NeverRenderPlayers") or ""
	local names = {}
	if current ~= "" then
		for name in string.gfind(current, "([^,]+)") do
			name = string.gsub(name, "^%s*(.-)%s*$", "%1")
			if name ~= "" and name ~= target then
				names[name] = true
			end
		end
	end
	
	local newList = ""
	for name in pairs(names) do
		if newList == "" then
			newList = name
		else
			newList = newList .. "," .. name
		end
	end
	
	PerfBoost.db.profile.PB_NeverRenderPlayers = newList
	SetCVar("PB_NeverRenderPlayers", newList)
	DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Removed %s from never render list"], target))
end

SLASH_PBALWAYSRENDERCLEAR1, SLASH_PBALWAYSRENDERCLEAR2 = '/pbalwaysrenderclear', '/pbarc'
function SlashCmdList.PBALWAYSRENDERCLEAR(msg, editbox)
	PerfBoost.db.profile.PB_AlwaysRenderPlayers = ""
	SetCVar("PB_AlwaysRenderPlayers", "")
	DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Cleared always render list"])
end

SLASH_PBNEVERRENDERCLEAR1, SLASH_PBNEVERRENDERCLEAR2 = '/pbneverrenderclear', '/pbnrc'
function SlashCmdList.PBNEVERRENDERCLEAR(msg, editbox)
	PerfBoost.db.profile.PB_NeverRenderPlayers = ""
	SetCVar("PB_NeverRenderPlayers", "")
	DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Cleared never render list"])
end

SLASH_PBHIDEALLPLAYERS1, SLASH_PBHIDEALLPLAYERS2 = '/pbhideallplayers', '/pbhap'
function SlashCmdList.PBHIDEALLPLAYERS(msg, editbox)
	local v = not (GetCVar("PB_HideAllPlayers") == "1")
	PerfBoost.db.profile.PB_HideAllPlayers = v
	if v == true then
		SetCVar("PB_HideAllPlayers", "1")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Hide all players enabled"])
	else
		SetCVar("PB_HideAllPlayers", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Hide all players disabled"])
	end
end

SLASH_PBSHOWALLPLAYERS1, SLASH_PBSHOWALLPLAYERS2 = '/pbshowallplayers', '/pbsap'
function SlashCmdList.PBSHOWALLPLAYERS(msg, editbox)
	local v = not (GetCVar("PB_ShowAllPlayers") == "1")
	PerfBoost.db.profile.PB_ShowAllPlayers = v
	if v == true then
		SetCVar("PB_ShowAllPlayers", "1")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Show all players enabled"])
	else
		SetCVar("PB_ShowAllPlayers", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Show all players disabled"])
	end
end

SLASH_PBCYCLEPLAYERVISIBILITY1, SLASH_PBCYCLEPLAYERVISIBILITY2 = '/pbcycleplayervisibility', '/pbcycle'
function SlashCmdList.PBCYCLEPLAYERVISIBILITY(msg, editbox)
	local showAll = GetCVar("PB_ShowAllPlayers") == "1"
	local hideAll = GetCVar("PB_HideAllPlayers") == "1"
	
	if not showAll and not hideAll then
		-- Normal -> Show All
		PerfBoost.db.profile.PB_ShowAllPlayers = true
		PerfBoost.db.profile.PB_HideAllPlayers = false
		SetCVar("PB_ShowAllPlayers", "1")
		SetCVar("PB_HideAllPlayers", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Show all players enabled"])
	elseif showAll and not hideAll then
		-- Show All -> Hide All
		PerfBoost.db.profile.PB_ShowAllPlayers = false
		PerfBoost.db.profile.PB_HideAllPlayers = true
		SetCVar("PB_ShowAllPlayers", "0")
		SetCVar("PB_HideAllPlayers", "1")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Hide all players enabled"])
	else
		-- Hide All (or both) -> Normal
		PerfBoost.db.profile.PB_ShowAllPlayers = false
		PerfBoost.db.profile.PB_HideAllPlayers = false
		SetCVar("PB_ShowAllPlayers", "0")
		SetCVar("PB_HideAllPlayers", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Normal player rendering enabled"])
	end
end

SLASH_PBTOGGLEPLAYERRENDERIST1, SLASH_PBTOGGLEPLAYERRENDERIST2 = '/pbtoggleplayerrenderist', '/pbtrd'
function SlashCmdList.PBTOGGLEPLAYERRENDERIST(msg, editbox)
	local currentDist = PerfBoost.db.profile.PB_PlayerRenderDist
	local currentDistInCombat = PerfBoost.db.profile.PB_PlayerRenderDistInCombat

	if PerfBoost.db.profile.previous_player_render_dist ~= nil then
		-- restore previous values
		local restoreValue = PerfBoost.db.profile.previous_player_render_dist
		local restoreValueInCombat = PerfBoost.db.profile.previous_player_render_dist_in_combat
		PerfBoost.db.profile.PB_PlayerRenderDist = restoreValue
		PerfBoost.db.profile.PB_PlayerRenderDistInCombat = restoreValueInCombat
		SetCVar("PB_PlayerRenderDist", tostring(restoreValue))
		SetCVar("PB_PlayerRenderDistInCombat", tostring(restoreValueInCombat))
		DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Player render distances restored to %s (normal) and %s (combat)"], tostring(restoreValue), tostring(restoreValueInCombat)))
		PerfBoost.db.profile.previous_player_render_dist = nil
		PerfBoost.db.profile.previous_player_render_dist_in_combat = nil
	else
		-- Save current values and set both to 0
		PerfBoost.db.profile.previous_player_render_dist = currentDist
		PerfBoost.db.profile.previous_player_render_dist_in_combat = currentDistInCombat
		PerfBoost.db.profile.PB_PlayerRenderDist = 0
		PerfBoost.db.profile.PB_PlayerRenderDistInCombat = 0
		SetCVar("PB_PlayerRenderDist", "0")
		SetCVar("PB_PlayerRenderDistInCombat", "0")
		DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Player render distances set to 0 (saved: %s normal, %s combat)"], tostring(currentDist), tostring(currentDistInCombat)))
	end
end

SLASH_PBCYCLEDOODADVISIBILITY1, SLASH_PBCYCLEDOODADVISIBILITY2 = '/pbcycledoodadvisibility', '/pbcycledoodads'
function SlashCmdList.PBCYCLEDOODADVISIBILITY(msg, editbox)
	local has_doodad = pcall(GetCVar, "PB_DoodadRenderDist")
	if not has_doodad then
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r PB_DoodadRenderDist not available"])
		return
	end

	local currentDist = tonumber(GetCVar("PB_DoodadRenderDist")) or 0

	if PerfBoost.db.profile.previous_doodad_render_dist == nil then
		-- Normal -> 0 (hide doodads)
		PerfBoost.db.profile.previous_doodad_render_dist = currentDist
		PerfBoost.db.profile.PB_DoodadRenderDist = 0
		SetCVar("PB_DoodadRenderDist", "0")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Doodad render distance set to 0 (hidden)"])
	elseif currentDist == 0 then
		-- 0 -> -1 (always render)
		PerfBoost.db.profile.PB_DoodadRenderDist = -1
		SetCVar("PB_DoodadRenderDist", "-1")
		DEFAULT_CHAT_FRAME:AddMessage(L["|cffffcc00PerfBoost:|r Doodad render distance set to -1 (always render)"])
	else
		-- -1 (or any other state) -> restore previous
		local restoreValue = PerfBoost.db.profile.previous_doodad_render_dist
		PerfBoost.db.profile.PB_DoodadRenderDist = restoreValue
		SetCVar("PB_DoodadRenderDist", tostring(restoreValue))
		DEFAULT_CHAT_FRAME:AddMessage(string.format(L["|cffffcc00PerfBoost:|r Doodad render distance restored to %s"], tostring(restoreValue)))
		PerfBoost.db.profile.previous_doodad_render_dist = nil
	end
end

-- Conditionally add new CVars if they exist (for compatibility with older DLL versions)
local has_laggy_boss_spells = pcall(GetCVar, "PB_HideLaggyBossSpellsOnOthers")
if has_laggy_boss_spells then
	PerfBoost.cmdtable.args.spells.args.PB_HideLaggyBossSpellsOnOthers = {
		type = "toggle",
		name = L["Hide Laggy Boss Spells on Others"],
		desc = L["Curated list of spells for Sapphiron, Gnarlmoon, and Anomalus that will be hidden on other players/units. If you aren't displaying unit auras most of these will already be hidden."],
		order = 6,
		get = function()
			return GetCVar("PB_HideLaggyBossSpellsOnOthers") == "1"
		end,
		set = function(v)
			PerfBoost.db.profile.PB_HideLaggyBossSpellsOnOthers = v
			if v == true then
				SetCVar("PB_HideLaggyBossSpellsOnOthers", "1")
			else
				SetCVar("PB_HideLaggyBossSpellsOnOthers", "0")
			end
		end,
	}
end

local has_debug_shown_spells = pcall(GetCVar, "PB_DebugShownSpells")
if has_debug_shown_spells then
	PerfBoost.cmdtable.args.spells.args.PB_DebugShownSpells = {
		type = "toggle",
		name = L["Debug Shown Spells"],
		desc = L["Prints to the log information about each spell being displayed."],
		order = 21,
		get = function()
			return GetCVar("PB_DebugShownSpells") == "1"
		end,
		set = function(v)
			PerfBoost.db.profile.PB_DebugShownSpells = v
			if v == true then
				SetCVar("PB_DebugShownSpells", "1")
			else
				SetCVar("PB_DebugShownSpells", "0")
			end
		end,
	}
end

local has_doodad_render_dist = pcall(GetCVar, "PB_DoodadRenderDist")
if has_doodad_render_dist then
	PerfBoost.cmdtable.args.rendering.args.PB_DoodadRenderDist = {
		type = "range",
		name = L["Doodad/Game Object Render Distance"],
		desc = L["Max distance to render doodads. Interactable game objects (chests, doors, quest objects, etc.) are not hidden. Ignored if you are PvP flagged."],
		order = 42,
		min = -1,
		max = 100,
		step = 1,
		get = function()
			local val = GetCVar("PB_DoodadRenderDist")
			return val and tonumber(val) or 0
		end,
		set = function(v)
			PerfBoost.db.profile.PB_DoodadRenderDist = v
			SetCVar("PB_DoodadRenderDist", tostring(v))
		end,
		}
end

local has_doodad_render_dist_in_cities_and_raids = pcall(GetCVar, "PB_DoodadRenderDistInCitiesAndRaids")
if has_doodad_render_dist_in_cities_and_raids then
	PerfBoost.cmdtable.args.rendering.args.PB_DoodadRenderDistInCitiesAndRaids = {
		type = "range",
		name = L["Doodad/Game Object Render Distance in Cities and Raids"],
		desc = L["Max distance to render doodads while in cities and 40 man raids.  Takes priority.  Interactable game objects (chests, doors, quest objects, etc.) are not hidden. Ignored if you are PvP flagged."],
		order = 43,
		min = -1,
		max = 100,
		step = 1,
		get = function()
			local val = GetCVar("PB_DoodadRenderDistInCitiesAndRaids")
			return val and tonumber(val) or 0
		end,
		set = function(v)
			PerfBoost.db.profile.PB_DoodadRenderDistInCitiesAndRaids = v
			SetCVar("PB_DoodadRenderDistInCitiesAndRaids", tostring(v))
		end,
	}
end

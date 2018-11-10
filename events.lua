
local myMod = ...

function QuestRewardResources(resources)
	return {
		DataType = "QUEST_REWARD_RESOURCES",
		ResourceCollection = resources
	}
end

function QuestRewardInfluence(influence)
	return {
		DataType = "QUEST_REWARD_INFLUENCE",
		EstateInfluence = influence
	}
end


myMod:register({
	DataType = "QUEST",
	Id = "SUPER_QUEST",
	Name = "THE_GREAT_QUEST",
	Description = "THE_GREAT_QUEST",
	QuestFunction = {
		DataType = "QUEST_FUNCTION_DELIVER_RESOURCES",
		Estate = "KINGDOM",
		ResourceListToDeliver = {{ Resource = "WOOD", Quantity = 10 }},
		DaysCount = 60
	},
	QuestRewardList = {
		QuestRewardResources({{ Resource = "WOOD", Quantity = 5 }})
	}
})


--[[
	QuestRewardList = {
		QuestRewardResources({{ Resource = "WOOD", Quantity = 5 }})
	}
	
	QuestRewardList = {
    QuestRewardInfluence({{ Estate = "CLERGY", Quantity = 20.0 }})
	}
--]]

myMod:register({
	DataType = "EVENT",
	Id = "TOLAKRAM_EVENT",
	Title = "TOLAKRAM_EVENT_TITLE",
	Description = "TOLAKRAM_EVENT_DESC",
	PanelVisual = "ILLUSTRATION_ESTATE_KING",
	Delay = 0,
	ConditionList = {
		{
			DataType = "EVENT_CONDITION_BUILDING_BUILT",
			ResBuilding = "BUILDING_WOODCUTTER_CAMP"
		}
	},
	ActionList = {
		{
			DataType = "EVENT_ACTION_GIVE_QUEST",
			ShortName = "TOLAKRAM_EVENT_ACCEPT_QUEST",
			EstateInfluenceModifierList = {},
			CallbackEvent = "",
			Quest = "TOLAKRAM_QUEST",
			OnSuccessEvent = "",
			OnFailEvent = ""
		},
		{
			DataType = "EVENT_ACTION_IGNORE",
			ShortName = "KINGDOM_DECLINE",
		}
	}
})


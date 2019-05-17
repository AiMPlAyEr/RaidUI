--namespace
RUI = {}

--namespace variables
RUI.name = "RaidUI"
RUI.author = "AiMPlAyEr"
RUI.version = 1

--savedvariables settings
RUI.savedversion = 1
RUI.savedname = "RaidUISaved"


function RUI.OnAddOnLoaded(event, addonName)
    if addonName ~= RUI.name then return; end

    RUI.LoadGroup()
    RUI.UnregisterOldEvents()
end 

function RUI.LoadGroup()
    local groupSize = GetGroupSize()

    for i = 1, groupSize do
        local unitTag = "group" .. i
        if DoesUnitExist(unitTag) then
            RUI.New
        else
            UI.SetHidden(unitTag, true)
        end
      end
end

function RUI.UnregisterOldEvents() 

end

EVENT_MANAGER:RegisterForEvent(RUI.name, EVENT_ADD_ON_LOADED, RUI.OnAddOnLoaded)
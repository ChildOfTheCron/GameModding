--[[
Title: loadinglore
Author: HoboMechanistic
Date: 05/03/2023
Repository: https://github.com/HoboMechanistic/GameModding
]]--

-- Local vars we need (see localization for details)
local mod = get_mod("loadinglore")
local lore_loading_hints = {
	"lore_text_1",
	"lore_text_2",
    "lore_text_3",
    "lore_text_4",
    "lore_text_5",
    "lore_text_6",
    "lore_text_7",
    "lore_text_8",
    "lore_text_9",
    "lore_text_10"
}
local pos_loading_hints = {
	"pos_text_1",
	"pos_text_2",
    "pos_text_3",
    "pos_text_4",
    "pos_text_5",
    "pos_text_6",
    "pos_text_7",
    "pos_text_8",
    "pos_text_9",
    "pos_text_10",
    "pos_text_11",
    "pos_text_12",
    "pos_text_13",
    "pos_text_14",
    "pos_text_15",
    "pos_text_16",
    "pos_text_17",
    "pos_text_18",
    "pos_text_19",
    "pos_text_20",
    "pos_text_21",
    "pos_text_22",
    "pos_text_23",
    "pos_text_24",
    "pos_text_25",
    "pos_text_27",
    "pos_text_28",
    "pos_text_29",
    "pos_text_30",
    "pos_text_31",
    "pos_text_32",
    "pos_text_33",
    "pos_text_34",
    "pos_text_35",
    "pos_text_36",
    "pos_text_37",
    "pos_text_38",
    "pos_text_39",
    "pos_text_40",
    "pos_text_41",
    "pos_text_42",
    "pos_text_43",
    "pos_text_44",
    "pos_text_45",
    "pos_text_46",
    "pos_text_47",
    "pos_text_48",
    "pos_text_49",
    "pos_text_50",
    "pos_text_51",
    "pos_text_52",
    "pos_text_53",
    "pos_text_54",
    "pos_text_55",
    "pos_text_56",
    "pos_text_57"
}
local fun_loading_hints = {
	"fun_text_1",
	"fun_text_2",
    "fun_text_3",
    "fun_text_4",
    "fun_text_5",
    "fun_text_6",
    "fun_text_7"
}
local lore_state = mod:get("lore_setting")
local pos_state = mod:get("pos_setting")
local fun_state = mod:get("fun_setting")

-- A local helper function to check for values in a list
local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

-- Keep track of settings the user selected
mod.on_setting_changed = function(setting_name)
    if setting_name == "lore_setting" then
        lore_state = mod:get(setting_name)
    end
    if setting_name == "pos_setting" then
        pos_state = mod:get(setting_name)
    end
    if setting_name == "fun_setting" then
        fun_state = mod:get(setting_name)
    end
end

-- Hook code, this is where the magic happens!
mod:hook(CLASS.LoadingView, "_set_hint_text", function(func, self, text)

    -- Build a table that contains which settings are not being used
    local dunno = {}
    if not lore_state then
        table.insert(dunno, "no_lore")
    end
    if not pos_state then
        table.insert(dunno, "no_pos")
    end
    if not fun_state then
        table.insert(dunno, "no_fun")
    end

    -- If all settings are on then use them all and randomly grab a hint from any category
    if #dunno == 0 then
        local quote_index = math.random(3)
        if quote_index == 1 and lore_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
        elseif quote_index == 2 and pos_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
        elseif quote_index == 3 and fun_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
        end
    -- If one setting is toggled off, we know that two are being used, so randomly pick from 2 categories
    elseif #dunno == 1 then
        local quote_index = math.random(2)
        if has_value(dunno, 'no_lore') then
            if quote_index == 1 then
                self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
            else
                self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
            end
        elseif has_value(dunno, 'no_pos') then
            if quote_index == 1 then
                self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
            else
                self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
            end
        else
            if quote_index == 1 then
                self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
            else
                self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
            end
        end 
    -- If the list has two elements we know that only one setting is being used, so just check for it and use it       
    elseif #dunno == 2 then
        if lore_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
        elseif pos_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
        else
            self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
        end
    else
        -- Else don't change any text and keep the original
        return func(self, text)
    end
end)


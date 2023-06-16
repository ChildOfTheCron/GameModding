--[[
Title: loadinglore
Author: HoboMechanistic
Russian Localization: xsSplater
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
    "lore_text_10",
    "lore_text_11",
    "lore_text_12",
    "lore_text_13",
    "lore_text_14",
    "lore_text_15",
    "lore_text_16",
    "lore_text_17",
    "lore_text_18",
    "lore_text_19",
    "lore_text_20",
    "lore_text_21",
    "lore_text_22",
    "lore_text_23",
    "lore_text_24",
    "lore_text_25",
    "lore_text_26",
    "lore_text_27",
    "lore_text_28",
    "lore_text_29",
    "lore_text_30",
    "lore_text_31",
    "lore_text_32",
    "lore_text_33",
    "lore_text_34",
    "lore_text_35",
    "lore_text_36",
    "lore_text_37",
    "lore_text_38",
    "lore_text_39",
    "lore_text_40",
    "world_lore_1",
    "world_lore_2",
    "world_lore_3",
    "world_lore_4",
    "world_lore_5",
    "world_lore_6",
    "world_lore_7",
    "world_lore_8",
    "world_lore_9",
    "world_lore_10",
    "hive_lore_1",
    "hive_lore_2",
    "hive_lore_3",
    "hive_lore_4",
    "time_lore_1",
    "time_lore_2",
    "time_lore_3",
    "time_lore_4",
    "time_lore_5",
    "time_lore_6",
    "time_lore_7",
    "time_lore_8",
    "time_lore_9",
    "time_lore_10",
    "ogryn_lore_1",
    "ogryn_lore_2",
    "ogryn_lore_3",
    "ogryn_lore_4",
    "ogryn_lore_5",
    "ogryn_lore_6",
    "ogryn_lore_7",
    "ogryn_lore_8",
    "ogryn_lore_9",
    "ogryn_lore_10",
    "ogryn_lore_11",
    "ogryn_lore_12",
    "ogryn_lore_13",
    "ogryn_lore_14",
    "ogryn_lore_15",
    "ogryn_lore_16",
    "ogryn_lore_17",
    "ogryn_lore_18",
    "ogryn_lore_19",
    "ogryn_lore_20",
    "transport_lore_1",
    "transport_lore_2",
    "transport_lore_3",
    "transport_lore_4",
    "transport_lore_5",
    "las_lore_1",
    "las_lore_2",
    "las_lore_3",
    "las_lore_4",
    "las_lore_5",
    "las_lore_6",
    "las_lore_7",
    "las_lore_8",
    "las_lore_9",
    "las_lore_10",
    "las_lore_11",
    "las_lore_12",
    "las_lore_13",
    "las_lore_14",
    "las_lore_15",
    "las_lore_16",
    "las_lore_17",
    "vet_lore_1",
    "vet_lore_2",
    "vet_lore_3",
    "vet_lore_4",
    "vet_lore_5",
    "vet_lore_6",
    "vet_lore_7",
    "vet_lore_8",
    "vet_lore_9",
    "vet_lore_10",
    "vet_lore_11",
    "vet_lore_12",
    "vet_lore_13",
    "vet_lore_14",
    "vet_lore_15",
    "vet_lore_16",
    "vet_lore_17",
    "vet_lore_18",
    "vet_lore_19",
    "vet_lore_20",
    "vet_lore_21",
    "vet_lore_22",
    "vet_lore_23",
    "vet_lore_24",
    "vet_lore_25",
    "vet_lore_26",
    "vet_lore_27",
    "vet_lore_28",
    "vet_lore_29",
    "vet_lore_30",
    "vet_lore_31",
    "vet_lore_32",
    "vet_lore_33",
    "vet_lore_34",
    "vet_lore_35",
    "vet_lore_36",
    "vet_lore_37",
    "vet_lore_38",
    "vet_lore_39",
    "vet_lore_40",
    "vet_lore_41",
    "vet_lore_42",
    "vet_lore_43",
    "vet_lore_44",
    "vet_lore_45",
    "zealot_lore_1",
    "zealot_lore_2",
    "zealot_lore_3",
    "zealot_lore_4",
    "zealot_lore_5",
    "zealot_lore_6",
    "zealot_lore_7",
    "zealot_lore_8",
    "zealot_lore_9",
    "zealot_lore_10",
    "zealot_lore_11",
    "zealot_lore_12",
    "zealot_lore_13",
    "zealot_lore_14",
    "zealot_lore_15",
    "zealot_lore_16",
    "zealot_lore_17",
    "zealot_lore_18",
    "zealot_lore_19",
    "zealot_lore_20",
    "zealot_lore_21",
    "zealot_lore_22",
    "zealot_lore_23",
    "zealot_lore_24",
    "zealot_lore_25",
    "zealot_lore_26",
    "zealot_lore_27",
    "zealot_lore_28",
    "zealot_lore_29",
    "heresy_lore_1",
    "heresy_lore_2",
    "heresy_lore_3",
    "heresy_lore_4",
    "heresy_lore_5",
    "heresy_lore_6",
    "heresy_lore_7",
    "heresy_lore_8",
    "heresy_lore_9",
    "heresy_lore_10",
    "heresy_lore_11",
    "heresy_lore_12",
    "heresy_lore_13",
    "heresy_lore_14",
    "heresy_lore_15",
    "heresy_lore_16",
    "heresy_lore_17",
    "heresy_lore_18",
    "heresy_lore_19",
    "heresy_lore_20",
    "heresy_lore_21",
    "heresy_lore_22",
    "heresy_lore_23",
    "heresy_lore_24",
    "heresy_lore_25",
    "heresy_lore_26",
    "heresy_lore_27",
    "heresy_lore_28",
    "heresy_lore_29",
    "heresy_lore_30",
    "heresy_lore_31",
    "heresy_lore_32",
    "heresy_lore_33",
    "heresy_lore_34",
    "heresy_lore_35",
    "heresy_lore_36",
    "heresy_lore_37",
    "heresy_lore_38",
    "heresy_lore_39",
    "heresy_lore_40",
    "heresy_lore_41",
    "heresy_lore_42",
    "heresy_lore_43",
    "heresy_lore_44",
    "heresy_lore_45",
    "heresy_lore_46",
    "heresy_lore_47",
    "heresy_lore_48",
    "heresy_lore_49",
    "heresy_lore_50",
    "heresy_lore_51",
    "heresy_lore_52",
    "heresy_lore_53",
    "heresy_lore_54",
    "heresy_lore_55",
    "heresy_lore_56",
    "heresy_lore_57",
    "heresy_lore_58",
    "heresy_lore_59",
    "heresy_lore_60",
    "heresy_lore_61",
    "heresy_lore_62",
    "heresy_lore_63",
    "heresy_lore_64"
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
    "fun_text_7",
    "fun_text_8",
    "fun_text_9",
    "fun_text_10",
    "fun_text_11",
    "fun_text_12",
    "fun_text_13",
    "fun_text_14",
    "fun_text_15",
    "fun_text_16",
    "fun_text_17",
    "fun_text_18",
    "fun_text_19",
    "fun_text_20",
    "fun_text_21",
    "fun_text_22",
    "fun_text_23",
    "fun_text_24",
    "fun_text_25",
    "fun_text_26",
    "fun_text_27",
    "fun_text_28",
    "fun_text_29"
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
        local quote_index = math.random(4)
        if (quote_index == 1 or quote_index == 4) and lore_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
        elseif quote_index == 2 and pos_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
        elseif quote_index == 3 and fun_state then
            self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
        end
    -- If one setting is toggled off, we know that two are being used, so randomly pick from 2 categories
    elseif #dunno == 1 then
        local quote_index = math.random(3)
        if has_value(dunno, 'no_lore') then
            if quote_index == 1 then
                self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
            else
                self._widgets_by_name.hint_text.content.text = mod:localize(pos_loading_hints[ math.random( #pos_loading_hints ) ])
            end
        elseif has_value(dunno, 'no_pos') then
            if quote_index == 1 then
                self._widgets_by_name.hint_text.content.text = mod:localize(fun_loading_hints[ math.random( #fun_loading_hints ) ])
            else
                self._widgets_by_name.hint_text.content.text = mod:localize(lore_loading_hints[ math.random( #lore_loading_hints ) ])
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

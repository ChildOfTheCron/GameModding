local mod = get_mod("EggHunt")

-- Local game settings we need to keep track of
local count = 0
local seen_egg_1 = false
local seen_egg_2 = false
local seen_egg_3 = false
local seen_egg_4 = false
local seen_egg_5 = false
local play_mini_game = false
local is_won = false
local seed = math.random(3)

-- Some things we need to load in
local UISoundEvents = require("scripts/settings/ui/ui_sound_events")
local Colors = require("scripts/foundation/utilities/color")
local CMDLine = mod:localize("egg_instructions")
local egg_sound = "wwise/events/minions/play_beast_of_nurgle_vce_excited"
local hum_sound = "wwise/events/player/play_player_vomit_enter"
local AFKChecker = require("scripts/managers/game_mode/afk_checker")

-- Load localization we need for the game 
local angry_egg_speak = mod:localize("angry_egg")
local horny_egg_speak = mod:localize("horny_egg")
local rotten_egg_speak = mod:localize("rotten_egg")
local mysterious_egg_speak = mod:localize("mysterious_egg")
local egg_count_text = mod:localize("egg_found")
local egg_cant_play = mod:localize("egg_in_game")
local egg_win_text = mod:localize("egg_win")
local egg_start_text = mod:localize("egg_start")

local function egg_talk(message)
    Managers.event:trigger(
        "event_add_notification_message", 
        "custom", 
        {
            icon = "content/ui/materials/icons/contracts/contract_task", 
            color = Color.purple(255, true), 
            icon_color = Color.white(255, true), 
            line_color = Color.white(255, true),
            line_1 = message,
            line_1_color = Color.white(255, true)
        }, 
        nil, 
        nil
    )
    mod:echo(message)  
end

local function egg_logic()
    if Managers.state.game_mode:game_mode_name() == "hub" then
        local player_unit = Managers.player:local_player(1).player_unit
        local position = Unit.local_position(player_unit, 1)

        if not seen_egg_1 then
            --Vector3(-29.1367, -143.514, 100.113) - The frozen bit on the right side of the ship near techpriest
            if (position.x <= -26 and position.x >= -27) and (position.y <= -140 and position.y >= -141) and not seen_egg_1 and seed == 1 then
                  -- hint audio
                  Managers.ui:play_3d_sound(hum_sound, position)               
            elseif (position.x <= -29 and position.x >= -30) and (position.y <= -142 and position.y >= -143) and not seen_egg_1 and seed == 1 then
                count = count + 1
                egg_talk(rotten_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_1 = true
            -- Vector3(-18.3545, -92.7033, 100.113) - Corner on right side of the back of the ship
            elseif (position.x <= -14 and position.x >= -15) and (position.y <= -88 and position.y >= -89) and not seen_egg_1 and seed == 2 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= -18 and position.x >= -19) and (position.y <= -92 and position.y >= -93) and not seen_egg_1 and seed == 2 then
                count = count + 1
                egg_talk(rotten_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_1 = true
            -- Vector3(38.3799, -110.829, 99.998) - Crate near the barber
            elseif (position.x <= 37 and position.x >= 36) and (position.y <= -119 and position.y >= -120) and not seen_egg_1 and seed == 3 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= 39 and position.x >= 38) and (position.y <= -110 and position.y >= -111) and not seen_egg_1 and seed == 3 then
                count = count + 1
                egg_talk(rotten_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_1 = true
            end
        end
        if not seen_egg_2 then
            if (position.x <= 24 and position.x >= 23) and (position.y <= -150 and position.y >= -151) and not seen_egg_2 and seed == 1 then
                  -- hint audio
                  Managers.ui:play_3d_sound(hum_sound, position)               
            elseif (position.x <= 24 and position.x >= 23) and (position.y <= -156 and position.y >= -158) and not seen_egg_2 and seed == 1 then
                count = count + 1
                egg_talk(horny_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_2 = true
            -- Vector3(-44.147, -134.928, 100.113) - Right side of ship back wall near techpriest the wall-cogitator   
            elseif (position.x <= -42 and position.x >= -43) and (position.y <= -131 and position.y >= -132) and not seen_egg_2 and seed == 2 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= -44 and position.x >= -45) and (position.y <= -134 and position.y >= -135) and not seen_egg_2 and seed == 2 then
                count = count + 1
                egg_talk(horny_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_2 = true
            -- Vector3(-28.728, -84.716, 98.157) - Right side wall of psyker - center of cogitator
            elseif (position.x <= -31 and position.x >= -32) and (position.y <= -83 and position.y >= -84) and not seen_egg_2 and seed == 3 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)  
            elseif (position.x <= -28 and position.x >= -29) and (position.y <= -84 and position.y >= -85) and not seen_egg_2 and seed == 3 then
                count = count + 1
                egg_talk(horny_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_2 = true
            end
        end
        if not seen_egg_3 then
            --            x         y       z
            --Vector3(-45.1236, -76.8799, 98.157)
            if (position.x <= -46 and position.x >= -47) and (position.y <= -73 and position.y >= -74) and not seen_egg_3 and seed == 1 then
                  -- hint audio
                  Managers.ui:play_3d_sound(hum_sound, position)                
            elseif (position.x <= -45 and position.x >= -46) and (position.y <= -76 and position.y >= -77) and not seen_egg_3 and seed == 1 then
                count = count + 1
                egg_talk(mysterious_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_3 = true
            -- Vector3(25.8856, -107.721, 100.042) - left corner of weird tiny golden room with skull thing in it
            elseif (position.x <= 26 and position.x >= 25) and (position.y <= -111 and position.y >= -112) and not seen_egg_3 and seed == 2 then
                -- hint audio
                Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= 26 and position.x >= 25) and (position.y <= -107 and position.y >= -108) and not seen_egg_3 and seed == 2 then
                count = count + 1
                egg_talk(mysterious_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_3 = true
            -- Vector3(-7.52105, -169.024, 101.055) - Front of ship opposite mission table/array
            elseif (position.x <= 0 and position.x >= -1) and (position.y <= -166 and position.y >= -168) and not seen_egg_3 and seed == 3 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)               
            elseif (position.x <= 0 and position.x >= -1) and (position.y <= -169 and position.y >= -171) and not seen_egg_3 and seed == 3 then
                count = count + 1
                egg_talk(mysterious_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_3 = true
            end
        end
        if not seen_egg_4 then
            --            x         y       z
            --Vector3(-0.036, -63.3862, 102.16)) - The Giant door
            if (position.x <= 1 and position.x >= 0) and (position.y <= -69 and position.y >= -70) and (position.z <= 103 and position.z >= 102) and not seen_egg_4 and seed == 1 then
                 -- hint audio
                 Managers.ui:play_3d_sound(hum_sound, position)  
            elseif (position.x <= 0 and position.x >= -1) and (position.y <= -62 and position.y >= -64) and (position.z <= 103 and position.z >= 102) and not seen_egg_4 and seed == 1 then
                count = count + 1
                egg_talk(angry_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_4 = true
            -- Vector3(-11.5694, -112.419, 101.26) - Up with Melk
            elseif (position.x <= -12 and position.x >= -13) and (position.y <= -108 and position.y >= -109) and not seen_egg_4 and seed == 2 then
                -- hint audio
                Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= -10 and position.x >= -12) and (position.y <= -112 and position.y >= -113) and not seen_egg_4 and seed == 2 then
                count = count + 1
                egg_talk(angry_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_4 = true
            -- Vector3(4.51498, -103.044, 100.113) - Vent on left at psyker
            elseif (position.x <= -29 and position.x >= -30) and (position.y <= -103 and position.y >= -104) and not seen_egg_4 and seed == 3 then
                -- hint audio
                Managers.ui:play_3d_sound(hum_sound, position)
            elseif (position.x <= -33 and position.x >= -34) and (position.y <= -102 and position.y >= -103) and not seen_egg_4 and seed == 3 then
                count = count + 1
                egg_talk(angry_egg_speak)
                Managers.event:trigger("event_add_notification_message", "default", count .. egg_count_text, nil, nil)
                Managers.ui:play_3d_sound(egg_sound, position)
                seen_egg_4 = true
            end
        end
        if count == 4 then
            if not is_won then
                Managers.event:trigger("event_add_notification_message", "default", egg_win_text, nil, nil)
                local win_sound = "wwise/events/minions/play_beast_of_nurgle_vce_death"
                Managers.ui:play_3d_sound(win_sound, position)
                is_won = true
                mod:echo(egg_win_text)
                play_mini_game = false
            end
        end
    end
end

mod:hook_safe(CLASS.StateGame, "update", function (self, dt)
    if play_mini_game then
        egg_logic()
    end
end)

mod:command("egg_hunt", CMDLine, function(...)
    if (...) == "start" then
        local game_mode_name = Managers.state.game_mode:game_mode_name()
        local is_in_hub = game_mode_name == "hub"
        if is_in_hub then
            count = 0
            seen_egg_1 = false
            seen_egg_2 = false
            seen_egg_3 = false
            seen_egg_4 = false
            seen_egg_5 = false
            is_won = false
            play_mini_game = true
            seed = math.random(3)
            Managers.event:trigger("event_add_notification_message", "default", egg_start_text, nil, UISoundEvents.notification_trait_received_rarity_2)
        else
            mod:echo(egg_cant_play)
        end
    elseif (...) == "stop" then
        play_mini_game = false
    end
end)

-- Make sure we turn the game off before the user gets disconnected for being AFK
mod:hook_safe(AFKChecker,"_show_warning_popup", function (self, minutes_to_kick)
    play_mini_game = false
    return func(self, minutes_to_kick) 
end)
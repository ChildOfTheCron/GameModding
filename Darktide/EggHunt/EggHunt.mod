return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`EggHunt` encountered an error loading the Darktide Mod Framework.")

		new_mod("EggHunt", {
			mod_script       = "EggHunt/scripts/mods/EggHunt/EggHunt",
			mod_data         = "EggHunt/scripts/mods/EggHunt/EggHunt_data",
			mod_localization = "EggHunt/scripts/mods/EggHunt/EggHunt_localization",
		})
	end,
	packages = {},
}

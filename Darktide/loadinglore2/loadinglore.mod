return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`loadinglore` encountered an error loading the Darktide Mod Framework.")

		new_mod("loadinglore", {
			mod_script       = "loadinglore/scripts/mods/loadinglore/loadinglore",
			mod_data         = "loadinglore/scripts/mods/loadinglore/loadinglore_data",
			mod_localization = "loadinglore/scripts/mods/loadinglore/loadinglore_localization",
		})
	end,
	packages = {},
}

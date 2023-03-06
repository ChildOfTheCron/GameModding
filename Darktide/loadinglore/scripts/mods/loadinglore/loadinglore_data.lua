local mod = get_mod("loadinglore")

return {
	name = "loadinglore",
	description = mod:localize("mod_description"),
	is_togglable = false,
	options = {
		widgets = {
			{
				["setting_id"] = "lore_setting",
				["type"] = "checkbox",
				["default_value"] = true
			},
			{
				["setting_id"] = "pos_setting",
				["type"] = "checkbox",
				["default_value"] = true
			},
			{
				["setting_id"] = "fun_setting",
				["type"] = "checkbox",
				["default_value"] = true
			}
		}
	}
}

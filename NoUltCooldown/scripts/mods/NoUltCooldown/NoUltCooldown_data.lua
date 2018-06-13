local mod = get_mod("NoUltCooldown")

return {
	name = mod:localize("mod_name"),                -- Readable mod name
	description = mod:localize("mod_description"),  -- Mod description
	is_togglable = true,                             -- If the mod can be enabled/disabled
	options_widgets = {
		{
			["setting_name"] = "bot_cooldown",
			["widget_type"] = "checkbox",
			["text"] = mod:localize("bot_cooldown_description"),
			["tooltip"] = mod:localize("bot_cooldown_tooltip"),
			["default_value"] = true
		}
	}
}
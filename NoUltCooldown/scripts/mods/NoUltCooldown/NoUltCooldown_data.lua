local mod = get_mod("NoUltCooldown")

return {
	name = mod:localize("mod_name"),                -- Readable mod name
	description = mod:localize("mod_description"),  -- Mod description
	is_togglable = true,                             -- If the mod can be enabled/disabled
	options_widgets = {
		{
			["setting_name"] = "player_cooldown",
			["widget_type"] = "checkbox",
			["text"] = mod:localize("player_cooldown_description"),
			["tooltip"] = mod:localize("player_cooldown_tooltip"),
			["default_value"] = true,
			["sub_widgets"] = {
				{
					["setting_name"] = "player_cooldown_amount",
					["widget_type"] = "numeric",
					["text"] = mod:localize("cooldown_amount_desc"),
					["tooltip"] = mod:localize("cooldown_amount_tooltip"),
					["range"] = {0, 255},
					["decimals_number"] = 1,
					["default_value"] = 0
				}
			}
		},
		{
			["setting_name"] = "bot_cooldown",
			["widget_type"] = "checkbox",
			["text"] = mod:localize("bot_cooldown_description"),
			["tooltip"] = mod:localize("bot_cooldown_tooltip"),
			["default_value"] = true,
			["sub_widgets"] = {
				{
					["setting_name"] = "bot_cooldown_amount",
					["widget_type"] = "numeric",
					["text"] = mod:localize("cooldown_amount_desc"),
					["tooltip"] = mod:localize("cooldown_amount_tooltip"),
					["range"] = {0, 255},
					["decimals_number"] = 1,
					["default_value"] = 0
				}
			}
		}
	}
}
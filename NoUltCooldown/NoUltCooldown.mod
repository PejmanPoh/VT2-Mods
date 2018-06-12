return {
	run = function()
		fassert(rawget(_G, "new_mod"), "NoUltCooldown must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("NoUltCooldown", {
			mod_script       = "scripts/mods/NoUltCooldown/NoUltCooldown",
			mod_data         = "scripts/mods/NoUltCooldown/NoUltCooldown_data",
			mod_localization = "scripts/mods/NoUltCooldown/NoUltCooldown_localization"
		})
	end,
	packages = {
		"resource_packages/NoUltCooldown/NoUltCooldown"
	}
}

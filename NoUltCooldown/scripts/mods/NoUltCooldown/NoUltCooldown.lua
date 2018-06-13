local mod = get_mod("NoUltCooldown")

--[[
	Hooks
--]]

mod:hook_safe(CareerExtension, "update", function (self, unit, input, dt, context, t)
	if mod:get("bot_cooldown") or self.player:is_player_controlled() then
		self._cooldown = 0
	end
end)

--[[
	Callback
--]]

-- Call when governing settings checkbox is unchecked
mod.on_disabled = function(is_first_call)
	mod:disable_all_hooks()
end

-- Call when governing settings checkbox is checked
mod.on_enabled = function(is_first_call)
	mod:enable_all_hooks()
end
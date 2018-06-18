local mod = get_mod("NoUltCooldown")

--[[
	Hooks
--]]

mod:hook_safe(CareerExtension, "update", function (self, unit, input, dt, context, t)
	-- If self is a player
	if mod:get("player_cooldown") and self.player:is_player_controlled() then
		if self._cooldown > mod:get("player_cooldown_amount") then
			self._cooldown = mod:get("player_cooldown_amount")
		end
	end
	
	-- If self is a bot
	if mod:get("bot_cooldown") and not self.player:is_player_controlled() then
		if self._cooldown > mod:get("bot_cooldown_amount") then
			self._cooldown = mod:get("bot_cooldown_amount")
		end
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
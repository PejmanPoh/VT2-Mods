local mod = get_mod("NoUltCooldown")

--[[
	Hooks
--]]

mod:hook_safe(CareerExtension, "update", function (self, unit, input, dt, context, t)

	local abilities = self._abilities
	-- If self is a player
	if mod:get("player_cooldown") and self.player:is_player_controlled() then
		for i = 1, self._num_abilities, 1 do
			local ability = abilities[i]
			if ability.cooldown > mod:get("player_cooldown_amount") then
				ability.cooldown = mod:get("player_cooldown_amount")
			end
		end
	end
	
	-- If self is a bot
	if mod:get("bot_cooldown") and not self.player:is_player_controlled() then
		for i = 1, self._num_abilities, 1 do
			local ability = abilities[i]
			if ability.cooldown > mod:get("bot_cooldown_amount") then
				ability.cooldown = mod:get("bot_cooldown_amount")
			end
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
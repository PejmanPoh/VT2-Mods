local mod = get_mod("NoUltCooldown")

--[[
	Hooks
--]]

mod:hook_safe(CareerExtension, "update", function (self, unit, input, dt, context, t)
	self._cooldown = 0
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
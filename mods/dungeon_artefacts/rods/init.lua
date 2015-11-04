
rods = {}


local cost_mana = tonumber(minetest.setting_get("rods_cost_mana"))
if cost_mana ~= nil then
	rods.settings.cost_mana = cost_mana
end




minetest.register_tool("rods:rod_orange", {
	description = "Rod of Fire",
	range = 20.0,
	tool_capabilities = {},
	wield_image = "rod_2.png",
	inventory_image = "rod_2.png",
	on_use = function(itemstack, user, pointed_thing)
		if scrolls.cast("scrolls:teleportation", user, pointed_thing) then
			failure = not mana.subtract(user:get_player_name(), rods.settings.cost_mana)
		end
		return itemstack
	end,
})
minetest.register_tool("rods:rod_green", {
	description = "Rod of Blinking",
	range = 20.0,
	tool_capabilities = {},
	wield_image = "rod_3.png",
	inventory_image = "rod_3.png",
	on_use = function(itemstack, user, pointed_thing)
		if scrolls.cast("scrolls:teleportation", user, pointed_thing) then
			failure = not mana.subtract(user:get_player_name(), rods.settings.cost_mana)
		end
		return itemstack
	end,
})
minetest.register_tool("rods:rod_blue", {
	description = "Rod of Water",
	range = 20.0,
	tool_capabilities = {},
	wield_image = "rod_4.png",
	inventory_image = "rod_4.png",
	on_use = function(itemstack, user, pointed_thing)
		if scrolls.cast("scrolls:teleportation", user, pointed_thing) then
			failure = not mana.subtract(user:get_player_name(), rods.settings.cost_mana)
		end
		return itemstack
	end,
})
minetest.register_tool("rods:rod_red", {
	description = "Rod of Hell",
	range = 20.0,
	tool_capabilities = {},
	wield_image = "rod_8.png",
	inventory_image = "rod_8.png",
	on_use = function(itemstack, user, pointed_thing)
		if scrolls.cast("scrolls:teleportation", user, pointed_thing) then
			failure = not mana.subtract(user:get_player_name(), rods.settings.cost_mana)
		end
		return itemstack
	end,
})

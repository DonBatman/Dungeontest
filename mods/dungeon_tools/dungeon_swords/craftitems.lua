local items = {
	{"Wood Blade","blade_wood","sword_wood"},
	{"Stone Blade","blade_stone","sword_stone"},
	{"Steel Blade","blade_steel","sword_steel"},
	{"Bronze Blade","blade_bronze","sword_bronze"},
	{"Mese Blade","blade_mese","sword_mese"},
	{"Diamond Blade","blade_diamond","sword_diamond"},
	}
for i in ipairs(items) do
local des = items[i][1]
local itm = items[i][2]
local cra = items[i][3]

minetest.register_craftitem("dungeon_swords:"..itm,{
	description = des,
	inventory_image = "dungeontest_sword_"..itm..".png",
	groups = {not_in_creative_inventory = 1}
	})

end
minetest.register_craftitem("dungeon_swords:handle_wood",{
	description = "Wood Sword Handle",
	inventory_image = "dungeontest_sword_handle_wood.png",
	groups = {not_in_creative_inventory = 1}
	})

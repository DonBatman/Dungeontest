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

minetest.register_craftitem("dungeontest_swords:"..itm,{
	description = des,
	inventory_image = "dungeontest_sword_"..itm..".png",
	})

minetest.register_craft({
		--type = "shapeless",
		output = "default:"..cra,
		recipe = {
			{"dungeontest_swords:handle_wood", "dungeontest_swords:"..itm},
		},
})
end
minetest.register_craftitem("dungeontest_swords:handle_wood",{
	description = "Wood Sword Handle",
	inventory_image = "dungeontest_sword_handle_wood.png",
	})
minetest.register_craftitem("dungeontest_swords:handle_steel",{
	description = "Steel Sword Handle",
	inventory_image = "dungeontest_sword_handle_steel.png",
	})

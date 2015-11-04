
local parts = {
	{"Wood Axe Head","axe_blade_wood"},
	{"Stone Axe Head","axe_blade_stone"},
	{"Steel Axe Head","axe_blade_steel"},
	{"Bronze Axe Head","axe_blade_bronze"},
	{"Mese Axe Head","axe_blade_mese"},
	{"Diamond Axe Head","axe_blade_diamond"},
	{"Axe Handle","axe_handle"},
	}
for i in ipairs (parts) do
	local des = parts[i][1]
	local mat = parts[i][2]

minetest.register_craftitem("dungeon_axes:"..mat,{
	description = des,
	inventory_image = "dungeon_"..mat..".png",
	groups = {not_in_creative_inventory = 1}
})
end

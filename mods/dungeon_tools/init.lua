--Axes

minetest.register_tool(":default:axe_wood",{
	description = "Wood Axe",
	inventory_image = "dungeon_axe_wood.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			choppy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
		}
})
minetest.register_tool(":default:axe_stone",{
	description = "Stone Axe",
	inventory_image = "dungeon_axe_stone.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			choppy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
		}
})
minetest.register_tool(":default:axe_steel",{
	description = "Steel Axe",
	inventory_image = "dungeon_axe_steel.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:axe_bronze",{
	description = "Bronze Axe",
	inventory_image = "dungeon_axe_bronze.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:axe_mese",{
	description = "Mese Axe",
	inventory_image = "dungeon_axe_mese.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2, [2]=1, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=7},
		}
})
minetest.register_tool(":default:axe_diamond",{
	description = "Diamond Axe",
	inventory_image = "dungeon_axe_diamond.png^dungeon_leather_grip.png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=8},
		}
})

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

minetest.register_craftitem("dungeon_tools:"..mat,{
	description = des,
	inventory_image = "dungeon_"..mat..".png",
})
end
local axe = {
			{"wood",	"Wood",	"orange",	"Orange",	20, {fleshy=3}},
			{"wood",	"Wood",	"green",	"Green",	20, {fleshy=3}},
			{"wood",	"Wood",	"blue",		"Blue",		20, {fleshy=3}},
			{"wood",	"Wood",	"red",		"Red",		20, {fleshy=3}},
			
			{"stone",	"Stone",	"orange",	"Orange",	20, {fleshy=3}},
			{"stone",	"Stone",	"green",	"Green",	20, {fleshy=3}},
			{"stone",	"Stone",	"blue",		"Blue",		20, {fleshy=3}},
			{"stone",	"Stone",	"red",		"Red",		20, {fleshy=3}},
			
			{"steel",	"Steel",	"orange",	"Orange",	20, {fleshy=3}},
			{"steel",	"Steel",	"green",	"Green",	20, {fleshy=3}},
			{"steel",	"Steel",	"blue",		"Blue",		20, {fleshy=3}},
			{"steel",	"Steel",	"red",		"Red",		20, {fleshy=3}},
			
			{"bronze",	"Bronze",	"orange",	"Orange",	20, {fleshy=3}},
			{"bronze",	"Bronze",	"green",	"Green",	20, {fleshy=3}},
			{"bronze",	"Bronze",	"blue",		"Blue",		20, {fleshy=3}},
			{"bronze",	"Bronze",	"red",		"Red",		20, {fleshy=3}},
			
			{"mese",	"Mese",	"orange",	"Orange",	20, {fleshy=3}},
			{"mese",	"Mese",	"green",	"Green",	20, {fleshy=3}},
			{"mese",	"Mese",	"blue",		"Blue",		20, {fleshy=3}},
			{"mese",	"Mese",	"red",		"Red",		20, {fleshy=3}},
			
			{"diamond",	"Diamond",	"orange",	"Orange",	20, {fleshy=3}},
			{"diamond",	"Diamond",	"green",	"Green",	20, {fleshy=3}},
			{"diamond",	"Diamond",	"blue",		"Blue",		20, {fleshy=3}},
			{"diamond",	"Diamond",	"red",		"Red",		20, {fleshy=3}},
			}
for i in ipairs (axe) do
	local mat  = axe[i][1]
	local mdes = axe[i][2]
	local col  = axe[i][3]
	local cdes = axe[i][4]
	local use  = axe[i][5]
	local fles = axe[i][6]
	local img  = axe[i][7]



--Enchanted Wood Handle Axes
minetest.register_tool("dungeon_tools:axe_enchanted_"..mat.."_"..col,{
	description = "Enchanted "..mdes.." Axe - "..cdes,
	inventory_image = "dungeon_axe_"..col..".png^dungeon_axe_handle_"..mat..".png",
	wield_scale = {x=1,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=use, maxlevel=1},
		},
		damage_groups = fles,
		}
})
end


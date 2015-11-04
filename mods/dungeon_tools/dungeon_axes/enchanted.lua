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

minetest.register_tool("dungeon_axes:axe_enchanted_"..mat.."_"..col,{
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
		},
	groups = {not_in_creative_inventory = 1}
})
end

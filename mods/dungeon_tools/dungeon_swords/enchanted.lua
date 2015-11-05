local swrds = {
			{"wood",	"Wood",		"orange",	"Orange",	{fleshy=3},	{times={									[4]=1.5}, uses=15, maxlevel=4}},
			{"wood",	"Wood",		"green",	"Green",	{fleshy=4},	{times={						[3]=1.2, 	[4]=1.2}, uses=20, maxlevel=3}},
			{"wood",	"Wood",		"blue",		"Blue",		{fleshy=5},	{times={			[2]=1.5, 	[3]=1.2, 	[4]=0.9}, uses=25, maxlevel=2}},
			{"wood",	"Wood",		"red",		"Red",		{fleshy=6},	{times={[1]=2.0, 	[2]=1.4, 	[3]=1.2, 	[4]=0.6}, uses=30, maxlevel=1}},
			
			{"stone",	"Stone",	"orange",	"Orange",	{fleshy=5},	{times={									[4]=1.3}, uses=25, maxlevel=4}},
			{"stone",	"Stone",	"green",	"Green",	{fleshy=6},	{times={						[3]=1.0, 	[4]=1.1}, uses=30, maxlevel=3}},
			{"stone",	"Stone",	"blue",		"Blue",		{fleshy=7},	{times={			[2]=1.3, 	[3]=1.0, 	[4]=0.8}, uses=35, maxlevel=2}},
			{"stone",	"Stone",	"red",		"Red",		{fleshy=8},	{times={[1]=1.7, 	[2]=1.2, 	[3]=1.0, 	[4]=0.6}, uses=40, maxlevel=1}},
			
			{"steel",	"Steel",	"orange",	"Orange",	{fleshy=7},	{times={									[4]=1.1}, uses=35, maxlevel=4}},
			{"steel",	"Steel",	"green",	"Green",	{fleshy=8},	{times={						[3]=0.8, 	[4]=0.8}, uses=40, maxlevel=3}},
			{"steel",	"Steel",	"blue",		"Blue",		{fleshy=9},	{times={			[2]=1.1, 	[3]=0.8, 	[4]=0.6}, uses=45, maxlevel=2}},
			{"steel",	"Steel",	"red",		"Red",		{fleshy=10},{times={[1]=1.4, 	[2]=1.0, 	[3]=0.8, 	[4]=0.4}, uses=50, maxlevel=1}},
			
			{"bronze",	"Bronze",	"orange",	"Orange",	{fleshy=7},	{times={									[4]=0.9}, uses=45, maxlevel=4}},
			{"bronze",	"Bronze",	"green",	"Green",	{fleshy=8},	{times={						[3]=0.6, 	[4]=0.8}, uses=50, maxlevel=3}},
			{"bronze",	"Bronze",	"blue",		"Blue",		{fleshy=9},	{times={			[2]=0.9, 	[3]=0.6, 	[4]=0.6}, uses=55, maxlevel=2}},
			{"bronze",	"Bronze",	"red",		"Red",		{fleshy=10},{times={[1]=1.1, 	[2]=0.8, 	[3]=0.6, 	[4]=0.4}, uses=60, maxlevel=1}},
			
			{"mese",	"Mese",		"orange",	"Orange",	{fleshy=8},	{times={									[4]=0.7}, uses=35, maxlevel=4}},
			{"mese",	"Mese",		"green",	"Green",	{fleshy=9},	{times={						[3]=0.4, 	[4]=0.6}, uses=40, maxlevel=3}},
			{"mese",	"Mese",		"blue",		"Blue",		{fleshy=10},{times={			[2]=0.7, 	[3]=0.4, 	[4]=0.4}, uses=45, maxlevel=2}},
			{"mese",	"Mese",		"red",		"Red",		{fleshy=11},{times={[1]=0.8,	[2]=0.6, 	[3]=0.4, 	[4]=0.2}, uses=50, maxlevel=1}},
			
			{"diamond",	"Diamond",	"orange",	"Orange",	{fleshy=10},{times={									[4]=0.5}, uses=50, maxlevel=4}},
			{"diamond",	"Diamond",	"green",	"Green",	{fleshy=12},{times={						[3]=0.3, 	[4]=0.4}, uses=60, maxlevel=3}},
			{"diamond",	"Diamond",	"blue",		"Blue",		{fleshy=15},{times={			[2]=0.5, 	[3]=0.3, 	[4]=0.3}, uses=70, maxlevel=2}},
			{"diamond",	"Diamond",	"red",		"Red",		{fleshy=20},{times={[1]=0.5,	[2]=0.4, 	[3]=0.3, 	[4]=0.2}, uses=80, maxlevel=1}},
			}
for i in ipairs (swrds) do
	local mat  = swrds[i][1]
	local mdes = swrds[i][2]
	local col  = swrds[i][3]
	local cdes = swrds[i][4]
	local fles = swrds[i][5]
	local mag  = swrds[i][6]

minetest.register_tool("dungeon_swords:sword_enchanted_"..mat.."_"..col,{
	description = "Enchanted "..mdes.." Sword - "..cdes,
	inventory_image = "dungeontest_sword_handle_"..mat.."_enchanted.png^dungeontest_sword_blade_"..col..".png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=use, maxlevel=1},
			magic_sword= mag,
		},
		damage_groups = fles,
		},
	groups = {not_in_creative_inventory = 1},
})
end

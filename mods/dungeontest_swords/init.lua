dofile(minetest.get_modpath("dungeontest_swords").."/craftitems.lua")


minetest.register_tool(":default:sword_wood",{
	description = "Wood Sword",
	inventory_image = "dungeontest_sword_blade_wood.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
		}
})
minetest.register_tool(":default:sword_stone",{
	description = "Stone Sword",
	inventory_image = "dungeontest_sword_blade_stone.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
		}
})
minetest.register_tool(":default:sword_steel",{
	description = "Steel Sword",
	inventory_image = "dungeontest_sword_blade_steel.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:sword_bronze",{
	description = "Bronze Sword",
	inventory_image = "dungeontest_sword_blade_bronze.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:sword_mese",{
	description = "Mese Sword",
	inventory_image = "dungeontest_sword_blade_mese.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2, [2]=1, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=7},
		}
})
minetest.register_tool(":default:sword_diamond",{
	description = "Diamond Sword",
	inventory_image = "dungeontest_sword_blade_diamond.png^dungeontest_sword_handle_wood.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=8},
		}
})
--Enchanted Swords
minetest.register_tool("dungeontest_swords:sword_diamond_enchanted",{
	description = "Diamond Sword Enchanted",
	inventory_image = "dungeontest_sword_handle_wood_enchanted.png^dungeontest_sword_blade_diamond2.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=9},
		}
})
minetest.register_tool("dungeontest_swords:sword_diamond_enchanted_orange",{
	description = "Diamond Sword Enchanted Orange",
	inventory_image = "dungeontest_sword_handle_wood_enchanted.png^dungeontest_sword_blade_orange.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=10},
		}
})
 
minetest.register_tool("dungeontest_swords:sword_diamond_enchanted_green",{
	description = "Diamond Sword Enchanted Green",
	inventory_image = "dungeontest_sword_handle_wood_enchanted.png^dungeontest_sword_blade_green.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=12},
		}
})
 
minetest.register_tool("dungeontest_swords:sword_diamond_enchanted_blue",{
	description = "Diamond Sword Enchanted Blue",
	inventory_image = "dungeontest_sword_handle_wood_enchanted.png^dungeontest_sword_blade_blue.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=14},
		}
})
 
minetest.register_tool("dungeontest_swords:sword_diamond_enchanted_red",{
	description = "Diamond Sword Enchanted Red",
	inventory_image = "dungeontest_sword_handle_wood_enchanted.png^dungeontest_sword_blade_red.png",
	wield_scale = {x=1.5,y=1.5,z=0.5},
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=16},
		}
})
 
 
 
 

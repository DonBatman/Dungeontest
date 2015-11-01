--Axes

minetest.register_tool(":default:axe_wood",{
	description = "Wood Axe",
	inventory_image = "dungeon_axe_wood.png^dungeon_leather_grip.png",
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
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=8},
		}
})

--Shovels

minetest.register_tool(":default:shovel_wood",{
	description = "Wood Shovel",
	inventory_image = "dungeon_shovel_wood.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			crumbly={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
		}
})
minetest.register_tool(":default:shovel_stone",{
	description = "Stone Shovel",
	inventory_image = "dungeon_shovel_stone.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			crumbly={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
		}
})
minetest.register_tool(":default:shovel_steel",{
	description = "Steel Shovel",
	inventory_image = "dungeon_shovel_steel.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:shovel_bronze",{
	description = "Bronze Shovel",
	inventory_image = "dungeon_shovel_bronze.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:shovel_mese",{
	description = "Mese Shovel",
	inventory_image = "dungeon_shovel_mese.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=2, [2]=1, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=7},
		}
})
minetest.register_tool(":default:shovel_diamond",{
	description = "Diamond Shovel",
	inventory_image = "dungeon_shovel_diamond.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=8},
		}
})

--Picks

minetest.register_tool(":default:pick_wood",{
	description = "Wood Pick",
	inventory_image = "dungeon_pick_wood.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=1.6, [3]=0.40}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
		}
})
minetest.register_tool(":default:pick_stone",{
	description = "Stone Pick",
	inventory_image = "dungeon_pick_stone.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=1.4, [3]=0.40}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
		}
})
minetest.register_tool(":default:pick_steel",{
	description = "Steel Pick",
	inventory_image = "dungeon_pick_steel.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:pick_bronze",{
	description = "Bronze Pick",
	inventory_image = "dungeon_pick_bronze.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2.5, [2]=1.2, [3]=0.35}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=6},
		}
})
minetest.register_tool(":default:pick_mese",{
	description = "Mese Pick",
	inventory_image = "dungeon_pick_mese.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=2, [2]=1, [3]=0.35}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=7},
		}
})
minetest.register_tool(":default:pick_diamond",{
	description = "Diamond Pick",
	inventory_image = "dungeon_pick_diamond.png^dungeon_leather_grip.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=1.9, [2]=0.9, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=8},
		}
})

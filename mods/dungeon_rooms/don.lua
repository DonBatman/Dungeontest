--Dungeon Room Wall Stairs and Slab
stairs.register_stair_and_slab("wall", "dungeon_rooms:wall",
		{creative_breakable=1},
		{"dungeon_rooms_wall.png"},
		"Dungeon Stair",
		"Dungeon Slab",
		default.node_sound_stone_defaults())
--Floor
minetest.register_node("dungeon_rooms:floor", {
	description = "Dungeon Floor",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_floor.png"
			},
	paramtype = "light",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Well Top
minetest.register_node("dungeon_rooms:well_top", {
	description = "Well Top Dungeon Floor",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_floor.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.51, 0.3125, -0.125, -0.3125, 0.5},
			{0.3125, -0.51, -0.5, 0.5, -0.3125, -0.1875},
			{0.25, -0.51, -0.3125, 0.4375, -0.3125, -0.0625},
			{0.1875, -0.51, -0.1875, 0.375, -0.3125, 0.0625},
			{-0.25, -0.51, 0.25, 0, -0.3125, 0.4375},
			{-0.125, -0.51, 0.1875, 0.125, -0.3125, 0.375},
			{0, -0.51, 0.125, 0.1875, -0.3125, 0.3125},
			{0.125, -0.51, 0, 0.3125, -0.3125, 0.1875},
			{0.0625, -0.51, 0.0625, 0.25, -0.3125, 0.25},
			{-0.125, -0.51, 0.1875, 0.5, -0.49, 0.5},
			{0.1875, -0.51, -0.1875, 0.5, -0.49, 0.5},
		}
	},
	on_place = minetest.rotate_node
})
minetest.register_node("dungeon_rooms:well_top_sb", {
	description = "Well Top Stone Brick",
	drawtype = "nodebox",
	tiles = {
			"default_stone_brick.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, -0.125, -0.3125, 0.5},
			{0.3125, -0.5, -0.5, 0.5, -0.3125, -0.1875},
			{0.25, -0.5, -0.3125, 0.4375, -0.3125, -0.0625},
			{0.1875, -0.5, -0.1875, 0.375, -0.3125, 0.0625},
			{-0.25, -0.5, 0.25, 0, -0.3125, 0.4375},
			{-0.125, -0.5, 0.1875, 0.125, -0.3125, 0.375},
			{0, -0.5, 0.125, 0.1875, -0.3125, 0.3125},
			{0.125, -0.5, 0, 0.3125, -0.3125, 0.1875},
			{0.0625, -0.5, 0.0625, 0.25, -0.3125, 0.25},
			{-0.125, -0.5625, 0.1875, 0.5, -0.49, 0.5},
			{0.1875, -0.5625, -0.1875, 0.5, -0.49, 0.5},
		}
	},
	on_place = minetest.rotate_node
})

--Well Top Small
minetest.register_node("dungeon_rooms:well_top_small", {
	description = "Small Well Top Dungeon Floor",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_floor.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.375, 0.1875, -0.375, 0.5},
			{-0.3125, -0.5, 0.3125, -0.125, -0.375, 0.4375},
			{0.125, -0.5, 0.3125, 0.3125, -0.375, 0.4375},
			{0.375, -0.5, -0.1875, 0.5, -0.375, 0.1875},
			{0.3125, -0.5, 0.125, 0.4375, -0.375, 0.3125},
			{0.25, -0.5, 0.25, 0.375, -0.375, 0.375},
			{-0.1875, -0.5, -0.5, 0.1875, -0.375, -0.375},
			{0.125, -0.5, -0.4375, 0.3125, -0.375, -0.3125},
			{0.3125, -0.5, -0.3125, 0.4375, -0.375, -0.125},
			{0.25, -0.5, -0.375, 0.375, -0.375, -0.25},
			{-0.5, -0.5, -0.1875, -0.375, -0.375, 0.1875},
			{-0.4375, -0.5, 0.125, -0.3125, -0.375, 0.3125},
			{-0.375, -0.5, 0.25, -0.25, -0.375, 0.375},
			{-0.375, -0.5, -0.375, -0.25, -0.375, -0.25},
			{-0.3125, -0.5, -0.4375, -0.125, -0.375, -0.3125},
			{-0.4375, -0.5, -0.3125, -0.3125, -0.375, -0.125},
			{-0.5, -0.5625, -0.5, -0.1875, -0.49, -0.3125},
			{-0.5, -0.5625, -0.5, -0.3125, -0.49, -0.1875},
			{-0.5, -0.5625, 0.1875, -0.3125, -0.49, 0.5},
			{-0.5, -0.5625, 0.3125, -0.1875, -0.49, 0.5},
			{0.1875, -0.5625, 0.3125, 0.5, -0.49, 0.5},
			{0.3125, -0.5625, 0.1875, 0.5, -0.49, 0.5},
			{0.3125, -0.5625, -0.5, 0.5, -0.49, -0.1875},
			{0.1875, -0.5625, -0.5, 0.5, -0.49, -0.3125},
		}
	},
	on_place = minetest.rotate_node
})

--Well Top Small
minetest.register_node("dungeon_rooms:well_top_small_wall", {
	description = "Small Well Top Dungeon Wall",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_wall.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, 0.375, 0.1875, -0.375, 0.5},
			{-0.3125, -0.5, 0.3125, -0.125, -0.375, 0.4375},
			{0.125, -0.5, 0.3125, 0.3125, -0.375, 0.4375},
			{0.375, -0.5, -0.1875, 0.5, -0.375, 0.1875},
			{0.3125, -0.5, 0.125, 0.4375, -0.375, 0.3125},
			{0.25, -0.5, 0.25, 0.375, -0.375, 0.375},
			{-0.1875, -0.5, -0.5, 0.1875, -0.375, -0.375},
			{0.125, -0.5, -0.4375, 0.3125, -0.375, -0.3125},
			{0.3125, -0.5, -0.3125, 0.4375, -0.375, -0.125},
			{0.25, -0.5, -0.375, 0.375, -0.375, -0.25},
			{-0.5, -0.5, -0.1875, -0.375, -0.375, 0.1875},
			{-0.4375, -0.5, 0.125, -0.3125, -0.375, 0.3125},
			{-0.375, -0.5, 0.25, -0.25, -0.375, 0.375},
			{-0.375, -0.5, -0.375, -0.25, -0.375, -0.25},
			{-0.3125, -0.5, -0.4375, -0.125, -0.375, -0.3125},
			{-0.4375, -0.5, -0.3125, -0.3125, -0.375, -0.125},
			{-0.5, -0.5625, -0.5, -0.1875, -0.49, -0.3125},
			{-0.5, -0.5625, -0.5, -0.3125, -0.49, -0.1875},
			{-0.5, -0.5625, 0.1875, -0.3125, -0.49, 0.5},
			{-0.5, -0.5625, 0.3125, -0.1875, -0.49, 0.5},
			{0.1875, -0.5625, 0.3125, 0.5, -0.49, 0.5},
			{0.3125, -0.5625, 0.1875, 0.5, -0.49, 0.5},
			{0.3125, -0.5625, -0.5, 0.5, -0.49, -0.1875},
			{0.1875, -0.5625, -0.5, 0.5, -0.49, -0.3125},
		}
	},
	on_place = minetest.rotate_node
})

--Dungeon Room Wall Stairs and Slab
stairs.register_stair_and_slab("tile", "dungeon_rooms:tile",
		{creative_breakable=1},
		{"dungeon_rooms_tile.png"},
		"Dungeon Tile Stair",
		"Dungeon Tile Slab",
		default.node_sound_stone_defaults())
--Tile
minetest.register_node("dungeon_rooms:tile", {
	description = "Dungeon Tile",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_tile.png"
			},
	paramtype = "light",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Cracked Tile
minetest.register_node("dungeon_rooms:cracked_tile", {
	description = "Dungeon Cracked Tile",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_tile.png^dungeon_rooms_cracked_tile.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Tile with Green overlay
minetest.register_node("dungeon_rooms:tile_green", {
	description = "Dungeon Tile - green",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_tile.png^dungeon_rooms_green_overlay.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Cracked Tile with Green overlay
minetest.register_node("dungeon_rooms:cracked_tile_green", {
	description = "Dungeon Cracked Tile - green",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_tile.png^dungeon_rooms_cracked_tile.png^dungeon_rooms_green_overlay.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			"dungeon_rooms_tile.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Cracked Tile
minetest.register_node("dungeon_rooms:red_tile", {
	description = "Dungeon Red Tile",
	drawtype = "normal",
	tiles = {
			"dungeon_rooms_tile.png^dungeon_rooms_red_overlay.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
})
--Ladder
minetest.register_node(":default:ladder",{
	description = "Ladder",
	tiles = {"dungeon_rooms_ladder.png"},
	drawtype = "mesh",
	mesh = "dungeon_rooms_ladder.obj",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	walkable = false,
	groups = {creative_breakable=1},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, 0.3125, 0.375, 0.5, 0.5},
		}
	},
})
--Curved Ceiling
minetest.register_node("dungeon_rooms:curved_ceiling", {
	description = "Curved Ceiling",
	drawtype = "nodebox",
	tiles = {
			"default_gravel.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5,	 0.4375, 0.5, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375,  0.5, 0.25, 0.5}, 
			{-0.5, 0.125,0.375,	 0.5, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, 0.5, -0.5, 0.5}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, -0.375,-0.4375, 0.5, -0.5, -0.25}, 
			{-0.5, -0.375,-0.125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, 0.5, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, 0.5,-0.5, 0.5},
		}
	},
	on_place = minetest.rotate_node
})
minetest.register_node("dungeon_rooms:curved_ceiling_middle", {
	description = "Curved Ceiling Middle",
	drawtype = "nodebox",
	tiles = {
			"default_gravel.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{0.1875, 0.375, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, -0.1875, 0.5, 0.5},
		}
	},
	--on_place = minetest.rotate_node
})
minetest.register_node("dungeon_rooms:curved_ceiling_ic", {
	description = "Curved Ceiling Inside Corner",
	drawtype = "nodebox",
	tiles = {
			"default_gravel.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.4375, 0.5, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375, 0.5, 0.25, 0.5}, 
			{-0.5, 0.125, 0.375, 0.5, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, 0.5, -0.5, 0.5}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.5, -0.5, -0.25}, 
			{-0.5, -0.375, -0.125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, 0.5, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, 0.5, -0.5, 0.5}, 
			{0.4375, 0.5, -0.5, 0.5, -0.5, 0.5}, 
			{0.375, 0.4375, -0.5, 0.5, 0.25, 0.5}, 
			{0.375, 0.125, -0.5, 0.5, -0.5, 0.5}, 
			{0.3125, -0.0625, -0.5, 0.5, -0.5, 0.5}, 
			{0.25, -0.1875, -0.5, 0.5, -0.5, 0.5}, 
			{-0.4375, -0.375, -0.5, -0.25, -0.5, 0.5}, 
			{-0.125, -0.375, -0.5, 0.5, -0.5, 0.5}, 
			{0.0625, -0.3125, -0.5, 0.5, -0.5, 0.5}, 
			{0.1875, -0.25, -0.5, 0.5, -0.5, 0.5}, 
			{-0.25, -0.375, -0.25, 0.5, -0.5, 0.5},
		}
	},
	on_place = minetest.rotate_node
})
minetest.register_node("dungeon_rooms:curved_ceiling_oc", {
	description = "Curved Ceiling Outside Corner",
	drawtype = "nodebox",
	tiles = {
			"default_gravel.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, 0.5, 0.4375, -0.4375, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375, -0.375, 0.25, 0.5}, 
			{-0.5, 0.125, 0.375, -0.375, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, -0.3125, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, -0.25, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, -0.1875, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, -0.0625, -0.5, 0.5}, 
			{-0.5, -0.375, -0.125, 0.125, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.4375, -0.5, -0.25}, 
			{0.25, -0.375, -0.4375, 0.4375, -0.5, 0.5},
		}
	},
	on_place = minetest.rotate_node
})

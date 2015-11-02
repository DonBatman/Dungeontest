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

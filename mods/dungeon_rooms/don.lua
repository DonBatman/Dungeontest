--Alter
minetest.register_node("dungeon_rooms:alter", {
	description = "Dungeon Alter",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_alter_top.png",
			"dungeon_rooms_alter_top.png",
			"dungeon_rooms_alter_back.png",
			"dungeon_rooms_alter_back.png",
			"dungeon_rooms_alter_back.png",
			"dungeon_rooms_alter_front.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	light_source = 8,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.4375, -0.3125, 0.5, 0.5, 0.3125},
			{-0.4375, -0.5, -0.25, 0.4375, 0.4375, 0.25},
		}
	}
})
--Candles
minetest.register_node("dungeon_rooms:candles", {
	description = "Dungeon Candles",
	drawtype = "nodebox",
	tiles = {
			{name="dungeon_rooms_candle_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="dungeon_rooms_candle_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="dungeon_rooms_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="dungeon_rooms_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="dungeon_rooms_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="dungeon_rooms_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	light_source = 12,
	node_box = {
		type = "fixed",
		fixed = {
			{0.125, -0.5, -0.125, 0.3125, -0.4375, 0.0625},
			{-0.25, -0.5, -0.0625, -0.1875, 0.0625, 0},
			{-0.3125, -0.5, -0.125, -0.125, -0.4375, 0.0625},
			{0.1875, -0.5, -0.0625, 0.25, 0.0625, 0},
		}
	}
})
--Dungeon Room Wall Stairs and Slab
stairs.register_stair_and_slab("wall", "dungeon_rooms:wall",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"dungeon_rooms_wall.png"},
		"Dungeon Stair",
		"Dungeon Slab",
		default.node_sound_stone_defaults())
--Switch Up
minetest.register_node("dungeon_rooms:switch_up", {
	--description = "Switch Up",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_switch_top.png^[transformFY",
			"dungeon_rooms_switch_top.png",
			"dungeon_rooms_switch_side_up.png^[transformFX",
			"dungeon_rooms_switch_side_up.png",
			"dungeon_rooms_switch_back.png",
			"dungeon_rooms_switch_front_up.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.3125, 0.375, 0.3125, 0.3125, 0.5},
			{-0.0625, -0.0625, 0.25, 0.0625, 0.0625, 0.5},
			{-0.0625, 0, 0.1875, 0.0625, 0.125, 0.3125},
			{-0.0625, 0.0625, 0.125, 0.0625, 0.1875, 0.25},
			{-0.0625, 0.125, 0.0625, 0.0625, 0.25, 0.1875},
			{-0.0625, 0.1875, 0, 0.0625, 0.3125, 0.125},
			{-0.0625, 0.25, -0.0625, 0.0625, 0.375, 0.0625},
			{0.0625, -0.125, 0.1875, 0.125, 0.125, 0.375},
			{-0.125, -0.125, 0.1875, -0.0625, 0.125, 0.375},
		}
	},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		minetest.set_node(pos,{name = "dungeon_rooms:switch_down",param2 = node.param2})
	end,
})
--Switch Down
minetest.register_node("dungeon_rooms:switch_down", {
	description = "Switch Down",
	drawtype = "nodebox",
	tiles = {
			"dungeon_rooms_switch_top.png^[transformFY",
			"dungeon_rooms_switch_top.png",
			"dungeon_rooms_switch_side_down.png^[transformFX",
			"dungeon_rooms_switch_side_down.png",
			"dungeon_rooms_switch_back.png",
			"dungeon_rooms_switch_front_down.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.3125, 0.375, 0.3125, 0.3125, 0.5},
			{-0.0625, -0.0625, 0.25, 0.0625, 0.0625, 0.5},
			{-0.0625, -0.125, 0.1875, 0.0625, -0, 0.3125},
			{-0.0625, -0.1875, 0.125, 0.0625, -0.0625, 0.25},
			{-0.0625, -0.25, 0.0625, 0.0625, -0.125, 0.1875},
			{-0.0625, -0.3125, 0, 0.0625, -0.1875, 0.125},
			{-0.0625, -0.375, -0.0625, 0.0625, -0.25, 0.0625},
			{-0.125, -0.125, 0.1875, -0.0625, 0.125, 0.375},
			{0.0625, -0.125, 0.21875, 0.125, 0.125, 0.375},
		}
	},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		minetest.set_node(pos,{name = "dungeon_rooms:switch_up",param2 = node.param2})
	end,
})
minetest.register_node("dungeon_rooms:iron_cross",{
	description = "Iron Cross",
	tiles = {
			"dungeontest_iron_cross.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 3},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.4375, 0.0625, 0.5, 0.5},
			{-0.375, 0.4375, 0.4375, 0.375, 0.5, 0.5},
			{-0.25, 0.375, 0.4375, 0.25, 0.4375, 0.5},
			{-0.1875, 0.3125, 0.4375, 0.1875, 0.375, 0.5},
			{-0.375, -0.5, 0.4375, 0.375, -0.4375, 0.5},
			{-0.25, -0.4375, 0.4375, 0.25, -0.375, 0.5},
			{-0.1875, -0.375, 0.4375, 0.1875, -0.3125, 0.5},
			{-0.5, -0.0625, 0.4375, 0.5, 0.0625, 0.5},
			{0.4375, -0.375, 0.4375, 0.5, 0.375, 0.5},
			{0.375, -0.25, 0.4375, 0.4375, 0.25, 0.5},
			{0.3125, -0.1875, 0.4375, 0.375, 0.1875, 0.5},
			{-0.5, -0.375, 0.4375, -0.4375, 0.375, 0.5},
			{-0.4375, -0.25, 0.4375, -0.375, 0.25, 0.5},
			{-0.375, -0.1875, 0.4375, -0.3125, 0.1875, 0.5},
			{-0.125, 0.25, 0.4375, 0.125, 0.3125, 0.5},
			{-0.125, -0.3125, 0.4375, 0.125, -0.25, 0.5},
			{0.25, -0.125, 0.4375, 0.3125, 0.125, 0.5},
			{-0.3125, -0.125, 0.4375, -0.25, 0.125, 0.5},
			{-0.125, -0.125, 0.4375, 0.125, 0.125, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},}}
})
minetest.register_node("dungeon_rooms:stock",{
	description = "Stock",
	tiles = {
			"dungeontest_stock.png^[transformR90",
			"dungeontest_stock.png^[transformR90",
			"dungeontest_stock.png",
			"dungeontest_stock.png",
			"dungeontest_stock.png^[transformR90",
			"dungeontest_stock.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 3},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.375, -0.0625, 0.5, 0.5, 0.0625},
			{0.125, 0.3125, -0.0625, 0.5, 0.375, 0.0625},
			{-0.5, 0.3125, -0.0625, -0.125, 0.375, 0.0625},
			{-0.25, 0.1875, -0.0625, -0.1875, 0.375, 0.0625},
			{-0.5, 0.1875, -0.0625, -0.375, 0.375, 0.0625},
			{0.375, 0.1875, -0.0625, 0.5, 0.375, 0.0625},
			{0.1875, 0.1875, -0.0625, 0.25, 0.375, 0.0625},
			{-0.5, 0.125, -0.0625, -0.125, 0.1875, 0.0625},
			{0.125, 0.125, -0.0625, 0.5, 0.1875, 0.0625},
			{-0.5, 0, -0.0625, 0.5, 0.125, 0.0625},
			{-0.625, -0.5, -0.125, -0.5, 0.5, 0.125},
			{0.5, -0.5, -0.125, 0.625, 0.5, 0.125},
			{0.4375, -0.5, -0.3125, 0.5, -0.3125, 0.3125},
			{0.625, -0.5, -0.3125, 0.6875, -0.3125, 0.3125},
			{-0.5, -0.5, -0.3125, -0.4375, -0.3125, 0.3125},
			{-0.6875, -0.5, -0.3125, -0.625, -0.3125, 0.3125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0.0625, 0.5, 0.5, 0.0625},}}
})

--Switch Up
minetest.register_node("mechanisms:switch_up", {
	--description = "Switch Up",
	drawtype = "nodebox",
	tiles = {
			"mechanisms_switch_top.png^[transformFY",
			"mechanisms_switch_top.png",
			"mechanisms_switch_side_up.png^[transformFX",
			"mechanisms_switch_side_up.png",
			"mechanisms_switch_back.png",
			"mechanisms_switch_front_up.png"
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
		minetest.set_node(pos,{name = "mechanisms:switch_down",param2 = node.param2})
	end,
})
--Switch Down
minetest.register_node("mechanisms:switch_down", {
	description = "Switch Down",
	drawtype = "nodebox",
	tiles = {
			"mechanisms_switch_top.png^[transformFY",
			"mechanisms_switch_top.png",
			"mechanisms_switch_side_down.png^[transformFX",
			"mechanisms_switch_side_down.png",
			"mechanisms_switch_back.png",
			"mechanisms_switch_front_down.png"
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
		minetest.set_node(pos,{name = "mechanisms:switch_up",param2 = node.param2})
	end,
})

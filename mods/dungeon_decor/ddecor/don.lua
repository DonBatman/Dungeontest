--Alter
minetest.register_node("ddecor:alter", {
	description = "Dungeon Alter",
	drawtype = "nodebox",
	tiles = {
			"ddecor_alter_top.png",
			"ddecor_alter_top.png",
			"ddecor_alter_back.png",
			"ddecor_alter_back.png",
			"ddecor_alter_back.png",
			"ddecor_alter_front.png"
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
minetest.register_node("ddecor:rat_hole", {
	description = "Rat Hole",
	drawtype = "nodebox",
	tiles = {
			"ddecor_rat_hole.png",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	light_source = 8,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, 0.5, 0.5, 0.49},
		}
	}
})
--Candles
minetest.register_node("ddecor:candles", {
	description = "Dungeon Candles",
	drawtype = "nodebox",
	tiles = {
			{name="ddecor_candle_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="ddecor_candle_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="ddecor_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="ddecor_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="ddecor_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			{name="ddecor_candle_front.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
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
--Iron Cross
minetest.register_node("ddecor:iron_cross",{
	description = "Iron Cross",
	tiles = {
			"ddecor_iron_cross.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
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
--Iron Cross
minetest.register_node("ddecor:inverted_cross",{
	description = "Inverted Cross",
	tiles = {
			"ddecor_brown.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, 0.375, 0.0625, 0.5, 0.5},
			{-0.375, -0.1875, 0.375, 0.375, -0.0625, 0.5},
		}
	},
})
--Stock
minetest.register_node("ddecor:stock",{
	description = "Stock",
	tiles = {
			"ddecor_stock.png^[transformR90",
			"ddecor_stock.png^[transformR90",
			"ddecor_stock.png",
			"ddecor_stock.png",
			"ddecor_stock.png^[transformR90",
			"ddecor_stock.png^[transformR90",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
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
--Pedestal
minetest.register_node("ddecor:pedestal",{
	description = "Pedestal",
	tiles = {
			"ddecor_pedestal_top.png",
			"ddecor_pedestal_top.png",
			"ddecor_pedestal.png",
			"ddecor_pedestal.png",
			"ddecor_pedestal.png",
			"ddecor_pedestal.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {creative_breakable=1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			{-0.3125, -0.5, 0.125, -0.125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.125, 0.5, -0.125},
			{0.125, -0.5, 0.125, 0.3125, 0.5, 0.3125},
			{0.125, -0.5, -0.3125, 0.3125, 0.5, -0.125},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.4375},
			{-0.375, -0.5, -0.375, 0.375, -0.3125, 0.375},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.4375, 0.375, -0.4375, 0.4375, 0.4375, 0.4375},
			{-0.375, 0.3125, -0.375, 0.375, 0.375, 0.375},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},}}
})

--Wall Rack
minetest.register_node("ddecor:wall_rack",{
	description = "Wall Rack",
	tiles = {
			"ddecor_rack_top.png",
			"ddecor_rack_top.png^[transformFY",
			"ddecor_rack_front.png^[transformFY",
			"ddecor_rack_front.png^[transformFY",
			"ddecor_rack_back.png^[transformFY",
			"ddecor_rack_front.png^[transformFY",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.375, -0.375, 0.25, -0.3125, -0.25, 0.375},
			{-0.3125, -0.375, 0.1875, -0.1875, -0.25, 0.25},
			{-0.1875, -0.375, 0.25, -0.125, -0.25, 0.375},
			{0.3125, -0.375, 0.25, 0.375, -0.25, 0.375},
			{0.125, -0.375, 0.25, 0.1875, -0.25, 0.375},
			{0.1875, -0.375, 0.1875, 0.3125, -0.25, 0.25},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0.375, 0.5, 1.5, 0.5},}},
	on_place = function(itemstack, placer, pointed_thing)
		local pos = pointed_thing.above
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name ~= "air" then
			minetest.chat_send_player( placer:get_player_name(), "You need room above!" )
			return
		end
        return minetest.item_place(itemstack, placer, pointed_thing)
    end,
	after_place_node = function(pos)
		local node = minetest.get_node(pos)
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "ddecor:wall_rack_top", param2 = node.param2})
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local pos2 = { x = pos.x, y=pos.y + 1, z = pos.z }
		if minetest.get_node(pos2).name == "ddecor:wall_rack_top" then
			minetest.remove_node(pos2)
		end
	end,
})
minetest.register_node("ddecor:wall_rack_top",{
	description = "Wall Rack Top",
	tiles = {
			"ddecor_rack_top.png",
			"ddecor_rack_top.png^[transformFY",
			"ddecor_rack_front.png",
			"ddecor_rack_front.png",
			"ddecor_rack_back.png",
			"ddecor_rack_front.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1,not_in_creative_inventory=1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{0.3125, 0.375, 0.25, 0.375, 0.25, 0.375},
			{0.1875, 0.375, 0.1875, 0.3125, 0.25, 0.25},
			{0.125, 0.375, 0.25, 0.1875, 0.25, 0.375},
			{-0.375, 0.375, 0.25, -0.3125, 0.25, 0.375},
			{-0.1875, 0.375, 0.25, -0.125, 0.25, 0.375},
			{-0.3125, 0.375, 0.1875, -0.1875, 0.25, 0.25}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {{-0.5, -0.5, 0.4, 0.5, 0.5, 0.5},}}
})

--Shackle
minetest.register_node("ddecor:shackle",{
	description = "Shackle",
	tiles = {
			"ddecor_shackle.png",
			"ddecor_shackle.png",
			"ddecor_shackle.png",
			"ddecor_shackle.png",
			"ddecor_shackle.png",
			"ddecor_shackle.png",
			},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, 0.4375, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.125, 0.3125, -0.0625, -0.0625, 0.4375, 0.0625},
			{0.0625, 0.3125, -0.0625, 0.125, 0.4375, 0.0625},
			{-0.0625, 0.25, -0.0625, 0.0625, 0.3125, 0.0625}, 
		}
	},
})









--Mesh Nodes

--Sphere
minetest.register_node("ddecor:sphere",{
	description = "Sphere",
	tiles = {"ddecor_sphere.png"},
	drawtype = "mesh",
	mesh = "ddecor_sphere.obj",
	paramtype = "light",
	groups = {creative_breakable=1},
})

minetest.register_node("ddecor:face1", {
	description = "Scary Face",
	drawtype = "nodebox",
	tiles = {
			"ddecor_face1.png"
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.5, 0.5, 0.5, 0.49},
		}
	}
})

















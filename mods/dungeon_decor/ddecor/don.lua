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
	description = "Stock",
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



















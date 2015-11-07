local blocks = {
	{"Orange",	"orange",	"sword", {creative_breakable=1, magic_sword = 4}},
	{"Green",	"green",	"sword", {creative_breakable=1, magic_sword = 3}},
	{"Blue",	"blue",		"sword", {creative_breakable=1, magic_sword = 2}},
	{"Red",		"red",		"sword", {creative_breakable=1, magic_sword = 1}},
	{"Orange",	"orange",	"axe", {creative_breakable=1, magic_axe = 4}},
	{"Green",	"green",	"axe", {creative_breakable=1, magic_axe = 3}},
	{"Blue",	"blue",		"axe", {creative_breakable=1, magic_axe = 2}},
	{"Red",		"red",		"axe", {creative_breakable=1, magic_axe = 1}},
	}
for i in ipairs (blocks) do
	local des  = blocks[i][1]
	local col  = blocks[i][2]
	local tool = blocks[i][3]
	local mag  = blocks[i][4]

minetest.register_node("dungeon_magic:block_"..col..tool,{
	description = des.." Magic block - "..tool,
	tiles = {"dungeon_block_"..tool.."_"..col..".png"},
	paramtype = "light",
	drop = "",
	groups = mag,
	on_punch = function(pos, node, puncher, pointed_thing)
		minetest.chat_send_player(puncher:get_player_name(), "You need an enchanted "..col.." "..tool.." to break this block")
	end,
})
end

local function parti(pos)
  	minetest.add_particlespawner(40, 1,
		pos, pos,
		{x=-5, y=-5, z=-5}, {x=5, y=5, z=5},
		{x=-2, y=-2, z=-2}, {x=2, y=2, z=2},
		0.2, 2,
		0.2, 3,
		false, "dungeon_magic_parti.png")
end

local items = {
		{"rods:rod_of_blinking","blinking","Blinking Block"},
		{"rods:rod_of_irrigation","irrigation","Irrigation Block"},
		{"rods:rod_of_immolation","immolation","Immolation Block"},
		}
for i in ipairs (items) do
	local itm = items[i][1]
	local nam = items[i][2]
	local des = items[i][3]

minetest.register_node("dungeon_magic:"..nam.."_block",{
	description = des,
	tiles = {"dungeon_block_"..nam..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "",
	light_source = 12,
	groups = {creative_breakable=1, magic_sword = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{0.3125, -0.5, -0.3125, 0.5, -0.3125, 0.3125},
			{-0.5, -0.5, -0.3125, -0.3125, -0.3125, 0.3125},
			{-0.5, 0.3125, -0.3125, -0.3125, 0.5, 0.3125},
			{0.3125, 0.3125, -0.3125, 0.5, 0.5, 0.3125},
			{-0.3125, 0.3125, 0.3125, 0.3125, 0.5, 0.5},
			{-0.3125, 0.3125, -0.5, 0.3125, 0.5, -0.3125},
			{-0.3125, -0.5, -0.5, 0.3125, -0.3125, -0.3125},
			{-0.3125, -0.5, 0.3125, 0.3125, -0.3125, 0.5},
			{-0.3125, -0.3125, -0.3125, 0.3125, 0.3125, 0.3125},
		}
	},
	on_destruct = function(pos)
		minetest.spawn_item(pos, itm)
		parti(pos)
	end,
})
end
minetest.register_node("dungeon_magic:teleport_fake",{
	description = "FakeTeleport Block",
	tiles = {{name="dungeon_teleport_ani_lime.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.5}}},
	paramtype = "light",
	drop = "",
	light_source = 14,
	groups = {creative_breakable=1},

})
minetest.register_node("dungeon_magic:hole1",{
	description = "FakeTeleport Block",
	tiles = {
			"dungeon_hole_in_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			},
	paramtype = "light",
	drop = "",
	groups = {creative_breakable=1},
})
minetest.register_node("dungeon_magic:hole2",{
	description = "FakeTeleport Block",
	tiles = {
			"dungeon_hole_in_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			"dungeon_floor.png",
			},
	paramtype = "light",
	drop = "",
	groups = {creative_breakable=1},
})

dofile(minetest.get_modpath("dungeon_magic").."/enchanter.lua")
dofile(minetest.get_modpath("dungeon_magic").."/blocks.lua")

local items = {
	{"Orange Energy Orb","orb_orange"},
	{"Green Energy Orb","orb_green"},
	{"Blue Energy Orb","orb_blue"},
	{"Red Energy Orb","orb_red"},
	{"Orange Crystal","crystal_orange"},
	{"Green Crystal","crystal_green"},
	{"Blue Crystal","crystal_blue"},
	{"Red Crystal","crystal_red"},
	}
for i in ipairs(items) do
local des = items[i][1]
local itm = items[i][2]

minetest.register_craftitem("dungeon_magic:"..itm,{
	description = des,
	inventory_image = "dungeon_"..itm..".png",
	})
end

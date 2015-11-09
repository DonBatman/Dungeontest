local items = {
	{"Orange Crystal","crystal_orange",10},
	{"Green Crystal","crystal_green",20},
	{"Blue Crystal","crystal_blue",30},
	{"Red Crystal","crystal_red",40},
	}
for i in ipairs(items) do
local des = items[i][1]
local itm = items[i][2]
local man = items[i][3]

minetest.register_craftitem("dungeon_magic:"..itm,{
	description = des,
	inventory_image = "dungeon_"..itm..".png",
	})
end
local items = {
	{"Orange Energy Orb","orb_orange",20},
	{"Green Energy Orb","orb_green",40},
	{"Blue Energy Orb","orb_blue",60},
	{"Red Energy Orb","orb_red",80},
	}
for i in ipairs(items) do
local des = items[i][1]
local itm = items[i][2]
local man = items[i][3]

minetest.register_craftitem("dungeon_magic:"..itm,{
	description = des,
	inventory_image = "dungeon_"..itm..".png",
	})
end

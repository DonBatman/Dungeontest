local rod = {}
local make_rod = false




minetest.register_node("dungeon_forge:rod_forge",{
	description = "Sword Forge",
	tiles = {
			{name="dungeon_forge_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			"dungeon_forge_back.png",
			"dungeon_forge_side.png^[transformFX",
			"dungeon_forge_side.png",
			"dungeon_forge_back.png",
			{name="dungeon_forge_front_rod.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {creative_breakable=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.375, -0.375, 0.5, 0.375},
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{0.375, -0.5, -0.375, 0.5, 0.5, 0.375},
			{-0.5, -0.5, -0.5, 0.5, 0.25, -0.375},
			{-0.375, -0.5, -0.375, 0.375, 0.3125, 0.375},
			{-0.375, -0.5, -0.3125, 0.375, 0.375, 0.375},
		}
	},

after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("infotext",  "Sword Forge");
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "size[9,10;]"..
		"background[-0.15,-0.25;9.40,10.75;dungeon_forge_bg.png]"..
		--Rod
		"label[1,1.5;Rod]"..
		"label[6,0.5;Orb]"..
		"label[3,0.5;Sticks]"..
		"list[current_name;stick1;2,1;1,1;]"..
		"list[current_name;stick2;3,1;1,1;]"..
		"list[current_name;stick3;4,1;1,1;]"..
		"list[current_name;stick4;5,0.5;1,1;]"..
		"list[current_name;stick5;5,1.5;1,1;]"..
		"list[current_name;orb;6,1;1,1;]"..
		"button[4,3;2,1;button;Make]"..
		"list[current_name;out;4.5,4.5;1,1;]"..
		--Show Inventory
		"list[current_player;main;0.5,6;8,4;]")
	meta:set_string("infotext", "Sword Forge")
	local inv = meta:get_inventory()
	inv:set_size("stick1", 1)
	inv:set_size("stick2", 1)
	inv:set_size("stick3", 1)
	inv:set_size("stick4", 1)
	inv:set_size("stick5", 1)
	inv:set_size("orb", 1)
	inv:set_size("out", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
local meta = minetest.get_meta(pos)
local inv = meta:get_inventory()

if fields["button"]then
		make_rod = false

		if inv:is_empty("stick1") or
		 inv:is_empty("stick2") or
		 inv:is_empty("stick3") or
		 inv:is_empty("stick4") or
		 inv:is_empty("stick5") or
		 inv:is_empty("orb") then
			return
		end

	local s1 = inv:get_stack("stick1", 1)
	local s2 = inv:get_stack("stick2", 1)
	local s3 = inv:get_stack("stick3", 1)
	local s4 = inv:get_stack("stick4", 1)
	local s5 = inv:get_stack("stick5", 1)
	local o1 = inv:get_stack("orb", 1)


	local color_list = {"orange","green","blue","red"}
	for i=1,#color_list do
	local cols = color_list[i]

		if   s1:get_name() == "default:stick" and
		     s2:get_name() == "default:stick" and
		     s3:get_name() == "default:stick"  and
		     s4:get_name() == "default:stick"  and
		     s5:get_name() == "default:stick"  and
		     o1:get_name() == "dungeon_magic:orb_"..cols then
				rod = "rods:rod_"..cols
				make_rod = true
		end
	end
		if make_rod == true then
			inv:add_item("out",rod)
			
			s1:take_item()
			inv:set_stack("stick1",1,s1)
			
			s2:take_item()
			inv:set_stack("stick2",1,s2)
			
			s3:take_item()
			inv:set_stack("stick3",1,s3)
			
			s4:take_item()
			inv:set_stack("stick4",1,s4)
			
			s5:take_item()
			inv:set_stack("stick5",1,s5)
			
			o1:take_item()
			inv:set_stack("orb",1,o1)
		end

end
end,
})

















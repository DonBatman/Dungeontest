local blade = {}
local make_blade = false
local handle = {}
local make_handle = false
local sword = {}
local make_sword = false




minetest.register_node("dungeontest_swords:forge",{
	description = "Enchantment Table",
	tiles = {
			{name="dungeon_forge_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			"dungeon_forge_side.png",
			"dungeon_forge_side.png",
			"dungeon_forge_side.png",
			"dungeon_forge_side.png",
			"dungeon_forge_side.png",
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {cracky=2,choppy=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.375, -0.375, 0.5, 0.375},
			{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
			{0.375, -0.5, -0.375, 0.5, 0.5, 0.375},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
			{-0.375, -0.5, -0.375, 0.375, 0.375, 0.375},
		}
	},

after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Sword Forge (owned by " .. (placer:get_player_name() or "") .. ")");
end,

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("blade") then
		return false
	elseif not inv:is_empty("blade1") then
		return false
	elseif not inv:is_empty("blade2") then
		return false
	elseif not inv:is_empty("blade3") then
		return false
	elseif not inv:is_empty("handle") then
		return false
	elseif not inv:is_empty("handle1") then
		return false
	elseif not inv:is_empty("handle2") then
		return false
	elseif not inv:is_empty("handle3") then
		return false
	elseif not inv:is_empty("handle4") then
		return false
	elseif not inv:is_empty("sword") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "size[9,10;]"..
		"background[-0.15,-0.25;9.40,10.75;dungeon_forge_bg.png]"..
		--Blade
		"label[1,1.5;Blade]"..
		"list[current_name;blade1;2,0.5;1,1;]"..
		"list[current_name;blade2;2,1.5;1,1;]"..
		"list[current_name;blade3;2,2.5;1,1;]"..
		"button[2,3.5;1,1;bbutton;Make]"..
		"list[current_name;blade;2,4.5;1,1;]"..
		--Handle
		"label[4.5,1.5;Handle]"..
		"list[current_name;handle1;5.5,0.5;1,1;]"..
		"list[current_name;handle2;5.5,1.5;1,1;]"..
		"list[current_name;handle3;5.5,2.5;1,1;]"..
		"button[5.5,3.5;1,1;hbutton;Make]"..
		"list[current_name;handle;3,4.5;1,1;]"..
		--Sword
		"button[4,4.5;2,1;sbutton;Make]"..
		"list[current_name;sword;6,4.5;1,1;]"..
		--Show Inventory
		"list[current_player;main;0.5,6;8,4;]")
	meta:set_string("infotext", "Forge")
	local inv = meta:get_inventory()
	inv:set_size("blade", 1)
	inv:set_size("blade1", 1)
	inv:set_size("blade2", 1)
	inv:set_size("blade3", 1)
	inv:set_size("handle", 1)
	inv:set_size("handle1", 1)
	inv:set_size("handle2", 1)
	inv:set_size("handle3", 1)
	inv:set_size("sword", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
local meta = minetest.get_meta(pos)
local inv = meta:get_inventory()

if fields["bbutton"]then
		make_blade = false

		if inv:is_empty("blade1") or
		 inv:is_empty("blade2") or
		 inv:is_empty("blade3") then
			return
		end

	local b1 = inv:get_stack("blade1", 1)
	local b2 = inv:get_stack("blade2", 1)
	local b3 = inv:get_stack("blade3", 1)


	local blade_list = {
			{"default:wood",	"dungeontest_swords:blade_wood"},
			{"default:stone",	"dungeontest_swords:blade_stone"},
			{"default:steel_ingot",	"dungeontest_swords:blade_steel"},
			{"default:bronze_ingot",	"dungeontest_swords:blade_bronze"},
			{"default:mese_crystal",	"dungeontest_swords:blade_mese"},
			{"default:diamond",	"dungeontest_swords:blade_diamond"},
			}
	for i in ipairs (blade_list) do
		local mat = blade_list[i][1]
		local bld = blade_list[i][2]

		if   b1:get_name() == mat and
		     b2:get_name() == mat and
		     b3:get_name() == mat then
				blade = bld
				make_blade = true
		end
	end
		if make_blade == true then
			inv:add_item("blade",blade)
			
			b1:take_item()
			inv:set_stack("blade1",1,b1)
			
			b2:take_item()
			inv:set_stack("blade2",1,b2)
			
			b3:take_item()
			inv:set_stack("blade3",1,b3)
		end

elseif fields["hbutton"]then
		make_handle = false

		if inv:is_empty("handle1") or
		 inv:is_empty("handle2") or
		 inv:is_empty("handle3") then
			return
		end

	local h1 = inv:get_stack("handle1", 1)
	local h2 = inv:get_stack("handle2", 1)
	local h3 = inv:get_stack("handle3", 1)


	local handle_list = {
			{"default:stick",	"dungeontest_swords:handle_wood"},
			{"default:steel_ingot",	"dungeontest_swords:handle_steel"},
			}
	for i in ipairs (handle_list) do
		local mat = handle_list[i][1]
		local bld = handle_list[i][2]

		if   h1:get_name() == mat and
		     h2:get_name() == mat and
		     h3:get_name() == mat then
				handle = bld
				make_handle = true
		end
	end
		if make_handle == true then
			inv:add_item("handle",handle)
			
			h1:take_item()
			inv:set_stack("handle1",1,h1)
			
			h2:take_item()
			inv:set_stack("handle2",1,h2)
			
			h3:take_item()
			inv:set_stack("handle3",1,h3)
		end

elseif fields["sbutton"]then
		make_sword = false

		if inv:is_empty("blade") or
		 inv:is_empty("handle") then
			return
		end

	local s1 = inv:get_stack("blade", 1)
	local s2 = inv:get_stack("handle", 1)

	local maters = {"wood","stone","steel","bronze","mese","diamond"}
	
	for i=1,#maters do
	local mater = maters[i]
	
		if   s1:get_name() == "dungeontest_swords:blade_"..mater and
		     s2:get_name() == "dungeontest_swords:handle_wood" then
				sword = "default:sword_"..mater
				make_sword = true
		end
	end
		if make_sword == true then
			inv:add_item("sword",sword)
			
			s1:take_item()
			inv:set_stack("blade",1,s1)
			
			s2:take_item()
			inv:set_stack("handle",1,s2)
		end
end
end,
})

















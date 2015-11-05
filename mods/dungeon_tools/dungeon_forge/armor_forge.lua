local helmet = {}
local make_helmet = false
local chest = {}
local make_chest = false
local pants = {}
local make_pants = false
local boots = {}
local make_boots = false




minetest.register_node("dungeon_forge:armor_forge",{
	description = "Armor Forge",
	tiles = {
			{name="dungeon_forge_top.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
			"dungeon_forge_back.png",
			"dungeon_forge_side.png^[transformFX",
			"dungeon_forge_side.png",
			"dungeon_forge_back.png",
			{name="dungeon_forge_front_armor.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
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
	local meta = minetest.get_meta(pos);
			meta:set_string("infotext",  "Armor Forge");
end,

on_construct = function(pos)
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec", "size[12,10;]"..
		"background[-0.25,-0.25;12.5,10.5;dungeon_forge_bg.png]"..
		--Head
		"list[current_name;head1;1,0;1,1;]"..
		"list[current_name;head2;1,1;1,1;]"..
		"list[current_name;head3;2,0;1,1;]"..
		"list[current_name;head4;3,0;1,1;]"..
		"list[current_name;head5;3,1;1,1;]"..
		"button[4.5,0;2,1;head;Helmet]"..
		"list[current_name;hout;5,1;1,1;]"..
		--Chest
		"list[current_name;chest1;1.5,2.5;1,1;]"..
		"list[current_name;chest2;1.5,3.5;1,1;]"..
		"list[current_name;chest3;1.5,4.5;1,1;]"..
		"list[current_name;chest4;2.5,2.5;1,1;]"..
		"list[current_name;chest5;2.5,3.5;1,1;]"..
		"list[current_name;chest6;2.5,4.5;1,1;]"..
		"button[4.5,2.5;2,1;chest;Chest Plate]"..
		"list[current_name;cout;5,3.5;1,1;]"..
		--Pants
		"list[current_name;pants1;1,5.5;1,1;]"..
		"list[current_name;pants2;1,6.5;1,1;]"..
		"list[current_name;pants3;2,5.5;1,1;]"..
		"list[current_name;pants4;3,5.5;1,1;]"..
		"list[current_name;pants5;3,6.5;1,1;]"..
		"button[4.5,5.5;2,1;pants;Leggings]"..
		"list[current_name;pout;5,6.5;1,1;]"..
		--Boots
		"list[current_name;boots1;1.25,7.5;1,1;]"..
		"list[current_name;boots2;1.25,8.5;1,1;]"..
		"list[current_name;boots3;2.75,7.5;1,1;]"..
		"list[current_name;boots4;2.75,8.5;1,1;]"..
		"button[4.5,7.5;2,1;boots;Boots]"..
		"list[current_name;bout;5,8.5;1,1;]"..
		--output
		--Show Inventory
		"list[current_player;main;7,1;4,8;]")
	meta:set_string("infotext", "Armor Forge")
	local inv = meta:get_inventory()
	inv:set_size("head1", 1)
	inv:set_size("head2", 1)
	inv:set_size("head3", 1)
	inv:set_size("head4", 1)
	inv:set_size("head5", 1)
	inv:set_size("chest1", 1)
	inv:set_size("chest2", 1)
	inv:set_size("chest3", 1)
	inv:set_size("chest4", 1)
	inv:set_size("chest5", 1)
	inv:set_size("chest6", 1)
	inv:set_size("pants1", 1)
	inv:set_size("pants2", 1)
	inv:set_size("pants3", 1)
	inv:set_size("pants4", 1)
	inv:set_size("pants5", 1)
	inv:set_size("boots1", 1)
	inv:set_size("boots2", 1)
	inv:set_size("boots3", 1)
	inv:set_size("boots4", 1)
	inv:set_size("hout", 1)
	inv:set_size("cout", 1)
	inv:set_size("pout", 1)
	inv:set_size("bout", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
local meta = minetest.get_meta(pos)
local inv = meta:get_inventory()

if fields["head"]then
		make_helmet = false

		if inv:is_empty("head1") or
		 inv:is_empty("head2") or
		 inv:is_empty("head3") or
		 inv:is_empty("head4") or
		 inv:is_empty("head5") then
			return
		end

	local h1 = inv:get_stack("head1", 1)
	local h2 = inv:get_stack("head2", 1)
	local h3 = inv:get_stack("head3", 1)
	local h4 = inv:get_stack("head4", 1)
	local h5 = inv:get_stack("head5", 1)


	local helmets = {
			{"default:wood",			"3d_armor:helmet_wood"},
			{"default:cactus",			"3d_armor:helmet_cactus"},
			{"default:steel_ingot",		"3d_armor:helmet_steel"},
			{"default:bronze_ingot",	"3d_armor:helmet_bronze"},
			{"default:gold_ingot",		"3d_armor:helmet_diamond"},
			{"default:diamond",			"3d_armor:helmet_gold"},
			}
	for i in ipairs (helmets) do
		local mat = helmets[i][1]
		local arm = helmets[i][2]

		if   h1:get_name() == mat and
		     h2:get_name() == mat and
		     h3:get_name() == mat and
		     h4:get_name() == mat and
		     h5:get_name() == mat then
				helmet = arm
				make_helmet = true
		end
	end
		if make_helmet == true then
			inv:add_item("hout",helmet)
			
			h1:take_item()
			inv:set_stack("head1",1,h1)
			
			h2:take_item()
			inv:set_stack("head2",1,h2)
			
			h3:take_item()
			inv:set_stack("head3",1,h3)
			
			h4:take_item()
			inv:set_stack("head4",1,h4)
			
			h5:take_item()
			inv:set_stack("head5",1,h5)
		end

elseif fields["chest"]then
		make_chest = false

		if inv:is_empty("chest1") or
		 inv:is_empty("chest2") or
		 inv:is_empty("chest3") or
		 inv:is_empty("chest4") or
		 inv:is_empty("chest5") or
		 inv:is_empty("chest6") then
			return
		end

	local h1 = inv:get_stack("chest1", 1)
	local h2 = inv:get_stack("chest2", 1)
	local h3 = inv:get_stack("chest3", 1)
	local h4 = inv:get_stack("chest4", 1)
	local h5 = inv:get_stack("chest5", 1)
	local h6 = inv:get_stack("chest6", 1)


	local chests = {
			{"default:wood",			"3d_armor:chestplate_wood"},
			{"default:cactus",			"3d_armor:chestplate_cactus"},
			{"default:steel_ingot",		"3d_armor:chestplate_steel"},
			{"default:bronze_ingot",	"3d_armor:chestplate_bronze"},
			{"default:gold_ingot",		"3d_armor:chestplate_diamond"},
			{"default:diamond",			"3d_armor:chestplate_gold"},
			}
	for i in ipairs (chests) do
		local mat = chests[i][1]
		local arm = chests[i][2]

		if   h1:get_name() == mat and
		     h2:get_name() == mat and
		     h3:get_name() == mat and
		     h4:get_name() == mat and
		     h5:get_name() == mat and
		     h6:get_name() == mat then
				chest = arm
				make_chest = true
		end
	end
		if make_chest == true then
			inv:add_item("cout",chest)
			
			h1:take_item()
			inv:set_stack("chest1",1,h1)
			
			h2:take_item()
			inv:set_stack("chest2",1,h2)
			
			h3:take_item()
			inv:set_stack("chest3",1,h3)
			
			h4:take_item()
			inv:set_stack("chest4",1,h4)
			
			h5:take_item()
			inv:set_stack("chest5",1,h5)
		end
elseif fields["pants"]then
		make_pants = false

		if inv:is_empty("pants1") or
		 inv:is_empty("pants2") or
		 inv:is_empty("pants3") or
		 inv:is_empty("pants4") or
		 inv:is_empty("pants5") then
			return
		end

	local h1 = inv:get_stack("pants1", 1)
	local h2 = inv:get_stack("pants2", 1)
	local h3 = inv:get_stack("pants3", 1)
	local h4 = inv:get_stack("pants4", 1)
	local h5 = inv:get_stack("pants5", 1)


	local pant = {
			{"default:wood",			"3d_armor:leggings_wood"},
			{"default:cactus",			"3d_armor:leggings_cactus"},
			{"default:steel_ingot",		"3d_armor:leggings_steel"},
			{"default:bronze_ingot",	"3d_armor:leggings_bronze"},
			{"default:gold_ingot",		"3d_armor:leggings_diamond"},
			{"default:diamond",			"3d_armor:leggings_gold"},
			}
	for i in ipairs (pant) do
		local mat = pant[i][1]
		local arm = pant[i][2]

		if   h1:get_name() == mat and
		     h2:get_name() == mat and
		     h3:get_name() == mat and
		     h4:get_name() == mat and
		     h5:get_name() == mat then
				pants = arm
				make_pants = true
		end
	end
		if make_pants == true then
			inv:add_item("pout",pants)
			
			h1:take_item()
			inv:set_stack("pants1",1,h1)
			
			h2:take_item()
			inv:set_stack("pants2",1,h2)
			
			h3:take_item()
			inv:set_stack("pants3",1,h3)
			
			h4:take_item()
			inv:set_stack("pants4",1,h4)
			
			h5:take_item()
			inv:set_stack("pants5",1,h5)
		end
elseif fields["boots"]then
		make_helmet = false

		if inv:is_empty("boots1") or
		 inv:is_empty("boots2") or
		 inv:is_empty("boots3") or
		 inv:is_empty("boots4") then
			return
		end

	local h1 = inv:get_stack("boots1", 1)
	local h2 = inv:get_stack("boots2", 1)
	local h3 = inv:get_stack("boots3", 1)
	local h4 = inv:get_stack("boots4", 1)


	local boot = {
			{"default:wood",			"3d_armor:boots_wood"},
			{"default:cactus",			"3d_armor:boots_cactus"},
			{"default:steel_ingot",		"3d_armor:boots_steel"},
			{"default:bronze_ingot",	"3d_armor:boots_bronze"},
			{"default:gold_ingot",		"3d_armor:boots_diamond"},
			{"default:diamond",			"3d_armor:boots_gold"},
			}
	for i in ipairs (boot) do
		local mat = boot[i][1]
		local arm = boot[i][2]

		if   h1:get_name() == mat and
		     h2:get_name() == mat and
		     h3:get_name() == mat and
		     h4:get_name() == mat then
				boots = arm
				make_boots = true
		end
	end
		if make_boots == true then
			inv:add_item("bout",boots)
			
			h1:take_item()
			inv:set_stack("boots1",1,h1)
			
			h2:take_item()
			inv:set_stack("boots2",1,h2)
			
			h3:take_item()
			inv:set_stack("boots3",1,h3)
			
			h4:take_item()
			inv:set_stack("boots4",1,h4)
		end
end
end,
})

















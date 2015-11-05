local axe_formspec = 
		"label[1.5,0;How To Craft An Axe]"..
		
		"label[0,1;You need only to find the right materials and]"..
		"label[0,1.5;then find a forge. You will need sticks and the]"..
		"label[0,2;materials you want to make it out of.]"..
		"label[0,2.5;Open the forge and place your materials in.]"..
		"label[0,3;You will have an Axe in no time.]"..
		"label[0,4;You can also enchant the axe if you have orbs]"..
		"label[0,5;and can find an Enchanting room.]"..
		
		"label[7,0;Materials You Can Use]"..
		"label[7,1;Wood]"..
		"label[7,1.5;Stone]"..
		"label[7,2;Steel]"..
		"label[7,2.5;Bronze]"..
		"label[7,3;Mese]"..
		"label[7,3.5;Diamond]"..
		"label[7,4.5;You will find these items in]"..
		"label[7,5;chests throught the dungeon.]"
local sword_formspec = 
		"label[1.5,0;How To Craft A Sword]"..
		
		"label[0,1;You need only to find the right materials and]"..
		"label[0,1.5;then find a forge. You will need sticks and]"..
		"label[0,2;the materials you want to make it out of. Open]"..
		"label[0,2.5;the forge and place your materials in. You]"..
		"label[0,3;will have a Sword in no time.]"..
		"label[0,4;You can also enchant the sword if you have]"..
		"label[0,4.5;orbs and can find an Enchanting room.]"..
		
		"label[7,0;Materials You Can Use]"..
		"label[7,1;Wood]"..
		"label[7,1.5;Stone]"..
		"label[7,2;Steel]"..
		"label[7,2.5;Bronze]"..
		"label[7,3;Mese]"..
		"label[7,3.5;Diamond]"..
		"label[7,4.5;You will find these items in]"..
		"label[7,5;chests throught the dungeon.]"
local armor_formspec = 
		"label[1.5,0;How To Craft Armor]"..
		
		"label[0,1;You need only to find the right materials and]"..
		"label[0,1.5;then find a forge. You will need the]"..
		"label[0,2;materials you want to make it out of.]"..
		"label[0,2.5;Open the forge and place your materials in.]"..
		
		"label[7,0;Materials You Can Use]"..
		"label[7,1;Wood]"..
		"label[7,1.5;Stone]"..
		"label[7,2;Steel]"..
		"label[7,2.5;Bronze]"..
		"label[7,3;Mese]"..
		"label[7,3.5;Diamond]"..
		"label[7,4.5;You will find these items in]"..
		"label[7,5;chests throught the dungeon.]"
local enchant_formspec = 
		"label[1.5,0;How To Enchant Tools]"..
		
		"label[0,1;Swords and Axes can be enchanted. You need]"..
		"label[0,1.5;energy orbs to enchant. You need to do it]"..
		"label[0,2;in a certain order. Orange is first, then]"..
		"label[0,2.5;green, blue and finally red. It requires ]"..
		"label[0,3;4 orbs to enchant. Once you have the orbs]"..
		"label[0,4;you will need to find an Enchanting room.]"..
		"label[0,5;Place your tool and the orbs in and you]"..
		"label[0,5.5;will get your Enchanted Tool]"..
		
		"label[7,0;]"..
		"label[7,1;Enchanted tools have more power.]"..
		"label[7,1.5;They last longer.]"..
		"label[7,2;They look awesome.]"..
		"label[7,2.5;]"..
		"label[7,3;]"..
		"label[7,3.5;]"..
		"label[7,4.5;Orbs can be found by killing monster.]"..
		"label[7,5;.]"
local book = {
	{"Axe Forge", "axe_forge",axe_formspec},
	{"Sword Forge", "sword_forge",sword_formspec},
	{"Armor Forge", "armor_forge",armor_formspec},
	{"Enchanting Table", "enchanting_table",enchant_formspec},
	}
for i in ipairs (book) do
	local des = book[i][1]
	local nam = book[i][2]
	local form = book[i][3]



minetest.register_node("ddecor:"..nam.."book", {
	description = des.." Book",
	drawtype = "nodebox",
	tiles = {
			"ddecor_book_top.png",
			"ddecor_book_bottom.png",
			"ddecor_book_top.png^[transformR270",
			"ddecor_book_top.png^[transformR90",
			"ddecor_book_bottom.png^[transformR270",
			"ddecor_book_bottom.png^[transformR90",
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {creative_breakable=1},
	is_ground_content = false,
	walkable = false,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, -0.4375, 0.3125},
			{-0.25, -0.3125, -0.3125, 0.25, -0.25, 0.3125},
			{-0.25, -0.4375, -0.25, 0.1875, -0.3125, 0.25},
			{-0.25, -0.4375, -0.3125, -0.1875, -0.3125, 0.3125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.3125, 0.25, -0.25, 0.3125},
			--{-0.25, -0.3125, -0.3125, 0.25, -0.25, 0.3125},
			--{-0.25, -0.4375, -0.25, 0.1875, -0.3125, 0.25},
			--{-0.25, -0.4375, -0.3125, -0.1875, -0.3125, 0.3125},
		}
	},
	after_place_node = function(pos, placer)
	local meta = minetest.env:get_meta(pos);
			meta:set_string("infotext",  des.." Guide");
end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "size[12,7;]"..
		"background[-1,-1;14,9;ddecor_book_formspec_bg.png]"..form)
	end,
})
end






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

})
end

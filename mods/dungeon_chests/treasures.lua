
-- Register some basic treasures from default

treasurer.register_treasure("default:gold_ingot",0.01,7,{1,10},nil,"crafting_component")
treasurer.register_treasure("default:bronze_ingot",0.02,5,{1,16},nil,"crafting_component")
treasurer.register_treasure("default:copper_ingot",0.06,3,{1,17},nil,"crafting_component")
treasurer.register_treasure("default:iron_lump",0.09,4,{1,20},nil,"crafting_component")
treasurer.register_treasure("default:stick",0.09,4,{1,20},nil,"crafting_component")


treasurer.register_treasure("default:coal_lump",0.2,2,{3,10},nil,{ "fuel" })

treasurer.register_treasure("default:obsidian_shard",0.05,5,{3,20},nil,"crafting_component")
treasurer.register_treasure("default:obsidian_shard",0.0005,5,{21,90},nil,"crafting_component")
treasurer.register_treasure("default:mese_crystal",0.008,9,{1,5},nil,"crafting_component")
treasurer.register_treasure("default:mese_crystal_fragment",0.01,3,{1,9},nil,"crafting_component")


treasurer.register_treasure("default:book",0.1,4,{1,2},nil,"crafting_component")
treasurer.register_treasure("default:apple",0.7,0.5,{1,7},nil,"food")

treasurer.register_treasure("default:sword_wood",0.001,2,nil,nil,"melee_weapon")
treasurer.register_treasure("default:sword_stone",0.016,3,nil,nil,"melee_weapon")
treasurer.register_treasure("default:sword_steel",0.02,5,nil,nil,"melee_weapon")
treasurer.register_treasure("default:sword_bronze",0.015,6,nil,nil,"melee_weapon")
treasurer.register_treasure("default:sword_mese",0.007,8,nil,nil,"melee_weapon")
treasurer.register_treasure("default:sword_diamond",0.0035,9,nil,nil,"melee_weapon")

treasurer.register_treasure("default:axe_wood",0.02,2,nil,nil,"minetool")
treasurer.register_treasure("default:axe_stone",0.045,3,nil,nil,"minetool")
treasurer.register_treasure("default:axe_steel",0.05,5,nil,nil,"minetool")
treasurer.register_treasure("default:axe_bronze",0.005,6,nil,nil,"minetool")
treasurer.register_treasure("default:axe_mese",0.0002,8,nil,nil,"minetool")
treasurer.register_treasure("default:axe_diamond",0.000125,9,nil,nil,"minetool")

treasurer.register_treasure("default:torch",0.2,2,{1,5},nil,"light")

treasurer.register_treasure("farming:bread",0.1,2,{1,2},nil,"raw_food")

treasurer.register_treasure("tnt:tnt",0.05,10,nil,nil,"minetool")
treasurer.register_treasure("tnt:gunpowder",0.123,3,{1,10},nil,"crafting_component")

treasurer.register_treasure("mobs:rat",1,0.6,{1,2},nil,"raw_food")
treasurer.register_treasure("mobs:rat_cooked",0.1,1,{1,2},nil,"food")

--Magic Orbs
treasurer.register_treasure("dungeon_magic:orb_orange",0.2,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:orb_green",0.8,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:orb_blue",0.02,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:orb_red",0.08,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:crystal_orange",0.1,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:crystal_green",0.8,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:crystal_blue",0.02,1,{1,2},nil,"crafting_component")
treasurer.register_treasure("dungeon_magic:crystal_red",0.08,1,{1,2},nil,"crafting_component")

treasurer.register_treasure("dungeon_magic:gold_coin",0.8,10,{1,10},nil,"crafting_component")

if  minetest.get_modpath("throwing") then
    treasurer.register_treasure("throwing:spear_stone", 0.03, 5, nil, nil, {"melee_weapon", "ranged_weapon"})
    treasurer.register_treasure("throwing:spear_steel", 0.02, 7, nil, nil, {"melee_weapon", "ranged_weapon"})
    treasurer.register_treasure("throwing:spear_diamond", 0.004, 10, nil, nil, {"melee_weapon", "ranged_weapon"})
    treasurer.register_treasure("throwing:spear_obsidian", 0.002, 10, nil, nil, {"melee_weapon", "ranged_weapon"})
end

if  minetest.get_modpath("3d_armor") then
    treasurer.register_treasure("3d_armor:helmet_wood",        0.03, 3, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_wood",    0.03, 3, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_wood",      0.03, 3, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_wood",         0.03, 3, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_cactus",      0.025, 4, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_cactus",  0.025, 4, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_cactus",    0.025, 4, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_cactus",       0.025, 4, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_steel",       0.02, 6, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_steel",   0.02, 6, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_steel",     0.02, 6, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_steel",        0.02, 6, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_bronze",      0.015, 7, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_bronze",  0.015, 7, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_bronze",    0.015, 7, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_bronze",       0.015, 7, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_diamond",     0.006, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_diamond", 0.006, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_diamond",   0.006, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_diamond",      0.006, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_gold",        0.006, 8, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_gold",    0.006, 8, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_gold",      0.006, 8, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_gold",         0.002, 10, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_mithril",     0.002, 10, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_mithril", 0.002, 10, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_mithril",   0.002, 10, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_mithril",      0.002, 10, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:helmet_crystal",     0.002, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:chestplate_crystal", 0.002, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:leggings_crystal",   0.002, 9, nil, nil, {"armor"})
    treasurer.register_treasure("3d_armor:boots_crystal",      0.002, 9, nil, nil, {"armor"})
end

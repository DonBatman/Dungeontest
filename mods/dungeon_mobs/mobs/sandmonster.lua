
-- Sand Monster by PilzAdam

mobs:register_mob("mobs:sand_monster", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	damage = 1,
	hp_min = 4,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.b3d",
	textures = {
		{"mobs_sand_monster.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_sandmonster",
	},
	walk_velocity = 1.5,
	run_velocity = 4,
	view_range = 15,
	jump = true,
	floats = 0,
	drops = {
		{name = "default:desert_sand",
		chance = 1, min = 3, max = 5},
		{name = "dungeon_magic:blood_drop",
		chance = 5, min = 1, max = 1},
	},
	water_damage = 3,
	lava_damage = 4,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 39,
		walk_start = 41,
		walk_end = 72,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
})

mobs:register_spawn("mobs:sand_monster", {"default:desert_sand"}, 20, 0, 7000, 1, 31000)

mobs:register_egg("mobs:sand_monster", "Sand Monster", "default_desert_sand.png", 1)

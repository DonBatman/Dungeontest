local xom_effects = {
	[0]={
		status = { name = "blind", duration = 4 },
		message = "You gaze upon Xom's eyes and get blinded by its insanity"
	},
	{
		spell = "scrolls:speed",
		message = "Xom finds you amusing",
	},
	{
		spell = "scrolls:levitation",
		message = "Xom finds you amusing",
	},
	{
		spell = "scrolls:regeneration",
		message = "Xom finds you amusing",
	},
	{
		spell = "scrolls:poisoning",
		message = "Xom is bored",
	},
	{
		spell = "scrolls:random",
		message = "Xom is bored",
	},
}


function random_effect(player)
	local name = player:get_player_name()

	local mana_cost = math.random(50,100)

	if mana.subtract(player:get_player_name(), mana_cost) then

		local effect = xom_effects[math.random(#xom_effects)]
		minetest.chat_send_player(name, effect.message)

		if effect.status then
			statuses.apply_player_status(player, effect.status)

		elseif effect.spell then
			scrolls.self_cast(effect.spell, player, {})
		end

		minetest.sound_play("altars_xom_laughter", {
			to_player = name,
			gain = 2.0,
		})

	end
end


altars.register_god("alaz", {
	title = "Alaz, god of fire",
	texture = "altars_alaz.png",
	particle = "altars_alaz_particle.png",
	on_pray = function(pos, node, player, itemstack)

		random_effect(player)

	end
})

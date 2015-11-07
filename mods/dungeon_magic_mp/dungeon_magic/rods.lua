    minetest.register_tool("dungeon_magic:rod_of_blinking", {
       description = "Rod of Blinking",
       range = 20.0,
       tool_capabilities = {},
       wield_image = "dungeon_rod_3.png",
       inventory_image = "dungeon_rod_3.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 60 and scrolls.cast("scrolls:teleportation", user, pointed_thing) then
            mana.subtract(name, 60)
          end
          return itemstack
       end,
    })

    minetest.register_tool("dungeon_magic:rod_of_irrigation", {
       description = "Rod of Irrigation",
       range = 20.0,
       tool_capabilities = {},
       wield_image = "dungeon_rod_4.png",
       inventory_image = "dungeon_rod_4.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 60 and scrolls.cast("scrolls:irrigation", user, pointed_thing) then
            mana.subtract(name, 60)
          end
          return itemstack
       end,
    })

    minetest.register_tool("dungeon_magic:rod_of_immolation", {
       description = "Rod of Immolation",
       range = 10.0,
       tool_capabilities = {},
       wield_image = "dungeon_rod_8.png",
       inventory_image = "dungeon_rod_8.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 100 and scrolls.cast("scrolls:immolation", user, pointed_thing) then
            mana.subtract(name, 100 )
          end
          return itemstack
       end,
    })


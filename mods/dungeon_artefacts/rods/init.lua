    minetest.register_tool("rods:rod_of_blinking", {
       description = "Rod of blinking",
       range = 20.0,
       tool_capabilities = {},
       wield_image = "rod_3.png",
       inventory_image = "rod_3.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 60 and scrolls.cast("scrolls:teleportation", user, pointed_thing) then
            mana.subtract(name, 60)
          end
          return itemstack
       end,
    })

    minetest.register_tool("rods:rod_of_irrigation", {
       description = "Rod of irrigation",
       range = 20.0,
       tool_capabilities = {},
       wield_image = "rod_4.png",
       inventory_image = "rod_4.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 60 and scrolls.cast("scrolls:irrigation", user, pointed_thing) then
            mana.subtract(name, 60)
          end
          return itemstack
       end,
    })

    minetest.register_tool("rods:rod_of_immolation", {
       description = "Rod of immolation",
       range = 10.0,
       tool_capabilities = {},
       wield_image = "rod_8.png",
       inventory_image = "rod_8.png",
       on_use = function(itemstack, user, pointed_thing)
          
          local name = user:get_player_name()
          if mana.get(name) > 100 and scrolls.cast("scrolls:immolation", user, pointed_thing) then
            mana.subtract(name, 100 )
          end
          return itemstack
       end,
    })

 minetest.register_tool("crystal_light:pick_crystal", {
  description = "Pico de cristal",
  inventory_image = "crystal_pico.png",
  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level=3,
    groupcaps={
      cracky = {times={[1]=1.5, [2]=1.0, [3]=0.25}, uses=5.0, maxlevel=3},
    },
    damage_groups = {fleshy=5},
  },
})
 
 minetest.register_tool("crystal_light:shovel_crystal", {
  description = "Pala de cristal",
  inventory_image = "crystal_pala.png",
  wield_image = "crystal_pala.png^[transformR90",
  tool_capabilities = {
    full_punch_interval = 0.9,
    max_drop_level=1,
    groupcaps={
      crumbly = {times={[1]=1.0, [2]=0.50, [3]=0.15}, uses=5.0, maxlevel=3},
    },
    damage_groups = {fleshy=4},
  },
})

minetest.register_tool("crystal_light:sword_crystal", {
  description = "Espada de cristal",
  inventory_image = "crystal_espada.png",
  tool_capabilities = {
    full_punch_interval = 0.5,
    max_drop_level=1,
    groupcaps={
      snappy={times={[1]=1.45, [2]=0.75, [3]=0.25}, uses=20, maxlevel=3},
    },
    damage_groups = {fleshy=8},
  }
})

minetest.register_tool("crystal_light:axe_crystal", {
  description = "Hacha de cristal",
  inventory_image = "crystal_hacha.png",
  tool_capabilities = {
    full_punch_interval = 0.8,
    max_drop_level=1,
    groupcaps={
      choppy={times={[1]=1.90, [2]=0.75, [3]=0.40}, uses=5.0, maxlevel=2},
    },
    damage_groups = {fleshy=7},
  },
})

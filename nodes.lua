--Registro Nodos
minetest.register_node("crystal_light:crystal_block", {
	description = "Crystal Block",
        tiles = {"crystal_block.png"},
	paramtype = "light",
	groups = {cracky = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("crystal_light:crystal_block_refined", {
	description = "Bloque de cristal refinado",
        tiles = {"crystal_refined.png"},
	paramtype = "light",
	groups = {cracky = 1},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_node("crystal_light:crystal_ore", {
	description = "Crystal Ore",
	tiles = {"default_stone.png^crystal_ore.png"},
	groups = {cracky=2,stone=1,crystal_core=1},
	paramtype = "light",
	drop = 'crystal_light:crystal_core',
	sounds = default.node_sound_stone_defaults(),
	light_source = (default.LIGHT_MAX/2.0),
})

minetest.register_node("crystal_light:crystal", {
	description = "Cristal",
        tiles = {"crystal_crystal.png"},
        drawtype = "plantlike",
	paramtype = "light",
        walkable = false,
        stack_max = 32,
	groups = {cracky = 1,attached_node = 1,},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX/6.0,
        drop = 'crystal_light:crystal_fragmento', 
        selection_box = {
            type = "fixed",
            fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
        },
})
----------------
--Cores
minetest.register_node("crystal_light:crystal_block_core_1", {
	description = "Generador de cristal Lvl 1",
        tiles = {"crystal_block_core_1.png"},
	paramtype = "light",
	groups = {cracky = 1,crystal_core=2},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_node("crystal_light:crystal_block_core_2", {
	description = "Generador de cristal Lvl 2",
        tiles = {"crystal_block_core_2.png"},
	paramtype = "light",
	groups = {cracky = 1,crystal_core=3},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_node("crystal_light:crystal_block_core_3", {
	description = "Generador de cristal Lvl 3",
        tiles = {"crystal_block_core_3.png"},
	paramtype = "light",
	groups = {cracky = 2,crystal_core=4},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})
minetest.register_node("crystal_light:crystal_block_core_4", {
	description = "Generador de cristal Lvl 4",
        tiles = {"crystal_block_core_4.png"},
	paramtype = "light",
	groups = {cracky = 3,crystal_core=5},
	sounds = default.node_sound_glass_defaults(),
	light_source = default.LIGHT_MAX,
})

--Water Crystal

minetest.register_node("crystal_light:crystal_water_source", {
	description = "Crystal water Source",
	--inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "crystal_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "crystal_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "crystal_light:crystal_water_flowing",
	liquid_alternative_source = "crystal_light:crystal_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=120, r=30, g=60, b=90},
	groups = {water=3, liquid=3, puts_out_fire=1,liquid_crystal=1,not_in_creative_inventory=1},
        light_source = (default.LIGHT_MAX/2.0),
})


minetest.register_node("crystal_light:crystal_water_flowing", {
	description = "Crystal flowing Water",
	--inventory_image = minetest.inventorycube("default_water.png"),
	drawtype = "flowingliquid",
	--tiles = {"default_water.png"},
	special_tiles = {
		{
			name = "crystal_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "crystal_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "crystal_light:crystal_water_flowing",
	liquid_alternative_source = "crystal_light:crystal_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a=120, r=30, g=60, b=90},
	groups = {water=3, liquid=3, puts_out_fire=1, not_in_creative_inventory=1,liquid_crystal=1},
        light_source = (default.LIGHT_MAX/2.0),
})

--------------------------------------
minetest.register_node("crystal_light:crystal_light", {
	description = "Cristal Iluminador",
	paramtype = "light",
	groups = {cracky = 1,attached_node = 1,},
	sounds = default.node_sound_glass_defaults(),
        walkable=false,
	light_source = default.LIGHT_MAX-3,
        tiles = {"crystal_torch.png"},
        drawtype = "mesh",
	mesh="torch.x",
        selection_box = {
            type = "fixed",
            fixed = {-0.1875, -0.5, -0.1875, 0.1875, 0.375, 0.1875},
        },

}) 

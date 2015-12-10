--Registro Craft

minetest.register_craft({
	output = "crystal_light:crystal_block",
	recipe = {
		{"crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento"},
		{"crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento"},
		{"crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento"}
	}
})

minetest.register_craft({
	output = "crystal_light:crystal_stick 2",
	recipe = {
		{"crystal_light:crystal_fragmento", "",""},
		{"", "crystal_light:crystal_fragmento", ""},
		{"", "", "crystal_light:crystal_fragmento"}
	}
})
minetest.register_craft({
	output = "crystal_light:crystal 3",
	recipe = {
		{"", "",""},
		{"", "crystal_light:crystal_fragmento", ""},
		{"crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento", "crystal_light:crystal_fragmento"}
	}
})

minetest.register_craft({
	type = "cooking",
	output = "crystal_light:crystal_block_refined",
	recipe = "crystal_light:crystal_block",
        cooktime = 30
})
minetest.register_craft({
	type = "cooking",
	output = "crystal_light:crystal_dust_core",
	recipe = "crystal_light:crystal_core",
        cooktime = 60
})
-----------------

minetest.register_craft({
	output = "crystal_light:crystal_block_core_1",
	recipe = {
		{"crystal_light:crystal_block_refined", "crystal_light:crystal_block_refined","crystal_light:crystal_block_refined"},
		{"crystal_light:crystal_block_refined", "crystal_light:crystal_core","crystal_light:crystal_block_refined"},
		{"crystal_light:crystal_block_refined", "crystal_light:crystal_block_refined","crystal_light:crystal_block_refined"}
	}
})

minetest.register_craft({
	output = "crystal_light:crystal_block_core_2",
	recipe = {
		{"crystal_light:crystal_block_core_1","crystal_light:crystal_block_core_1","crystal_light:crystal_block_core_1"},
		{"crystal_light:crystal_block_core_1","crystal_light:crystal_core","crystal_light:crystal_block_core_1"},
        	{"crystal_light:crystal_block_core_1","crystal_light:crystal_block_core_1","crystal_light:crystal_block_core_1"}	
	}
})

minetest.register_craft({
	output = "crystal_light:crystal_block_core_3",
	recipe = {
		{"crystal_light:crystal_block_core_2","crystal_light:crystal_block_core_2","crystal_light:crystal_block_core_2"},
		{"crystal_light:crystal_block_core_2","default:diamondblock","crystal_light:crystal_block_core_2"},
        	{"crystal_light:crystal_block_core_2","crystal_light:crystal_block_core_2","crystal_light:crystal_block_core_2"}	
	}
})

minetest.register_craft({
	output = "crystal_light:crystal_block_core_4",
	recipe = {
		{"default:diamondblock","default:diamondblock","default:diamondblock"},
                {"default:diamondblock","crystal_light:crystal_block_core_3","default:diamondblock"},	
                {"default:diamondblock","default:diamondblock","default:diamondblock"}
	}
})


minetest.register_craft({
	output = "crystal_light:crystal_lump 4",
	recipe = {
		{"","crystal_light:crystal_fragmento",""},
		{"crystal_light:crystal_fragmento","crystal_light:crystal_block_refined","crystal_light:crystal_fragmento"},
		{"","crystal_light:crystal_fragmento",""}
	}
})

minetest.register_craft({
	output = "crystal_light:crystal_light 3",
	recipe = {
		{"","crystal_light:crystal_light",""},
		{"crystal_light:crystal_light","crystal_light:crystal_fragmento","crystal_light:crystal_light"},
		{"","crystal_light:crystal_light",""}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "crystal_light:crystal_lump",
	burntime = 60,
})

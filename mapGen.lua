--Map Gen Registro Ore
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "crystal_light:crystal_ore",
	wherein        = "default:stone",
	clust_scarcity = 19 * 19 * 19,
	clust_num_ores = 2,
	clust_size     = 2,
	y_min          = -255,
	y_max          = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "crystal_light:crystal_ore",
	wherein        = "default:stone",
	clust_scarcity = 8 * 8 * 8,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = -600,
	y_max          = -400,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "crystal_light:crystal_ore",
	wherein        = "default:stone",
	clust_scarcity = 4 * 4 * 4,
	clust_num_ores = 6,
	clust_size     = 4,
	y_min          = -1000,
	y_max          = -800,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "crystal_light:crystal_block",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 1,
	clust_size     = 1,
	y_min          = -2500,
	y_max          = -1200,
})


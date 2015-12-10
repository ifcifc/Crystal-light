dofile(minetest.get_modpath("crystal_light").."/config.lua") 

--Registro Item
minetest.register_craftitem("crystal_light:crystal_core", {
    description = "Nucleo de cristal",
    inventory_image = "crystal_core.png",
    stack_max=2,
    on_use = function(itemstack, user, pointed_thing) 
        if pointed_thing.type == "node" then
            local ps = vector.add(pointed_thing.above,{x=0,y=-1,z=0})
            local Name = minetest.get_node(ps).name
            if minetest.get_node_group(Name, "stone")>0 then
                minetest.set_node(pointed_thing.above ,{name="crystal_light:crystal"})
                if math.random(CC_RndLimit) == CC_Prbl then
                   itemstack:replace('crystal_light:crystal_fragmento')
                   itemstack:set_count(math.random(CC_Count))
                   return itemstack 
                end
            end
        end
    end,
})
minetest.register_craftitem("crystal_light:crystal_fragmento", {
    description = "Fragmento de cristal",
    inventory_image = "crystal_fragmento.png",
    stack_max=16
})
minetest.register_craftitem("crystal_light:crystal_stick", {
    description = "Vara de crystal",
    inventory_image = "crystal_stick.png",
    stack_max=8
})
minetest.register_craftitem("crystal_light:crystal_dust_core", {
    description = "Nucleo de cristal en polvo",
    inventory_image = "crystal_dust_core.png",
    stack_max=4,        
    on_use = function(itemstack, user, pointed_thing) 
        if pointed_thing.type == "node" then
            local Name = minetest.get_node(pointed_thing.above).name
            if Name == "default:water_source" then
                minetest.set_node(pointed_thing.above,{name="crystal_light:crystal_water_source"})
                local mt = minetest.get_meta(pointed_thing.above)
                mt:set_int("n",0)
                minetest.log("error","ERR:" .. CW_LifeMax)
                mt:set_int("t",CW_LifeMax)
                itemstack:set_count(itemstack:get_count()-1)
                return itemstack
            end
        end
    end,
})
----------------------------------------------------------------------
minetest.register_craftitem("crystal_light:crystal_lump", {
    description = "Cristal de luz condensada",
    inventory_image = "crystal_light.png",
    stack_max=99
})

--minetest.register_craftitem("crystal_light:tool", {
--    description = "Test",
--    inventory_image = "tool.png",
--    stack_max=1,
--    on_use = function(itemstack, user, pointed_thing) 
--        if pointed_thing.type == "node" then			
--        end
--    end,
--})



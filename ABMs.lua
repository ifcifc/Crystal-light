--Registro ABMs
local function Crystal(pos, node, dis)
    local Mn = {x = pos.x - dis, y = pos.y - dis, z = pos.z - dis}
    local Mx = {x = pos.x + dis, y = pos.y + dis, z = pos.z + dis}
    local Air =minetest.find_nodes_in_area(Mn,Mx, "group:stone")
    if #Air == 0 then
            return
    else
        local i=0
        for i=1,#Air,1 do 
            local Block=Air[math.random(#Air)]
            local Ps= vector.add(Block,{x=0,y=1,z=0})
            if(minetest.get_node(Ps).name == "air") then
                    minetest.set_node(Ps,{name = "crystal_light:crystal"})
                    break
            end
        end

    end
end
minetest.register_abm({
    nodenames = {"group:crystal_core"},
    neighbors = {"air","group:water"},
    interval = 10.0,
    chance = 5,
    action = function(pos, node, active_object_count, active_object_count_wider)
            local dis=minetest.get_node_group(node.name, "crystal_core")
            if dis>2 then
                dis=dis*2              
            end
            Crystal(pos, node, dis)            
    end,
})

minetest.register_abm({
    nodenames = {"crystal_light:crystal_water_source"},
    neighbors = {"default:water_source"},
    interval = 10.0,
    chance = 5,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local meta=minetest.get_meta(pos)
        local n =meta:get_int("n")
        local t =meta:get_int("t")
        if n<16 then
            local water =minetest.find_nodes_in_area(vector.add(pos,{x=-1,y=-1,z=-1}),vector.add(pos,{x=1,y=1,z=1}), "default:water_source")
            for i=1,math.random(#water),1 do
                local ps=math.random(#water)
                if water[ps]~=nil then
                    minetest.set_node(water[ps],{name="crystal_light:crystal_water_source"})
                    minetest.get_meta(water[ps]):set_int("n",n+1)
                    minetest.get_meta(water[ps]):set_int("t",t-(n+1)*2)
                    water[ps]=nil
                end
            end
        end
    end,
})

minetest.register_abm({
    nodenames = {"crystal_light:crystal_water_source"},
    interval = 10.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
        local meta=minetest.get_meta(pos)
        local t =meta:get_int("t")
        t=t-1
        if t<=0 then
            minetest.set_node(pos,{name="default:water_source"})
        else
            meta:set_int("t",t)
        end
    end,
})


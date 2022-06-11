function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end 



coalition_side = {
   neutral = 0,
   red = 1,
   blue = 2
}

local navPoints = mist.DBs.navPoints

local id_table = world.getMarkPanels( )

 size = getTableSize(id_table)

for i, u in pairs(navPoints) do

	for k, v in pairs(u) do
		size = getTableSize(id_table)
		trigger.action.textToAll(
		coalition_side[i],
		k + size,
		v["point"],
		{0,0,0, 1},
		{0,0,0,0},
		11,
		true,
		"◊ "..v["callsignStr"]
		)
		counter = size + k
	end
	size = counter
end



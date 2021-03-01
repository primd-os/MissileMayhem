setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:-20}
function rx.playerdb:api/get_self
data modify block ~ ~ ~ name set from storage rx:io playerdb.player.data.primd.mm.custom
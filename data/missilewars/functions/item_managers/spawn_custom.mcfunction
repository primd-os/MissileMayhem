setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:-20}
function #rx.playerdb:api/v2/get/self
data modify block ~ ~ ~ name set from storage rx.playerdb:io player.data.primd.mm.custom
function rx.playerdb:api/get_self
data modify storage missilewars:temp offhand set value [{id:"minecraft:writable_book",Slot:0b,Count:1b,tag:{display:{Name:'{"text":"Custom Missile"}'}}}]
data modify storage missilewars:temp offhand[{id:"minecraft:writable_book",Slot:0b}].tag.pages insert 0 from storage rx:io playerdb.player.data.primd.mm.custom
setblock 0 0 0 yellow_shulker_box
data modify block 0 0 0 Items set from storage missilewars:temp offhand
loot give @s mine 0 0 0 air{drop_contents: 1b}
setblock 0 0 0 air
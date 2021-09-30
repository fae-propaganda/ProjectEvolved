
tag @s add ev.this
function rx.playerdb:api/get_self


execute store result score #success ev.temp run origin has @s origins:origin evolved:cavern_recluse
execute if score #success ev.temp matches 1 run function evolved:origins/cavern_recluse/main

tag @s remove ev.this
function rx.playerdb:api/save_self





#execute unless score #success evolved.temp matches 1 run say player updated!

# access data w/
# data modify storage rx:io playerdb.player.data.blair.evolved set value {eggs: 3b}

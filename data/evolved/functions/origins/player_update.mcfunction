#Set player ID if it doesn't exist
execute unless score @s ev.id = @s ev.id run function evolved:origins/set_id

#Get player id and data
tag @s add ev.this
scoreboard players operation $search_id ev.id = @s ev.id
function rx.playerdb:api/get_self


execute store result score #success ev.temp run origin has @s origins:origin evolved:cavern_recluse
execute if score #success ev.temp matches 1 run function evolved:origins/cavern_recluse/main

#Save player id and data
tag @s remove ev.this
function rx.playerdb:api/save_self





#execute unless score #success evolved.temp matches 1 run say player updated!

# access data w/
# data modify storage rx:io playerdb.player.data.blair.evolved set value {eggs: 3b}

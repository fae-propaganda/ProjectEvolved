# Get
#say propel update

#Detect Facing wrong direction
function evolved:origins/cavern_recluse/grapple/propel/correct_direction

#Detect Stuck
data modify storage rx:io playerdb.player.data.blair.evolved.current_position set from entity @s Pos
execute store success score #success ev.temp run data modify storage rx:io playerdb.player.data.blair.evolved.previous_position set from storage rx:io playerdb.player.data.blair.evolved.current_position
execute if score #success ev.temp matches 0 if score @s ev.delay matches ..0 run function evolved:origins/cavern_recluse/grapple/propel/stop

#Detect Cancel
execute if entity @s[tag=ev.cavern_recluse.grapple.cancel] run function evolved:origins/cavern_recluse/grapple/propel/stop

scoreboard players remove @s ev.delay 1

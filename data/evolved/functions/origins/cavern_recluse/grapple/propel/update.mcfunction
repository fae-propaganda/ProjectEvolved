# Get
#say propel update

#Detect Facing wrong direction
data modify storage rx:io playerdb.player.data.blair.evolved.current_rotation set from entity @s Rotation
summon minecraft:marker ~ ~ ~ {Tags:["new"]}
execute as @e[type=marker,tag=new,sort=nearest,limit=1] at @s facing entity @e[type=marker,tag=anchor,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
data modify storage rx:io playerdb.player.data.blair.evolved.target_rotation set from entity @e[type=marker,tag=new,sort=nearest,limit=1]
execute store success score #success ev.temp run data modify storage rx:io playerdb.player.data.blair.evolved.target_rotation set from storage rx:io playerdb.player.data.blair.evolved.current_rotation
execute if score #success ev.temp matches 0 rotated as @e[type=marker,tag=new,sort=nearest,limit=1] run tp ~ ~ ~
execute if score #success ev.temp matches 1 run say failed
execute if score #success ev.temp matches 0 run say matched
kill @e[type=marker,tag=new,sort=nearest,limit=1]

#Detect Stuck
data modify storage rx:io playerdb.player.data.blair.evolved.current_position set from entity @s Pos
execute store success score #success ev.temp run data modify storage rx:io playerdb.player.data.blair.evolved.previous_position set from storage rx:io playerdb.player.data.blair.evolved.current_position
execute if score #success ev.temp matches 0 if score @s ev.delay matches ..0 run function evolved:origins/cavern_recluse/grapple/propel/stop

#Detect Cancel
execute if entity @s[tag=ev.cavern_recluse.grapple.cancel] run function evolved:origins/cavern_recluse/grapple/propel/stop

scoreboard players remove @s ev.delay 1

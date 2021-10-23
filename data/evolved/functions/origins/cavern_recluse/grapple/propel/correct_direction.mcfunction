#Get Player's Current Rotation
data modify storage rx:io playerdb.player.data.blair.evolved.current_rotation set from entity @s Rotation

#Get Correct Rotation
summon minecraft:marker ~ ~ ~ {Tags:["rotation_check"]}
execute as @e[type=marker,tag=new,sort=nearest,limit=1] at @s facing entity @e[type=marker,tag=anchor,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~


data modify storage rx:io playerdb.player.data.blair.evolved.target_rotation set from entity @e[type=marker,tag=new,sort=nearest,limit=1]
execute store success score #success ev.temp run data modify storage rx:io playerdb.player.data.blair.evolved.target_rotation set from storage rx:io playerdb.player.data.blair.evolved.current_rotation
execute if score #success ev.temp matches 0 rotated as @e[type=marker,tag=new,sort=nearest,limit=1] run tp ~ ~ ~
execute if score #success ev.temp matches 1 run say failed
execute if score #success ev.temp matches 0 run say matched
kill @e[type=marker,tag=rotation_check,sort=nearest,limit=1]
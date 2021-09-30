
# TESTING FUNCTIONS
#execute at @e[type=marker] run particle flame
#execute as @a at @s if entity @e[type=minecraft:marker,tag=anchor,distance=..1] run function evolved:powers/cavern_recluse/grapple/stop_grapple


# ORIGIN UPDATES
execute as @a at @s run function evolved:origins/player_update



schedule function evolved:tick 1t
